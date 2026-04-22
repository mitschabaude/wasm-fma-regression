--- WebAssembly code ---
name: wasm-function[0]
index: 0
kind: wasm function
compiler: TurboFan
Body (size = 960 = 908 + 52 padding)
Instructions (size = 892)
0x160017500840     0  55                   push rbp
0x160017500841     1  4889e5               REX.W movq rbp,rsp
0x160017500844     4  6a08                 push 0x8
0x160017500846     6  56                   push rsi
0x160017500847     7  4881ec00010000       REX.W subq rsp,0x100
0x16001750084e     e  8b56ff               movl rdx,[rsi-0x1]
0x160017500851    11  4903d6               REX.W addq rdx,r14
0x160017500854    14  0fb75207             movzxwl rdx,[rdx+0x7]
0x160017500858    18  41baffffffff         movl r10,0xffffffff
0x16001750085e    1e  493bd2               REX.W cmpq rdx,r10
0x160017500861    21  7620                 jna 0x160017500883  <+0x43>
0x160017500863    23  bf01000000           movl rdi,0x1
0x160017500868    28  4989e2               REX.W movq r10,rsp
0x16001750086b    2b  4883ec08             REX.W subq rsp,0x8
0x16001750086f    2f  4883e4f0             REX.W andq rsp,0xf0
0x160017500873    33  4c891424             REX.W movq [rsp],r10
0x160017500877    37  48b8e0139b9754790000 REX.W movq rax,0x7954979b13e0
0x160017500881    41  ffd0                 call rax
0x160017500883    43  81fabd000000         cmpl rdx,0xbd
0x160017500889    49  0f850c020000         jnz 0x160017500a9b  <+0x25b>
0x16001750088f    4f  488b5617             REX.W movq rdx,[rsi+0x17]
0x160017500893    53  c5fa6f02             vmovdqu xmm0,[rdx]
0x160017500897    57  c5fa6f4a10           vmovdqu xmm1,[rdx+0x10]
0x16001750089c    5c  c5fa6f5260           vmovdqu xmm2,[rdx+0x60]
0x1600175008a1    61  c5fa6f5a20           vmovdqu xmm3,[rdx+0x20]
0x1600175008a6    66  c5fa6f6270           vmovdqu xmm4,[rdx+0x70]
0x1600175008ab    6b  c5fa6f6a30           vmovdqu xmm5,[rdx+0x30]
0x1600175008b0    70  c5fa6fb280000000     vmovdqu xmm6,[rdx+0x80]
0x1600175008b8    78  c5fa6f7a40           vmovdqu xmm7,[rdx+0x40]
0x1600175008bd    7d  c57a6f8290000000     vmovdqu xmm8,[rdx+0x90]
0x1600175008c5    85  c57a6f4a50           vmovdqu xmm9,[rdx+0x50]
0x1600175008ca    8a  c57a6f92a0000000     vmovdqu xmm10,[rdx+0xa0]
0x1600175008d2    92  49ba0000000000006046 REX.W movq r10,0x4660000000000000
0x1600175008dc    9c  c441f96eda           vmovq xmm11,r10
0x1600175008e1    a1  c441216cdb           vpunpcklqdq xmm11,xmm11,xmm11
0x1600175008e6    a6  c57810e0             vmovups xmm12,xmm0
0x1600175008ea    aa  c442f1a8e3           vfmadd213pd xmm12,xmm1,xmm11
0x1600175008ef    af  49ba0300000000006046 REX.W movq r10,0x4660000000000003
0x1600175008f9    b9  c441f96eea           vmovq xmm13,r10
0x1600175008fe    be  c441116ced           vpunpcklqdq xmm13,xmm13,xmm13
0x160017500903    c3  c441115cf4           vsubpd xmm14,xmm13,xmm12
0x160017500908    c8  c57811a540ffffff     vmovups [rbp-0xc0],xmm12
0x160017500910    d0  c57810e0             vmovups xmm12,xmm0
0x160017500914    d4  c442e1a8e3           vfmadd213pd xmm12,xmm3,xmm11
0x160017500919    d9  c4c2f9a8ce           vfmadd213pd xmm1,xmm0,xmm14
0x16001750091e    de  c441115cf4           vsubpd xmm14,xmm13,xmm12
0x160017500923    e3  c57811a560ffffff     vmovups [rbp-0xa0],xmm12
0x16001750092b    eb  c57810e0             vmovups xmm12,xmm0
0x16001750092f    ef  c442d1a8e3           vfmadd213pd xmm12,xmm5,xmm11
0x160017500934    f4  c4c2f9a8de           vfmadd213pd xmm3,xmm0,xmm14
0x160017500939    f9  c441115cf4           vsubpd xmm14,xmm13,xmm12
0x16001750093e    fe  c578116580           vmovups [rbp-0x80],xmm12
0x160017500943   103  c57810e0             vmovups xmm12,xmm0
0x160017500947   107  c442c1a8e3           vfmadd213pd xmm12,xmm7,xmm11
0x16001750094c   10c  c4c2f9a8ee           vfmadd213pd xmm5,xmm0,xmm14
0x160017500951   111  c441115cf4           vsubpd xmm14,xmm13,xmm12
0x160017500956   116  c462b1b8d8           vfmadd231pd xmm11,xmm9,xmm0
0x16001750095b   11b  c4c2f9a8fe           vfmadd213pd xmm7,xmm0,xmm14
0x160017500960   120  c441115ceb           vsubpd xmm13,xmm13,xmm11
0x160017500965   125  c4c2b1a8c5           vfmadd213pd xmm0,xmm9,xmm13
0x16001750096a   12a  c578108d40ffffff     vmovups xmm9,[rbp-0xc0]
0x160017500972   132  c57810ad60ffffff     vmovups xmm13,[rbp-0xa0]
0x16001750097a   13a  c578107580           vmovups xmm14,[rbp-0x80]
0x16001750097f   13f  90                   nop
0x160017500980   140  493b65a0             REX.W cmpq rsp,[r13-0x60]
0x160017500984   144  0f865e010000         jna 0x160017500ae8  <+0x2a8>
0x16001750098a   14a  c4c169d4d1           vpaddq xmm2,xmm2,xmm9
0x16001750098f   14f  c5e9d4d1             vpaddq xmm2,xmm2,xmm1
0x160017500993   153  c4c159d4e5           vpaddq xmm4,xmm4,xmm13
0x160017500998   158  c4c169d4d1           vpaddq xmm2,xmm2,xmm9
0x16001750099d   15d  c5d9d4e3             vpaddq xmm4,xmm4,xmm3
0x1600175009a1   161  c4c149d4f6           vpaddq xmm6,xmm6,xmm14
0x1600175009a6   166  c5e9d4d1             vpaddq xmm2,xmm2,xmm1
0x1600175009aa   16a  c4c159d4e5           vpaddq xmm4,xmm4,xmm13
0x1600175009af   16f  c5c9d4f5             vpaddq xmm6,xmm6,xmm5
0x1600175009b3   173  c44139d4c4           vpaddq xmm8,xmm8,xmm12
0x1600175009b8   178  c4c169d4d1           vpaddq xmm2,xmm2,xmm9
0x1600175009bd   17d  c5d9d4e3             vpaddq xmm4,xmm4,xmm3
0x1600175009c1   181  c4c149d4f6           vpaddq xmm6,xmm6,xmm14
0x1600175009c6   186  c539d4c7             vpaddq xmm8,xmm8,xmm7
0x1600175009ca   18a  c44129d4d3           vpaddq xmm10,xmm10,xmm11
0x1600175009cf   18f  c5e9d4d1             vpaddq xmm2,xmm2,xmm1
0x1600175009d3   193  c4c159d4e5           vpaddq xmm4,xmm4,xmm13
0x1600175009d8   198  c5c9d4f5             vpaddq xmm6,xmm6,xmm5
0x1600175009dc   19c  c44139d4c4           vpaddq xmm8,xmm8,xmm12
0x1600175009e1   1a1  c529d4d0             vpaddq xmm10,xmm10,xmm0
0x1600175009e5   1a5  c4c169d4d1           vpaddq xmm2,xmm2,xmm9
0x1600175009ea   1aa  c5d9d4e3             vpaddq xmm4,xmm4,xmm3
0x1600175009ee   1ae  c4c149d4f6           vpaddq xmm6,xmm6,xmm14
0x1600175009f3   1b3  c539d4c7             vpaddq xmm8,xmm8,xmm7
0x1600175009f7   1b7  c44129d4d3           vpaddq xmm10,xmm10,xmm11
0x1600175009fc   1bc  c5e9d4d1             vpaddq xmm2,xmm2,xmm1
0x160017500a00   1c0  c4c159d4e5           vpaddq xmm4,xmm4,xmm13
0x160017500a05   1c5  c5c9d4f5             vpaddq xmm6,xmm6,xmm5
0x160017500a09   1c9  c44139d4c4           vpaddq xmm8,xmm8,xmm12
0x160017500a0e   1ce  c529d4d0             vpaddq xmm10,xmm10,xmm0
0x160017500a12   1d2  c4c169d4d1           vpaddq xmm2,xmm2,xmm9
0x160017500a17   1d7  c5d9d4e3             vpaddq xmm4,xmm4,xmm3
0x160017500a1b   1db  c4c149d4f6           vpaddq xmm6,xmm6,xmm14
0x160017500a20   1e0  c539d4c7             vpaddq xmm8,xmm8,xmm7
0x160017500a24   1e4  c44129d4d3           vpaddq xmm10,xmm10,xmm11
0x160017500a29   1e9  c5e9d4d1             vpaddq xmm2,xmm2,xmm1
0x160017500a2d   1ed  c4c159d4e5           vpaddq xmm4,xmm4,xmm13
0x160017500a32   1f2  c5c9d4f5             vpaddq xmm6,xmm6,xmm5
0x160017500a36   1f6  c44139d4c4           vpaddq xmm8,xmm8,xmm12
0x160017500a3b   1fb  c529d4d0             vpaddq xmm10,xmm10,xmm0
0x160017500a3f   1ff  c5d9d4e3             vpaddq xmm4,xmm4,xmm3
0x160017500a43   203  c4c149d4f6           vpaddq xmm6,xmm6,xmm14
0x160017500a48   208  c539d4c7             vpaddq xmm8,xmm8,xmm7
0x160017500a4c   20c  c44129d4d3           vpaddq xmm10,xmm10,xmm11
0x160017500a51   211  c5c9d4f5             vpaddq xmm6,xmm6,xmm5
0x160017500a55   215  c44139d4c4           vpaddq xmm8,xmm8,xmm12
0x160017500a5a   21a  c529d4d0             vpaddq xmm10,xmm10,xmm0
0x160017500a5e   21e  c539d4c7             vpaddq xmm8,xmm8,xmm7
0x160017500a62   222  c44129d4d3           vpaddq xmm10,xmm10,xmm11
0x160017500a67   227  c529d4d0             vpaddq xmm10,xmm10,xmm0
0x160017500a6b   22b  83c0ff               addl rax,0xff
0x160017500a6e   22e  0f850cffffff         jnz 0x160017500980  <+0x140>
0x160017500a74   234  c5fa7f5260           vmovdqu [rdx+0x60],xmm2
0x160017500a79   239  c5fa7f6270           vmovdqu [rdx+0x70],xmm4
0x160017500a7e   23e  c5fa7fb280000000     vmovdqu [rdx+0x80],xmm6
0x160017500a86   246  c57a7f8290000000     vmovdqu [rdx+0x90],xmm8
0x160017500a8e   24e  c57a7f92a0000000     vmovdqu [rdx+0xa0],xmm10
0x160017500a96   256  488be5               REX.W movq rsp,rbp
0x160017500a99   259  5d                   pop rbp
0x160017500a9a   25a  c3                   retl
0x160017500a9b   25b  498b9500b00000       REX.W movq rdx,[r13+0xb000]
0x160017500aa2   262  b98e000000           movl rcx,0x8e
0x160017500aa7   267  51                   push rcx
0x160017500aa8   268  488945e0             REX.W movq [rbp-0x20],rax
0x160017500aac   26c  48bb2030919854790000 REX.W movq rbx,0x795498913020
0x160017500ab6   276  33f6                 xorl rsi,rsi
0x160017500ab8   278  b801000000           movl rax,0x1
0x160017500abd   27d  488bc8               REX.W movq rcx,rax
0x160017500ac0   280  488bfe               REX.W movq rdi,rsi
0x160017500ac3   283  49ba0000ff3654790000 REX.W movq r10,0x795436ff0000
0x160017500acd   28d  8b5203               movl rdx,[rdx+0x3]
0x160017500ad0   290  c1ea09               shrl rdx, 9
0x160017500ad3   293  c1e204               shll rdx, 4
0x160017500ad6   296  498b1412             REX.W movq rdx,[r10+rdx*1]
0x160017500ada   29a  ffd2                 call rdx
0x160017500adc   29c  8b45e0               movl rax,[rbp-0x20]
0x160017500adf   29f  488b75f0             REX.W movq rsi,[rbp-0x10]
0x160017500ae3   2a3  e9a7fdffff           jmp 0x16001750088f  <+0x4f>
0x160017500ae8   2a8  488955e8             REX.W movq [rbp-0x18],rdx
0x160017500aec   2ac  488945e0             REX.W movq [rbp-0x20],rax
0x160017500af0   2b0  c5f81145d0           vmovups [rbp-0x30],xmm0
0x160017500af5   2b5  c578115dc0           vmovups [rbp-0x40],xmm11
0x160017500afa   2ba  c5f8117db0           vmovups [rbp-0x50],xmm7
0x160017500aff   2bf  c5781165a0           vmovups [rbp-0x60],xmm12
0x160017500b04   2c4  c5f8116d90           vmovups [rbp-0x70],xmm5
0x160017500b09   2c9  c5f8119d70ffffff     vmovups [rbp-0x90],xmm3
0x160017500b11   2d1  c5f8118d50ffffff     vmovups [rbp-0xb0],xmm1
0x160017500b19   2d9  c578119530ffffff     vmovups [rbp-0xd0],xmm10
0x160017500b21   2e1  c578118520ffffff     vmovups [rbp-0xe0],xmm8
0x160017500b29   2e9  c5f811b510ffffff     vmovups [rbp-0xf0],xmm6
0x160017500b31   2f1  c5f811a500ffffff     vmovups [rbp-0x100],xmm4
0x160017500b39   2f9  c5f81195f0feffff     vmovups [rbp-0x110],xmm2
0x160017500b41   301  e8caf7ffff           call 0x160017500310  (jump table)
0x160017500b46   306  488b55e8             REX.W movq rdx,[rbp-0x18]
0x160017500b4a   30a  8b45e0               movl rax,[rbp-0x20]
0x160017500b4d   30d  c5f81045d0           vmovups xmm0,[rbp-0x30]
0x160017500b52   312  c578105dc0           vmovups xmm11,[rbp-0x40]
0x160017500b57   317  c5f8107db0           vmovups xmm7,[rbp-0x50]
0x160017500b5c   31c  c5781065a0           vmovups xmm12,[rbp-0x60]
0x160017500b61   321  c5f8106d90           vmovups xmm5,[rbp-0x70]
0x160017500b66   326  c578107580           vmovups xmm14,[rbp-0x80]
0x160017500b6b   32b  c5f8109d70ffffff     vmovups xmm3,[rbp-0x90]
0x160017500b73   333  c57810ad60ffffff     vmovups xmm13,[rbp-0xa0]
0x160017500b7b   33b  c5f8108d50ffffff     vmovups xmm1,[rbp-0xb0]
0x160017500b83   343  c578108d40ffffff     vmovups xmm9,[rbp-0xc0]
0x160017500b8b   34b  c578109530ffffff     vmovups xmm10,[rbp-0xd0]
0x160017500b93   353  c578108520ffffff     vmovups xmm8,[rbp-0xe0]
0x160017500b9b   35b  c5f810b510ffffff     vmovups xmm6,[rbp-0xf0]
0x160017500ba3   363  c5f810a500ffffff     vmovups xmm4,[rbp-0x100]
0x160017500bab   36b  c5f81095f0feffff     vmovups xmm2,[rbp-0x110]
0x160017500bb3   373  e9d2fdffff           jmp 0x16001750098a  <+0x14a>
0x160017500bb8   378  90                   nop
0x160017500bb9   379  0f1f00               nop

Source positions:
 pc offset  position
       2a8        94

Safepoints (entries = 1, byte size = 15)
0x160017500adc    29c  slots (sp->fp): 0000000000000000000000000000000000000000

RelocInfo (size = 11)
0x160017500879  external reference (0x7954979b13e0)
0x160017500aae  external reference (0x795498913020)
0x160017500ac5  external reference (0x795436ff0000)
0x160017500b42  wasm stub call  (0x160017500310)

--- End code ---
FMA ops/s: 12360.9M   (100000000 FMAs in 0.008s, 0.08ns/FMA)
