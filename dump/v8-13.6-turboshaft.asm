--- WebAssembly code ---
name: wasm-function[0]
index: 0
kind: wasm function
compiler: TurboFan
Body (size = 2176 = 2132 + 44 padding)
Instructions (size = 2112)
0x21b70dbf5840     0  55                   push rbp
0x21b70dbf5841     1  4889e5               REX.W movq rbp,rsp
0x21b70dbf5844     4  6a08                 push 0x8
0x21b70dbf5846     6  56                   push rsi
0x21b70dbf5847     7  4881ecc0000000       REX.W subq rsp,0xc0
0x21b70dbf584e     e  488b5617             REX.W movq rdx,[rsi+0x17]
0x21b70dbf5852    12  8b4eff               movl rcx,[rsi-0x1]
0x21b70dbf5855    15  41baffffffff         movl r10,0xffffffff
0x21b70dbf585b    1b  493bca               REX.W cmpq rcx,r10
0x21b70dbf585e    1e  7620                 jna 0x21b70dbf5880  <+0x40>
0x21b70dbf5860    20  bf01000000           movl rdi,0x1
0x21b70dbf5865    25  4989e2               REX.W movq r10,rsp
0x21b70dbf5868    28  4883ec08             REX.W subq rsp,0x8
0x21b70dbf586c    2c  4883e4f0             REX.W andq rsp,0xf0
0x21b70dbf5870    30  4c891424             REX.W movq [rsp],r10
0x21b70dbf5874    34  48b810774bc2667c0000 REX.W movq rax,0x7c66c24b7710
0x21b70dbf587e    3e  ffd0                 call rax
0x21b70dbf5880    40  410fb74c0e07         movzxwl rcx,[r14+rcx*1+0x7]
0x21b70dbf5886    46  41baffffffff         movl r10,0xffffffff
0x21b70dbf588c    4c  493bca               REX.W cmpq rcx,r10
0x21b70dbf588f    4f  761d                 jna 0x21b70dbf58ae  <+0x6e>
0x21b70dbf5891    51  bf01000000           movl rdi,0x1
0x21b70dbf5896    56  4989e2               REX.W movq r10,rsp
0x21b70dbf5899    59  4883ec08             REX.W subq rsp,0x8
0x21b70dbf589d    5d  4883e4f0             REX.W andq rsp,0xf0
0x21b70dbf58a1    61  4c891424             REX.W movq [rsp],r10
0x21b70dbf58a5    65  488b05caffffff       REX.W movq rax,[rip+0xffffffca]
0x21b70dbf58ac    6c  ffd0                 call rax
0x21b70dbf58ae    6e  81f9bf000000         cmpl rcx,0xbf
0x21b70dbf58b4    74  0f85d3060000         jnz 0x21b70dbf5f8d  <+0x74d>
0x21b70dbf58ba    7a  493b65a0             REX.W cmpq rsp,[r13-0x60]
0x21b70dbf58be    7e  0f8601070000         jna 0x21b70dbf5fc5  <+0x785>
0x21b70dbf58c4    84  c5fa6f02             vmovdqu xmm0,[rdx]
0x21b70dbf58c8    88  c5fa6f4a10           vmovdqu xmm1,[rdx+0x10]
0x21b70dbf58cd    8d  c5fa6f5260           vmovdqu xmm2,[rdx+0x60]
0x21b70dbf58d2    92  c5fa6f5a20           vmovdqu xmm3,[rdx+0x20]
0x21b70dbf58d7    97  c5fa6f6270           vmovdqu xmm4,[rdx+0x70]
0x21b70dbf58dc    9c  c5fa6f6a30           vmovdqu xmm5,[rdx+0x30]
0x21b70dbf58e1    a1  c5fa6fb280000000     vmovdqu xmm6,[rdx+0x80]
0x21b70dbf58e9    a9  c5fa6f7a40           vmovdqu xmm7,[rdx+0x40]
0x21b70dbf58ee    ae  c57a6f8290000000     vmovdqu xmm8,[rdx+0x90]
0x21b70dbf58f6    b6  c57a6f4a50           vmovdqu xmm9,[rdx+0x50]
0x21b70dbf58fb    bb  c57a6f92a0000000     vmovdqu xmm10,[rdx+0xa0]
0x21b70dbf5903    c3  c5f8117da0           vmovups [rbp-0x60],xmm7
0x21b70dbf5908    c8  e938000000           jmp 0x21b70dbf5945  <+0x105>
0x21b70dbf590d    cd  660f1f840000000000   nop
0x21b70dbf5916    d6  660f1f840000000000   nop
0x21b70dbf591f    df  660f1f840000000000   nop
0x21b70dbf5928    e8  660f1f840000000000   nop
0x21b70dbf5931    f1  660f1f840000000000   nop
0x21b70dbf593a    fa  660f1f440000         nop
0x21b70dbf5940   100  c4c17928fe           vmovapd xmm7,xmm14
0x21b70dbf5945   105  493b65a0             REX.W cmpq rsp,[r13-0x60]
0x21b70dbf5949   109  0f868f060000         jna 0x21b70dbf5fde  <+0x79e>
0x21b70dbf594f   10f  49ba0000000000006046 REX.W movq r10,0x4660000000000000
0x21b70dbf5959   119  c441f96eda           vmovq xmm11,r10
0x21b70dbf595e   11e  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5963   123  c462f1b8d8           vfmadd231pd xmm11,xmm1,xmm0
0x21b70dbf5968   128  4c8b15e2ffffff       REX.W movq r10,[rip+0xffffffe2]
0x21b70dbf596f   12f  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5974   134  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5979   139  c462e1b8e0           vfmadd231pd xmm12,xmm3,xmm0
0x21b70dbf597e   13e  4c8b15ccffffff       REX.W movq r10,[rip+0xffffffcc]
0x21b70dbf5985   145  c441f96eea           vmovq xmm13,r10
0x21b70dbf598a   14a  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf598f   14f  c462d1b8e8           vfmadd231pd xmm13,xmm5,xmm0
0x21b70dbf5994   154  4c8b15b6ffffff       REX.W movq r10,[rip+0xffffffb6]
0x21b70dbf599b   15b  c441f96ef2           vmovq xmm14,r10
0x21b70dbf59a0   160  c441096cf6           vpunpcklqdq xmm14,xmm14,xmm14
0x21b70dbf59a5   165  c462c1b8f0           vfmadd231pd xmm14,xmm7,xmm0
0x21b70dbf59aa   16a  4c8b15a0ffffff       REX.W movq r10,[rip+0xffffffa0]
0x21b70dbf59b1   171  c4c1f96efa           vmovq xmm7,r10
0x21b70dbf59b6   176  c5c16cff             vpunpcklqdq xmm7,xmm7,xmm7
0x21b70dbf59ba   17a  c4e2b1b8f8           vfmadd231pd xmm7,xmm9,xmm0
0x21b70dbf59bf   17f  c4c169d4d3           vpaddq xmm2,xmm2,xmm11
0x21b70dbf59c4   184  c4c159d4e4           vpaddq xmm4,xmm4,xmm12
0x21b70dbf59c9   189  c4c149d4f5           vpaddq xmm6,xmm6,xmm13
0x21b70dbf59ce   18e  c44139d4c6           vpaddq xmm8,xmm8,xmm14
0x21b70dbf59d3   193  c529d4d7             vpaddq xmm10,xmm10,xmm7
0x21b70dbf59d7   197  c5781155d0           vmovups [rbp-0x30],xmm10
0x21b70dbf59dc   19c  49ba0300000000006046 REX.W movq r10,0x4660000000000003
0x21b70dbf59e6   1a6  c441f96ed2           vmovq xmm10,r10
0x21b70dbf59eb   1ab  c441296cd2           vpunpcklqdq xmm10,xmm10,xmm10
0x21b70dbf59f0   1b0  c441295cd3           vsubpd xmm10,xmm10,xmm11
0x21b70dbf59f5   1b5  4c8b15e2ffffff       REX.W movq r10,[rip+0xffffffe2]
0x21b70dbf59fc   1bc  c441f96eda           vmovq xmm11,r10
0x21b70dbf5a01   1c1  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5a06   1c6  c441215cdc           vsubpd xmm11,xmm11,xmm12
0x21b70dbf5a0b   1cb  4c8b15ccffffff       REX.W movq r10,[rip+0xffffffcc]
0x21b70dbf5a12   1d2  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5a17   1d7  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5a1c   1dc  c441195ce5           vsubpd xmm12,xmm12,xmm13
0x21b70dbf5a21   1e1  4c8b15b6ffffff       REX.W movq r10,[rip+0xffffffb6]
0x21b70dbf5a28   1e8  c441f96eea           vmovq xmm13,r10
0x21b70dbf5a2d   1ed  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf5a32   1f2  c441115cee           vsubpd xmm13,xmm13,xmm14
0x21b70dbf5a37   1f7  4c8b15a0ffffff       REX.W movq r10,[rip+0xffffffa0]
0x21b70dbf5a3e   1fe  c441f96ef2           vmovq xmm14,r10
0x21b70dbf5a43   203  c441096cf6           vpunpcklqdq xmm14,xmm14,xmm14
0x21b70dbf5a48   208  c5895cff             vsubpd xmm7,xmm14,xmm7
0x21b70dbf5a4c   20c  c462f1b8d0           vfmadd231pd xmm10,xmm1,xmm0
0x21b70dbf5a51   211  c462e1b8d8           vfmadd231pd xmm11,xmm3,xmm0
0x21b70dbf5a56   216  c462d1b8e0           vfmadd231pd xmm12,xmm5,xmm0
0x21b70dbf5a5b   21b  c5781075a0           vmovups xmm14,[rbp-0x60]
0x21b70dbf5a60   220  c46289b8e8           vfmadd231pd xmm13,xmm14,xmm0
0x21b70dbf5a65   225  c4e2b1b8f8           vfmadd231pd xmm7,xmm9,xmm0
0x21b70dbf5a6a   22a  c4c169d4d2           vpaddq xmm2,xmm2,xmm10
0x21b70dbf5a6f   22f  c4c159d4e3           vpaddq xmm4,xmm4,xmm11
0x21b70dbf5a74   234  c4c149d4f4           vpaddq xmm6,xmm6,xmm12
0x21b70dbf5a79   239  c44139d4c5           vpaddq xmm8,xmm8,xmm13
0x21b70dbf5a7e   23e  c5781055d0           vmovups xmm10,[rbp-0x30]
0x21b70dbf5a83   243  c5a9d4ff             vpaddq xmm7,xmm10,xmm7
0x21b70dbf5a87   247  4c8b15c3feffff       REX.W movq r10,[rip+0xfffffec3]
0x21b70dbf5a8e   24e  c441f96ed2           vmovq xmm10,r10
0x21b70dbf5a93   253  c441296cd2           vpunpcklqdq xmm10,xmm10,xmm10
0x21b70dbf5a98   258  c462f1b8d0           vfmadd231pd xmm10,xmm1,xmm0
0x21b70dbf5a9d   25d  4c8b15adfeffff       REX.W movq r10,[rip+0xfffffead]
0x21b70dbf5aa4   264  c441f96eda           vmovq xmm11,r10
0x21b70dbf5aa9   269  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5aae   26e  c462e1b8d8           vfmadd231pd xmm11,xmm3,xmm0
0x21b70dbf5ab3   273  4c8b1597feffff       REX.W movq r10,[rip+0xfffffe97]
0x21b70dbf5aba   27a  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5abf   27f  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5ac4   284  c462d1b8e0           vfmadd231pd xmm12,xmm5,xmm0
0x21b70dbf5ac9   289  4c8b1581feffff       REX.W movq r10,[rip+0xfffffe81]
0x21b70dbf5ad0   290  c441f96eea           vmovq xmm13,r10
0x21b70dbf5ad5   295  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf5ada   29a  c46289b8e8           vfmadd231pd xmm13,xmm14,xmm0
0x21b70dbf5adf   29f  4c8b156bfeffff       REX.W movq r10,[rip+0xfffffe6b]
0x21b70dbf5ae6   2a6  c441f96ef2           vmovq xmm14,r10
0x21b70dbf5aeb   2ab  c441096cf6           vpunpcklqdq xmm14,xmm14,xmm14
0x21b70dbf5af0   2b0  c462b1b8f0           vfmadd231pd xmm14,xmm9,xmm0
0x21b70dbf5af5   2b5  c4c169d4d2           vpaddq xmm2,xmm2,xmm10
0x21b70dbf5afa   2ba  c4c159d4e3           vpaddq xmm4,xmm4,xmm11
0x21b70dbf5aff   2bf  c4c149d4f4           vpaddq xmm6,xmm6,xmm12
0x21b70dbf5b04   2c4  c44139d4c5           vpaddq xmm8,xmm8,xmm13
0x21b70dbf5b09   2c9  c4c141d4fe           vpaddq xmm7,xmm7,xmm14
0x21b70dbf5b0e   2ce  c5f8117dd0           vmovups [rbp-0x30],xmm7
0x21b70dbf5b13   2d3  4c8b15c4feffff       REX.W movq r10,[rip+0xfffffec4]
0x21b70dbf5b1a   2da  c4c1f96efa           vmovq xmm7,r10
0x21b70dbf5b1f   2df  c5c16cff             vpunpcklqdq xmm7,xmm7,xmm7
0x21b70dbf5b23   2e3  c4c1415cfa           vsubpd xmm7,xmm7,xmm10
0x21b70dbf5b28   2e8  4c8b15affeffff       REX.W movq r10,[rip+0xfffffeaf]
0x21b70dbf5b2f   2ef  c441f96ed2           vmovq xmm10,r10
0x21b70dbf5b34   2f4  c441296cd2           vpunpcklqdq xmm10,xmm10,xmm10
0x21b70dbf5b39   2f9  c441295cd3           vsubpd xmm10,xmm10,xmm11
0x21b70dbf5b3e   2fe  4c8b1599feffff       REX.W movq r10,[rip+0xfffffe99]
0x21b70dbf5b45   305  c441f96eda           vmovq xmm11,r10
0x21b70dbf5b4a   30a  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5b4f   30f  c441215cdc           vsubpd xmm11,xmm11,xmm12
0x21b70dbf5b54   314  4c8b1583feffff       REX.W movq r10,[rip+0xfffffe83]
0x21b70dbf5b5b   31b  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5b60   320  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5b65   325  c441195ce5           vsubpd xmm12,xmm12,xmm13
0x21b70dbf5b6a   32a  4c8b156dfeffff       REX.W movq r10,[rip+0xfffffe6d]
0x21b70dbf5b71   331  c441f96eea           vmovq xmm13,r10
0x21b70dbf5b76   336  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf5b7b   33b  c441115cee           vsubpd xmm13,xmm13,xmm14
0x21b70dbf5b80   340  c4e2f1b8f8           vfmadd231pd xmm7,xmm1,xmm0
0x21b70dbf5b85   345  c462e1b8d0           vfmadd231pd xmm10,xmm3,xmm0
0x21b70dbf5b8a   34a  c462d1b8d8           vfmadd231pd xmm11,xmm5,xmm0
0x21b70dbf5b8f   34f  c5781075a0           vmovups xmm14,[rbp-0x60]
0x21b70dbf5b94   354  c46289b8e0           vfmadd231pd xmm12,xmm14,xmm0
0x21b70dbf5b99   359  c462b1b8e8           vfmadd231pd xmm13,xmm9,xmm0
0x21b70dbf5b9e   35e  c5e9d4d7             vpaddq xmm2,xmm2,xmm7
0x21b70dbf5ba2   362  c4c159d4e2           vpaddq xmm4,xmm4,xmm10
0x21b70dbf5ba7   367  c4c149d4f3           vpaddq xmm6,xmm6,xmm11
0x21b70dbf5bac   36c  c4c139d4fc           vpaddq xmm7,xmm8,xmm12
0x21b70dbf5bb1   371  c5781045d0           vmovups xmm8,[rbp-0x30]
0x21b70dbf5bb6   376  c44139d4c5           vpaddq xmm8,xmm8,xmm13
0x21b70dbf5bbb   37b  4c8b158ffdffff       REX.W movq r10,[rip+0xfffffd8f]
0x21b70dbf5bc2   382  c441f96ed2           vmovq xmm10,r10
0x21b70dbf5bc7   387  c441296cd2           vpunpcklqdq xmm10,xmm10,xmm10
0x21b70dbf5bcc   38c  c462f1b8d0           vfmadd231pd xmm10,xmm1,xmm0
0x21b70dbf5bd1   391  4c8b1579fdffff       REX.W movq r10,[rip+0xfffffd79]
0x21b70dbf5bd8   398  c441f96eda           vmovq xmm11,r10
0x21b70dbf5bdd   39d  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5be2   3a2  c462e1b8d8           vfmadd231pd xmm11,xmm3,xmm0
0x21b70dbf5be7   3a7  4c8b1563fdffff       REX.W movq r10,[rip+0xfffffd63]
0x21b70dbf5bee   3ae  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5bf3   3b3  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5bf8   3b8  c462d1b8e0           vfmadd231pd xmm12,xmm5,xmm0
0x21b70dbf5bfd   3bd  4c8b154dfdffff       REX.W movq r10,[rip+0xfffffd4d]
0x21b70dbf5c04   3c4  c441f96eea           vmovq xmm13,r10
0x21b70dbf5c09   3c9  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf5c0e   3ce  c46289b8e8           vfmadd231pd xmm13,xmm14,xmm0
0x21b70dbf5c13   3d3  4c8b1537fdffff       REX.W movq r10,[rip+0xfffffd37]
0x21b70dbf5c1a   3da  c441f96ef2           vmovq xmm14,r10
0x21b70dbf5c1f   3df  c441096cf6           vpunpcklqdq xmm14,xmm14,xmm14
0x21b70dbf5c24   3e4  c462b1b8f0           vfmadd231pd xmm14,xmm9,xmm0
0x21b70dbf5c29   3e9  c4c169d4d2           vpaddq xmm2,xmm2,xmm10
0x21b70dbf5c2e   3ee  c4c159d4e3           vpaddq xmm4,xmm4,xmm11
0x21b70dbf5c33   3f3  c4c149d4f4           vpaddq xmm6,xmm6,xmm12
0x21b70dbf5c38   3f8  c4c141d4fd           vpaddq xmm7,xmm7,xmm13
0x21b70dbf5c3d   3fd  c44139d4c6           vpaddq xmm8,xmm8,xmm14
0x21b70dbf5c42   402  c5781145d0           vmovups [rbp-0x30],xmm8
0x21b70dbf5c47   407  4c8b1590fdffff       REX.W movq r10,[rip+0xfffffd90]
0x21b70dbf5c4e   40e  c441f96ec2           vmovq xmm8,r10
0x21b70dbf5c53   413  c441396cc0           vpunpcklqdq xmm8,xmm8,xmm8
0x21b70dbf5c58   418  c441395cc2           vsubpd xmm8,xmm8,xmm10
0x21b70dbf5c5d   41d  4c8b157afdffff       REX.W movq r10,[rip+0xfffffd7a]
0x21b70dbf5c64   424  c441f96ed2           vmovq xmm10,r10
0x21b70dbf5c69   429  c441296cd2           vpunpcklqdq xmm10,xmm10,xmm10
0x21b70dbf5c6e   42e  c441295cd3           vsubpd xmm10,xmm10,xmm11
0x21b70dbf5c73   433  4c8b1564fdffff       REX.W movq r10,[rip+0xfffffd64]
0x21b70dbf5c7a   43a  c441f96eda           vmovq xmm11,r10
0x21b70dbf5c7f   43f  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5c84   444  c441215cdc           vsubpd xmm11,xmm11,xmm12
0x21b70dbf5c89   449  4c8b154efdffff       REX.W movq r10,[rip+0xfffffd4e]
0x21b70dbf5c90   450  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5c95   455  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5c9a   45a  c441195ce5           vsubpd xmm12,xmm12,xmm13
0x21b70dbf5c9f   45f  4c8b1538fdffff       REX.W movq r10,[rip+0xfffffd38]
0x21b70dbf5ca6   466  c441f96eea           vmovq xmm13,r10
0x21b70dbf5cab   46b  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf5cb0   470  c441115cee           vsubpd xmm13,xmm13,xmm14
0x21b70dbf5cb5   475  c462f1b8c0           vfmadd231pd xmm8,xmm1,xmm0
0x21b70dbf5cba   47a  c462e1b8d0           vfmadd231pd xmm10,xmm3,xmm0
0x21b70dbf5cbf   47f  c462d1b8d8           vfmadd231pd xmm11,xmm5,xmm0
0x21b70dbf5cc4   484  c5781075a0           vmovups xmm14,[rbp-0x60]
0x21b70dbf5cc9   489  c46289b8e0           vfmadd231pd xmm12,xmm14,xmm0
0x21b70dbf5cce   48e  c462b1b8e8           vfmadd231pd xmm13,xmm9,xmm0
0x21b70dbf5cd3   493  c4c169d4d0           vpaddq xmm2,xmm2,xmm8
0x21b70dbf5cd8   498  c4c159d4e2           vpaddq xmm4,xmm4,xmm10
0x21b70dbf5cdd   49d  c4c149d4f3           vpaddq xmm6,xmm6,xmm11
0x21b70dbf5ce2   4a2  c4c141d4fc           vpaddq xmm7,xmm7,xmm12
0x21b70dbf5ce7   4a7  c5781045d0           vmovups xmm8,[rbp-0x30]
0x21b70dbf5cec   4ac  c44139d4c5           vpaddq xmm8,xmm8,xmm13
0x21b70dbf5cf1   4b1  4c8b1559fcffff       REX.W movq r10,[rip+0xfffffc59]
0x21b70dbf5cf8   4b8  c441f96ed2           vmovq xmm10,r10
0x21b70dbf5cfd   4bd  c441296cd2           vpunpcklqdq xmm10,xmm10,xmm10
0x21b70dbf5d02   4c2  c462f1b8d0           vfmadd231pd xmm10,xmm1,xmm0
0x21b70dbf5d07   4c7  4c8b1543fcffff       REX.W movq r10,[rip+0xfffffc43]
0x21b70dbf5d0e   4ce  c441f96eda           vmovq xmm11,r10
0x21b70dbf5d13   4d3  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5d18   4d8  c462e1b8d8           vfmadd231pd xmm11,xmm3,xmm0
0x21b70dbf5d1d   4dd  4c8b152dfcffff       REX.W movq r10,[rip+0xfffffc2d]
0x21b70dbf5d24   4e4  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5d29   4e9  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5d2e   4ee  c462d1b8e0           vfmadd231pd xmm12,xmm5,xmm0
0x21b70dbf5d33   4f3  4c8b1517fcffff       REX.W movq r10,[rip+0xfffffc17]
0x21b70dbf5d3a   4fa  c441f96eea           vmovq xmm13,r10
0x21b70dbf5d3f   4ff  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf5d44   504  c46289b8e8           vfmadd231pd xmm13,xmm14,xmm0
0x21b70dbf5d49   509  4c8b1501fcffff       REX.W movq r10,[rip+0xfffffc01]
0x21b70dbf5d50   510  c441f96ef2           vmovq xmm14,r10
0x21b70dbf5d55   515  c441096cf6           vpunpcklqdq xmm14,xmm14,xmm14
0x21b70dbf5d5a   51a  c462b1b8f0           vfmadd231pd xmm14,xmm9,xmm0
0x21b70dbf5d5f   51f  c4c169d4d2           vpaddq xmm2,xmm2,xmm10
0x21b70dbf5d64   524  c4c159d4e3           vpaddq xmm4,xmm4,xmm11
0x21b70dbf5d69   529  c4c149d4f4           vpaddq xmm6,xmm6,xmm12
0x21b70dbf5d6e   52e  c4c141d4fd           vpaddq xmm7,xmm7,xmm13
0x21b70dbf5d73   533  c44139d4c6           vpaddq xmm8,xmm8,xmm14
0x21b70dbf5d78   538  c5781145d0           vmovups [rbp-0x30],xmm8
0x21b70dbf5d7d   53d  4c8b155afcffff       REX.W movq r10,[rip+0xfffffc5a]
0x21b70dbf5d84   544  c441f96ec2           vmovq xmm8,r10
0x21b70dbf5d89   549  c441396cc0           vpunpcklqdq xmm8,xmm8,xmm8
0x21b70dbf5d8e   54e  c441395cc2           vsubpd xmm8,xmm8,xmm10
0x21b70dbf5d93   553  4c8b1544fcffff       REX.W movq r10,[rip+0xfffffc44]
0x21b70dbf5d9a   55a  c441f96ed2           vmovq xmm10,r10
0x21b70dbf5d9f   55f  c441296cd2           vpunpcklqdq xmm10,xmm10,xmm10
0x21b70dbf5da4   564  c441295cd3           vsubpd xmm10,xmm10,xmm11
0x21b70dbf5da9   569  4c8b152efcffff       REX.W movq r10,[rip+0xfffffc2e]
0x21b70dbf5db0   570  c441f96eda           vmovq xmm11,r10
0x21b70dbf5db5   575  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5dba   57a  c441215cdc           vsubpd xmm11,xmm11,xmm12
0x21b70dbf5dbf   57f  4c8b1518fcffff       REX.W movq r10,[rip+0xfffffc18]
0x21b70dbf5dc6   586  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5dcb   58b  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5dd0   590  c441195ce5           vsubpd xmm12,xmm12,xmm13
0x21b70dbf5dd5   595  4c8b1502fcffff       REX.W movq r10,[rip+0xfffffc02]
0x21b70dbf5ddc   59c  c441f96eea           vmovq xmm13,r10
0x21b70dbf5de1   5a1  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf5de6   5a6  c441115cee           vsubpd xmm13,xmm13,xmm14
0x21b70dbf5deb   5ab  c462f1b8c0           vfmadd231pd xmm8,xmm1,xmm0
0x21b70dbf5df0   5b0  c462e1b8d0           vfmadd231pd xmm10,xmm3,xmm0
0x21b70dbf5df5   5b5  c462d1b8d8           vfmadd231pd xmm11,xmm5,xmm0
0x21b70dbf5dfa   5ba  c5781075a0           vmovups xmm14,[rbp-0x60]
0x21b70dbf5dff   5bf  c46289b8e0           vfmadd231pd xmm12,xmm14,xmm0
0x21b70dbf5e04   5c4  c462b1b8e8           vfmadd231pd xmm13,xmm9,xmm0
0x21b70dbf5e09   5c9  c4c169d4d0           vpaddq xmm2,xmm2,xmm8
0x21b70dbf5e0e   5ce  c4c159d4e2           vpaddq xmm4,xmm4,xmm10
0x21b70dbf5e13   5d3  c4c149d4f3           vpaddq xmm6,xmm6,xmm11
0x21b70dbf5e18   5d8  c4c141d4fc           vpaddq xmm7,xmm7,xmm12
0x21b70dbf5e1d   5dd  c5781045d0           vmovups xmm8,[rbp-0x30]
0x21b70dbf5e22   5e2  c44139d4c5           vpaddq xmm8,xmm8,xmm13
0x21b70dbf5e27   5e7  4c8b1523fbffff       REX.W movq r10,[rip+0xfffffb23]
0x21b70dbf5e2e   5ee  c441f96ed2           vmovq xmm10,r10
0x21b70dbf5e33   5f3  c441296cd2           vpunpcklqdq xmm10,xmm10,xmm10
0x21b70dbf5e38   5f8  c462f1b8d0           vfmadd231pd xmm10,xmm1,xmm0
0x21b70dbf5e3d   5fd  4c8b150dfbffff       REX.W movq r10,[rip+0xfffffb0d]
0x21b70dbf5e44   604  c441f96eda           vmovq xmm11,r10
0x21b70dbf5e49   609  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5e4e   60e  c462e1b8d8           vfmadd231pd xmm11,xmm3,xmm0
0x21b70dbf5e53   613  4c8b15f7faffff       REX.W movq r10,[rip+0xfffffaf7]
0x21b70dbf5e5a   61a  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5e5f   61f  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5e64   624  c462d1b8e0           vfmadd231pd xmm12,xmm5,xmm0
0x21b70dbf5e69   629  4c8b15e1faffff       REX.W movq r10,[rip+0xfffffae1]
0x21b70dbf5e70   630  c441f96eea           vmovq xmm13,r10
0x21b70dbf5e75   635  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf5e7a   63a  c46289b8e8           vfmadd231pd xmm13,xmm14,xmm0
0x21b70dbf5e7f   63f  4c8b15cbfaffff       REX.W movq r10,[rip+0xfffffacb]
0x21b70dbf5e86   646  c441f96ef2           vmovq xmm14,r10
0x21b70dbf5e8b   64b  c441096cf6           vpunpcklqdq xmm14,xmm14,xmm14
0x21b70dbf5e90   650  c462b1b8f0           vfmadd231pd xmm14,xmm9,xmm0
0x21b70dbf5e95   655  c4c169d4d2           vpaddq xmm2,xmm2,xmm10
0x21b70dbf5e9a   65a  c4c159d4e3           vpaddq xmm4,xmm4,xmm11
0x21b70dbf5e9f   65f  c4c149d4f4           vpaddq xmm6,xmm6,xmm12
0x21b70dbf5ea4   664  c4c141d4fd           vpaddq xmm7,xmm7,xmm13
0x21b70dbf5ea9   669  c44139d4c6           vpaddq xmm8,xmm8,xmm14
0x21b70dbf5eae   66e  c5781145d0           vmovups [rbp-0x30],xmm8
0x21b70dbf5eb3   673  4c8b1524fbffff       REX.W movq r10,[rip+0xfffffb24]
0x21b70dbf5eba   67a  c441f96ec2           vmovq xmm8,r10
0x21b70dbf5ebf   67f  c441396cc0           vpunpcklqdq xmm8,xmm8,xmm8
0x21b70dbf5ec4   684  c441395cc2           vsubpd xmm8,xmm8,xmm10
0x21b70dbf5ec9   689  4c8b150efbffff       REX.W movq r10,[rip+0xfffffb0e]
0x21b70dbf5ed0   690  c441f96ed2           vmovq xmm10,r10
0x21b70dbf5ed5   695  c441296cd2           vpunpcklqdq xmm10,xmm10,xmm10
0x21b70dbf5eda   69a  c441295cd3           vsubpd xmm10,xmm10,xmm11
0x21b70dbf5edf   69f  4c8b15f8faffff       REX.W movq r10,[rip+0xfffffaf8]
0x21b70dbf5ee6   6a6  c441f96eda           vmovq xmm11,r10
0x21b70dbf5eeb   6ab  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x21b70dbf5ef0   6b0  c441215cdc           vsubpd xmm11,xmm11,xmm12
0x21b70dbf5ef5   6b5  4c8b15e2faffff       REX.W movq r10,[rip+0xfffffae2]
0x21b70dbf5efc   6bc  c441f96ee2           vmovq xmm12,r10
0x21b70dbf5f01   6c1  c441196ce4           vpunpcklqdq xmm12,xmm12,xmm12
0x21b70dbf5f06   6c6  c441195ce5           vsubpd xmm12,xmm12,xmm13
0x21b70dbf5f0b   6cb  4c8b15ccfaffff       REX.W movq r10,[rip+0xfffffacc]
0x21b70dbf5f12   6d2  c441f96eea           vmovq xmm13,r10
0x21b70dbf5f17   6d7  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x21b70dbf5f1c   6dc  c441115cee           vsubpd xmm13,xmm13,xmm14
0x21b70dbf5f21   6e1  c462f1b8c0           vfmadd231pd xmm8,xmm1,xmm0
0x21b70dbf5f26   6e6  c462e1b8d0           vfmadd231pd xmm10,xmm3,xmm0
0x21b70dbf5f2b   6eb  c462d1b8d8           vfmadd231pd xmm11,xmm5,xmm0
0x21b70dbf5f30   6f0  c5781075a0           vmovups xmm14,[rbp-0x60]
0x21b70dbf5f35   6f5  c46289b8e0           vfmadd231pd xmm12,xmm14,xmm0
0x21b70dbf5f3a   6fa  c462b1b8e8           vfmadd231pd xmm13,xmm9,xmm0
0x21b70dbf5f3f   6ff  c4c169d4d0           vpaddq xmm2,xmm2,xmm8
0x21b70dbf5f44   704  c4c159d4e2           vpaddq xmm4,xmm4,xmm10
0x21b70dbf5f49   709  c4c149d4f3           vpaddq xmm6,xmm6,xmm11
0x21b70dbf5f4e   70e  c44141d4c4           vpaddq xmm8,xmm7,xmm12
0x21b70dbf5f53   713  c5f8107dd0           vmovups xmm7,[rbp-0x30]
0x21b70dbf5f58   718  c44141d4d5           vpaddq xmm10,xmm7,xmm13
0x21b70dbf5f5d   71d  83c0ff               addl rax,0xff
0x21b70dbf5f60   720  0f85daf9ffff         jnz 0x21b70dbf5940  <+0x100>
0x21b70dbf5f66   726  c5fa7f5260           vmovdqu [rdx+0x60],xmm2
0x21b70dbf5f6b   72b  c5fa7f6270           vmovdqu [rdx+0x70],xmm4
0x21b70dbf5f70   730  c5fa7fb280000000     vmovdqu [rdx+0x80],xmm6
0x21b70dbf5f78   738  c57a7f8290000000     vmovdqu [rdx+0x90],xmm8
0x21b70dbf5f80   740  c57a7f92a0000000     vmovdqu [rdx+0xa0],xmm10
0x21b70dbf5f88   748  488be5               REX.W movq rsp,rbp
0x21b70dbf5f8b   74b  5d                   pop rbp
0x21b70dbf5f8c   74c  c3                   retl
0x21b70dbf5f8d   74d  498b95a0bc0000       REX.W movq rdx,[r13+0xbca0]
0x21b70dbf5f94   754  b996000000           movl rcx,0x96
0x21b70dbf5f99   759  51                   push rcx
0x21b70dbf5f9a   75a  48bb50865ac3667c0000 REX.W movq rbx,0x7c66c35a8650
0x21b70dbf5fa4   764  b801000000           movl rax,0x1
0x21b70dbf5fa9   769  33f6                 xorl rsi,rsi
0x21b70dbf5fab   76b  49ba00007f61667c0000 REX.W movq r10,0x7c66617f0000
0x21b70dbf5fb5   775  8b5203               movl rdx,[rdx+0x3]
0x21b70dbf5fb8   778  c1ea09               shrl rdx, 9
0x21b70dbf5fbb   77b  c1e204               shll rdx, 4
0x21b70dbf5fbe   77e  498b1412             REX.W movq rdx,[r10+rdx*1]
0x21b70dbf5fc2   782  ffd2                 call rdx
0x21b70dbf5fc4   784  cc                   int3l
0x21b70dbf5fc5   785  488955e8             REX.W movq [rbp-0x18],rdx
0x21b70dbf5fc9   789  488945e0             REX.W movq [rbp-0x20],rax
0x21b70dbf5fcd   78d  e83ef3ffff           call 0x21b70dbf5310  (jump table)
0x21b70dbf5fd2   792  488b55e8             REX.W movq rdx,[rbp-0x18]
0x21b70dbf5fd6   796  8b45e0               movl rax,[rbp-0x20]
0x21b70dbf5fd9   799  e9e6f8ffff           jmp 0x21b70dbf58c4  <+0x84>
0x21b70dbf5fde   79e  488955e8             REX.W movq [rbp-0x18],rdx
0x21b70dbf5fe2   7a2  488945e0             REX.W movq [rbp-0x20],rax
0x21b70dbf5fe6   7a6  c5f81145c0           vmovups [rbp-0x40],xmm0
0x21b70dbf5feb   7ab  c578114db0           vmovups [rbp-0x50],xmm9
0x21b70dbf5ff0   7b0  c5f8116d90           vmovups [rbp-0x70],xmm5
0x21b70dbf5ff5   7b5  c5f8115d80           vmovups [rbp-0x80],xmm3
0x21b70dbf5ffa   7ba  c5f8118d70ffffff     vmovups [rbp-0x90],xmm1
0x21b70dbf6002   7c2  c5781155d0           vmovups [rbp-0x30],xmm10
0x21b70dbf6007   7c7  c578118530ffffff     vmovups [rbp-0xd0],xmm8
0x21b70dbf600f   7cf  c5f811b540ffffff     vmovups [rbp-0xc0],xmm6
0x21b70dbf6017   7d7  c5f811a550ffffff     vmovups [rbp-0xb0],xmm4
0x21b70dbf601f   7df  c5f8119560ffffff     vmovups [rbp-0xa0],xmm2
0x21b70dbf6027   7e7  e8e4f2ffff           call 0x21b70dbf5310  (jump table)
0x21b70dbf602c   7ec  488b55e8             REX.W movq rdx,[rbp-0x18]
0x21b70dbf6030   7f0  8b45e0               movl rax,[rbp-0x20]
0x21b70dbf6033   7f3  c5f81045c0           vmovups xmm0,[rbp-0x40]
0x21b70dbf6038   7f8  c578104db0           vmovups xmm9,[rbp-0x50]
0x21b70dbf603d   7fd  c5f8107da0           vmovups xmm7,[rbp-0x60]
0x21b70dbf6042   802  c5f8106d90           vmovups xmm5,[rbp-0x70]
0x21b70dbf6047   807  c5f8105d80           vmovups xmm3,[rbp-0x80]
0x21b70dbf604c   80c  c5f8108d70ffffff     vmovups xmm1,[rbp-0x90]
0x21b70dbf6054   814  c5781055d0           vmovups xmm10,[rbp-0x30]
0x21b70dbf6059   819  c578108530ffffff     vmovups xmm8,[rbp-0xd0]
0x21b70dbf6061   821  c5f810b540ffffff     vmovups xmm6,[rbp-0xc0]
0x21b70dbf6069   829  c5f810a550ffffff     vmovups xmm4,[rbp-0xb0]
0x21b70dbf6071   831  c5f8109560ffffff     vmovups xmm2,[rbp-0xa0]
0x21b70dbf6079   839  e9d1f8ffff           jmp 0x21b70dbf594f  <+0x10f>
0x21b70dbf607e   83e  90                   nop
0x21b70dbf607f   83f  90                   nop

Source positions:
 pc offset  position
       754         0
       79e        94

Safepoints (stack slots = 28, entries = 1, byte size = 18)
0x21b70dbf5fc4    784  slots (sp->fp): 0000000000000000000000000000

RelocInfo (size = 12)
0x21b70dbf5876  external reference (0x7c66c24b7710)
0x21b70dbf5f9c  external reference (0x7c66c35a8650)
0x21b70dbf5fad  external reference (0x7c66617f0000)
0x21b70dbf5fce  wasm stub call  (0x21b70dbf5310)
0x21b70dbf6028  wasm stub call  (0x21b70dbf5310)

--- End code ---
FMA ops/s: 2155.9M   (100000000 FMAs in 0.046s, 0.46ns/FMA)
