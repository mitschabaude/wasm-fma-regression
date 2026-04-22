// Plain JS harness that runs the bench wasm under d8 (or any engine).
// Reads build.wasm (produced by `npm run bench`), instantiates with an
// imported memory, seeds it, warms up, and times the benchmark.
//
// Run with:
//   ~/.jsvu/bin/v8-12.9.202 harness.js
//   ~/.jsvu/bin/v8-13.6.233 harness.js
// Or via `npm run bench-d8-old` / `npm run bench-d8-new`.

// K must match repro.ts: 2 * M * P where M=5, P=5.
const K = 50;
const N = 2_000_000;

// d8 provides `read(path, 'binary')` to synchronously read a file as Uint8Array.
// Node is not expected here; the Node bench is `npm run bench` which uses repro.ts.
const wasmBytes = read("build.wasm", "binary");

const memory = new WebAssembly.Memory({ initial: 1, maximum: 1 });
const module = new WebAssembly.Module(wasmBytes);
// wasmati names the imported memory "" / "m0"
const instance = new WebAssembly.Instance(module, { "": { m0: memory } });

// seed memory with non-constant-looking values
const mem = new Float64Array(memory.buffer);
for (let i = 0; i < 20; i++) mem[i] = 1 + i * 1e-9;

// warmup
instance.exports.bench(100_000);

const t0 = performance.now();
instance.exports.bench(N);
const t1 = performance.now();
const time = (t1 - t0) / 1000;
const fmas = N * K;
print(
  "FMA ops/s: " +
    (fmas / time / 1e6).toFixed(1) +
    "M   (" +
    fmas +
    " FMAs in " +
    time.toFixed(3) +
    "s, " +
    ((time / fmas) * 1e9).toFixed(2) +
    "ns/FMA)"
);
