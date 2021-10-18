
foo.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <foo>:
   0:	85 d2                	test   edx,edx
   2:	0f 84 bb 00 00 00    	je     c3 <foo+0xc3>
   8:	48 8d 4f 0f          	lea    rcx,[rdi+0xf]
   c:	8d 42 ff             	lea    eax,[rdx-0x1]
   f:	48 29 f1             	sub    rcx,rsi
  12:	48 83 f9 1e          	cmp    rcx,0x1e
  16:	0f 86 84 00 00 00    	jbe    a0 <foo+0xa0>
  1c:	83 f8 02             	cmp    eax,0x2
  1f:	76 7f                	jbe    a0 <foo+0xa0>
  21:	89 d1                	mov    ecx,edx
  23:	31 c0                	xor    eax,eax
  25:	c1 e9 02             	shr    ecx,0x2
  28:	48 c1 e1 04          	shl    rcx,0x4
  2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  30:	0f 10 04 07          	movups xmm0,XMMWORD PTR [rdi+rax*1]
  34:	0f 10 0c 06          	movups xmm1,XMMWORD PTR [rsi+rax*1]
  38:	0f 58 c1             	addps  xmm0,xmm1
  3b:	0f 11 04 07          	movups XMMWORD PTR [rdi+rax*1],xmm0
  3f:	48 83 c0 10          	add    rax,0x10
  43:	48 39 c8             	cmp    rax,rcx
  46:	75 e8                	jne    30 <foo+0x30>
  48:	89 d0                	mov    eax,edx
  4a:	83 e0 fc             	and    eax,0xfffffffc
  4d:	f6 c2 03             	test   dl,0x3
  50:	74 71                	je     c3 <foo+0xc3>
  52:	4c 63 c0             	movsxd r8,eax
  55:	4a 8d 0c 87          	lea    rcx,[rdi+r8*4]
  59:	f3 0f 10 01          	movss  xmm0,DWORD PTR [rcx]
  5d:	f3 42 0f 58 04 86    	addss  xmm0,DWORD PTR [rsi+r8*4]
  63:	f3 0f 11 01          	movss  DWORD PTR [rcx],xmm0
  67:	8d 48 01             	lea    ecx,[rax+0x1]
  6a:	39 ca                	cmp    edx,ecx
  6c:	76 55                	jbe    c3 <foo+0xc3>
  6e:	48 63 c9             	movsxd rcx,ecx
  71:	83 c0 02             	add    eax,0x2
  74:	4c 8d 04 8f          	lea    r8,[rdi+rcx*4]
  78:	f3 41 0f 10 00       	movss  xmm0,DWORD PTR [r8]
  7d:	f3 0f 58 04 8e       	addss  xmm0,DWORD PTR [rsi+rcx*4]
  82:	f3 41 0f 11 00       	movss  DWORD PTR [r8],xmm0
  87:	39 c2                	cmp    edx,eax
  89:	76 38                	jbe    c3 <foo+0xc3>
  8b:	48 98                	cdqe   
  8d:	48 8d 14 87          	lea    rdx,[rdi+rax*4]
  91:	f3 0f 10 02          	movss  xmm0,DWORD PTR [rdx]
  95:	f3 0f 58 04 86       	addss  xmm0,DWORD PTR [rsi+rax*4]
  9a:	f3 0f 11 02          	movss  DWORD PTR [rdx],xmm0
  9e:	c3                   	ret    
  9f:	90                   	nop
  a0:	89 c2                	mov    edx,eax
  a2:	31 c0                	xor    eax,eax
  a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a8:	f3 0f 10 04 87       	movss  xmm0,DWORD PTR [rdi+rax*4]
  ad:	f3 0f 58 04 86       	addss  xmm0,DWORD PTR [rsi+rax*4]
  b2:	48 89 c1             	mov    rcx,rax
  b5:	f3 0f 11 04 87       	movss  DWORD PTR [rdi+rax*4],xmm0
  ba:	48 83 c0 01          	add    rax,0x1
  be:	48 39 d1             	cmp    rcx,rdx
  c1:	75 e5                	jne    a8 <foo+0xa8>
  c3:	c3                   	ret    
