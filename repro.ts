/**
 * Minimal repro for a V8 wasm relaxed-SIMD FMA performance regression.
 *
 * Observed on x86-64 Linux:
 *   Node 23.11.1 (V8 12.9.202.28)  ~11 GFMA/s   (0.09 ns/FMA)
 *   Node 24.15.0 (V8 13.6.233.17)  ~2.2 GFMA/s  (0.46 ns/FMA)
 *   → ~5x slowdown, stable across runs.
 *
 * The pattern mirrors the FMA-heavy inner loop of a 51x5 Montgomery
 * multiplication: interleaved hi/lo FMA passes with i64x2.add and f64x2.sub
 * in between, reusing scratch locals, with ~15 v128 locals live at once.
 *
 * A simple chain of `f64x2.relaxed_madd` on a single accumulator does NOT
 * reproduce the regression (actually runs faster on Node 24). The interleaved
 * pattern + register pressure is what trips it.
 *
 * Run with: `npm run bench` (requires Node 23+; uses --experimental-strip-types).
 */
import {
  br_if,
  f64x2,
  func,
  i32,
  i64x2,
  importMemory,
  local,
  type Local,
  loop,
  Module,
  type Type,
  v128,
} from "wasmati";

const M = 5;
const P = 5;
const C103 = 2 ** 103;
const C2 = 2 ** 103 + 3 * 2 ** 51;
const localsV128 = (n: number) =>
  Array<Type<v128>>(n).fill(v128) as [Type<v128>, ...Type<v128>[]];

let wasmMemory = importMemory({ min: 1, max: 1 });

// 3 * M v128 locals (Y, LH, Z) + 1 xi local, mirroring the multiply loop's
// register pressure. Inputs loaded from memory prevent constant folding;
// Z stored back at end so V8 can't eliminate the chain.
let bench = func(
  { in: [i32], locals: [v128, ...localsV128(3 * M)], out: [] },
  ([N], [xi, ...rest]) => {
    let Y = rest.slice(0, M) as Local<v128>[];
    let LH = rest.slice(M, 2 * M) as Local<v128>[];
    let Z = rest.slice(2 * M, 3 * M) as Local<v128>[];

    local.set(xi, v128.load({ offset: 0 }, 0));
    for (let j = 0; j < M; j++) {
      local.set(Y[j], v128.load({ offset: (1 + j) * 16 }, 0));
      local.set(Z[j], v128.load({ offset: (1 + M + j) * 16 }, 0));
    }

    loop({}, () => {
      for (let p = 0; p < P; p++) {
        // hi
        for (let j = 0; j < M; j++) {
          local.set(
            LH[j],
            f64x2.relaxed_madd(xi, Y[j], v128.const("f64x2", [C103, C103]))
          );
        }
        // Z[j] += LH[j] (integer add on the float bit patterns)
        for (let j = 0; j < M; j++) {
          local.set(Z[j], i64x2.add(Z[j], LH[j]));
        }
        // LH[j] = c2 - LH[j]  (the "lo sub" step)
        for (let j = 0; j < M; j++) {
          local.set(LH[j], f64x2.sub(v128.const("f64x2", [C2, C2]), LH[j]));
        }
        // lo = FMA again with the subtracted LH as the third operand
        for (let j = 0; j < M; j++) {
          local.set(LH[j], f64x2.relaxed_madd(xi, Y[j], LH[j]));
        }
        // Z[j] += LH[j]
        for (let j = 0; j < M; j++) {
          local.set(Z[j], i64x2.add(Z[j], LH[j]));
        }
      }
      local.tee(N, i32.sub(N, 1));
      br_if(0);
    });

    for (let j = 0; j < M; j++) {
      v128.store({ offset: (1 + M + j) * 16 }, 0, Z[j]);
    }
  }
);

// FMAs per outer iteration = 2 * M per pass (hi + lo) * P passes
const K = 2 * M * P;

let module = Module({ memory: wasmMemory, exports: { bench } });

// dump the wasm bytes to disk so d8 can load the same module
import { writeFileSync } from "node:fs";
writeFileSync("build.wasm", module.toBytes());

let { instance } = await module.instantiate();

// seed memory with non-constant-looking values so V8 can't fold the chain
let mem = new Float64Array(wasmMemory.value.buffer);
for (let i = 0; i < 2 * M * 2; i++) mem[i] = 1 + i * 1e-9;

// warmup
instance.exports.bench(100_000);

// bench
const N = 2_000_000;
let t0 = performance.now();
instance.exports.bench(N);
let t1 = performance.now();
let time = (t1 - t0) / 1000;
let fmas = N * K;
console.log(`node ${process.version}  v8 ${process.versions.v8}`);
console.log(
  `FMA ops/s: ${(fmas / time / 1e6).toFixed(1)}M   (${fmas} FMAs in ${time.toFixed(3)}s, ${((time / fmas) * 1e9).toFixed(2)}ns/FMA)`
);
