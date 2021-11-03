
foo.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <foo>:
   0:	48 89 f9             	mov    rcx,rdi
   3:	85 d2                	test   edx,edx
   5:	0f 84 60 01 00 00    	je     16b <foo+0x16b>
   b:	48 8d 7e 04          	lea    rdi,[rsi+0x4]
   f:	48 89 c8             	mov    rax,rcx
  12:	48 29 f8             	sub    rax,rdi
  15:	48 83 f8 08          	cmp    rax,0x8
  19:	0f 86 19 01 00 00    	jbe    138 <foo+0x138>
  1f:	8d 42 ff             	lea    eax,[rdx-0x1]
  22:	83 f8 02             	cmp    eax,0x2
  25:	0f 86 0d 01 00 00    	jbe    138 <foo+0x138>
  2b:	89 d7                	mov    edi,edx
  2d:	66 0f 6f 1d 00 00 00 00 	movdqa xmm3,XMMWORD PTR [rip+0x0]        # 35 <foo+0x35>	31: R_X86_64_PC32	.LC0-0x4
  35:	66 0f 6f 35 00 00 00 00 	movdqa xmm6,XMMWORD PTR [rip+0x0]        # 3d <foo+0x3d>	39: R_X86_64_PC32	.LC1-0x4
  3d:	31 c0                	xor    eax,eax
  3f:	c1 ef 02             	shr    edi,0x2
  42:	48 c1 e7 04          	shl    rdi,0x4
  46:	66 2e 0f 1f 84 00 00 00 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  50:	0f 12 64 06 08       	movlps xmm4,QWORD PTR [rsi+rax*1+0x8]
  55:	0f 5a 04 06          	cvtps2pd xmm0,QWORD PTR [rsi+rax*1]
  59:	66 0f 6f d3          	movdqa xmm2,xmm3
  5d:	66 0f fe de          	paddd  xmm3,xmm6
  61:	66 0f 59 c0          	mulpd  xmm0,xmm0
  65:	0f 5a cc             	cvtps2pd xmm1,xmm4
  68:	f3 0f e6 ea          	cvtdq2pd xmm5,xmm2
  6c:	66 0f 70 d2 ee       	pshufd xmm2,xmm2,0xee
  71:	66 0f 59 c9          	mulpd  xmm1,xmm1
  75:	f3 0f e6 d2          	cvtdq2pd xmm2,xmm2
  79:	66 0f 58 c5          	addpd  xmm0,xmm5
  7d:	66 0f 58 ca          	addpd  xmm1,xmm2
  81:	66 0f 5a c0          	cvtpd2ps xmm0,xmm0
  85:	66 0f 5a c9          	cvtpd2ps xmm1,xmm1
  89:	0f 16 c1             	movlhps xmm0,xmm1
  8c:	0f 11 04 01          	movups XMMWORD PTR [rcx+rax*1],xmm0
  90:	48 83 c0 10          	add    rax,0x10
  94:	48 39 f8             	cmp    rax,rdi
  97:	75 b7                	jne    50 <foo+0x50>
  99:	89 d0                	mov    eax,edx
  9b:	83 e0 fc             	and    eax,0xfffffffc
  9e:	f6 c2 03             	test   dl,0x3
  a1:	0f 84 c4 00 00 00    	je     16b <foo+0x16b>
  a7:	4c 63 c0             	movsxd r8,eax
  aa:	66 0f ef c0          	pxor   xmm0,xmm0
  ae:	66 0f ef c9          	pxor   xmm1,xmm1
  b2:	f3 42 0f 5a 04 86    	cvtss2sd xmm0,DWORD PTR [rsi+r8*4]
  b8:	f2 0f 59 c0          	mulsd  xmm0,xmm0
  bc:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
  c0:	4a 8d 3c 85 00 00 00 00 	lea    rdi,[r8*4+0x0]
  c8:	f2 0f 58 c1          	addsd  xmm0,xmm1
  cc:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  d0:	f3 42 0f 11 04 81    	movss  DWORD PTR [rcx+r8*4],xmm0
  d6:	44 8d 40 01          	lea    r8d,[rax+0x1]
  da:	44 39 c2             	cmp    edx,r8d
  dd:	0f 86 88 00 00 00    	jbe    16b <foo+0x16b>
  e3:	66 0f ef c0          	pxor   xmm0,xmm0
  e7:	66 0f ef c9          	pxor   xmm1,xmm1
  eb:	83 c0 02             	add    eax,0x2
  ee:	f3 0f 5a 44 3e 04    	cvtss2sd xmm0,DWORD PTR [rsi+rdi*1+0x4]
  f4:	f2 0f 59 c0          	mulsd  xmm0,xmm0
  f8:	f2 41 0f 2a c8       	cvtsi2sd xmm1,r8d
  fd:	f2 0f 58 c1          	addsd  xmm0,xmm1
 101:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
 105:	f3 0f 11 44 39 04    	movss  DWORD PTR [rcx+rdi*1+0x4],xmm0
 10b:	39 c2                	cmp    edx,eax
 10d:	76 5c                	jbe    16b <foo+0x16b>
 10f:	66 0f ef c0          	pxor   xmm0,xmm0
 113:	66 0f ef c9          	pxor   xmm1,xmm1
 117:	f3 0f 5a 44 3e 08    	cvtss2sd xmm0,DWORD PTR [rsi+rdi*1+0x8]
 11d:	f2 0f 59 c0          	mulsd  xmm0,xmm0
 121:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
 125:	f2 0f 58 c1          	addsd  xmm0,xmm1
 129:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
 12d:	f3 0f 11 44 39 08    	movss  DWORD PTR [rcx+rdi*1+0x8],xmm0
 133:	c3                   	ret    
 134:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 138:	89 d2                	mov    edx,edx
 13a:	31 c0                	xor    eax,eax
 13c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 140:	66 0f ef c9          	pxor   xmm1,xmm1
 144:	66 0f ef c0          	pxor   xmm0,xmm0
 148:	f3 0f 5a 0c 86       	cvtss2sd xmm1,DWORD PTR [rsi+rax*4]
 14d:	f2 0f 59 c9          	mulsd  xmm1,xmm1
 151:	f2 0f 2a c0          	cvtsi2sd xmm0,eax
 155:	f2 0f 58 c1          	addsd  xmm0,xmm1
 159:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
 15d:	f3 0f 11 04 81       	movss  DWORD PTR [rcx+rax*4],xmm0
 162:	48 83 c0 01          	add    rax,0x1
 166:	48 39 d0             	cmp    rax,rdx
 169:	75 d5                	jne    140 <foo+0x140>
 16b:	c3                   	ret    
