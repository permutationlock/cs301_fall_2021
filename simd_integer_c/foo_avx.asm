
foo.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <foo>:
   0:	85 d2                	test   edx,edx
   2:	0f 84 cb 00 00 00    	je     d3 <foo+0xd3>
   8:	48 8d 4f 1f          	lea    rcx,[rdi+0x1f]
   c:	48 29 f1             	sub    rcx,rsi
   f:	8d 42 ff             	lea    eax,[rdx-0x1]
  12:	48 83 f9 3e          	cmp    rcx,0x3e
  16:	0f 86 bc 00 00 00    	jbe    d8 <foo+0xd8>
  1c:	83 f8 06             	cmp    eax,0x6
  1f:	0f 86 b3 00 00 00    	jbe    d8 <foo+0xd8>
  25:	89 d1                	mov    ecx,edx
  27:	c1 e9 03             	shr    ecx,0x3
  2a:	48 c1 e1 05          	shl    rcx,0x5
  2e:	31 c0                	xor    eax,eax
  30:	c5 fe 6f 0c 07       	vmovdqu ymm1,YMMWORD PTR [rdi+rax*1]
  35:	c5 f5 fe 04 06       	vpaddd ymm0,ymm1,YMMWORD PTR [rsi+rax*1]
  3a:	c5 fe 7f 04 07       	vmovdqu YMMWORD PTR [rdi+rax*1],ymm0
  3f:	48 83 c0 20          	add    rax,0x20
  43:	48 39 c8             	cmp    rax,rcx
  46:	75 e8                	jne    30 <foo+0x30>
  48:	89 d0                	mov    eax,edx
  4a:	83 e0 f8             	and    eax,0xfffffff8
  4d:	f6 c2 07             	test   dl,0x7
  50:	74 7e                	je     d0 <foo+0xd0>
  52:	48 63 c8             	movsxd rcx,eax
  55:	44 8b 04 8e          	mov    r8d,DWORD PTR [rsi+rcx*4]
  59:	44 01 04 8f          	add    DWORD PTR [rdi+rcx*4],r8d
  5d:	8d 48 01             	lea    ecx,[rax+0x1]
  60:	39 ca                	cmp    edx,ecx
  62:	76 6c                	jbe    d0 <foo+0xd0>
  64:	48 63 c9             	movsxd rcx,ecx
  67:	44 8b 04 8e          	mov    r8d,DWORD PTR [rsi+rcx*4]
  6b:	44 01 04 8f          	add    DWORD PTR [rdi+rcx*4],r8d
  6f:	8d 48 02             	lea    ecx,[rax+0x2]
  72:	39 ca                	cmp    edx,ecx
  74:	76 5a                	jbe    d0 <foo+0xd0>
  76:	48 63 c9             	movsxd rcx,ecx
  79:	44 8b 04 8e          	mov    r8d,DWORD PTR [rsi+rcx*4]
  7d:	44 01 04 8f          	add    DWORD PTR [rdi+rcx*4],r8d
  81:	8d 48 03             	lea    ecx,[rax+0x3]
  84:	39 ca                	cmp    edx,ecx
  86:	76 48                	jbe    d0 <foo+0xd0>
  88:	48 63 c9             	movsxd rcx,ecx
  8b:	44 8b 04 8e          	mov    r8d,DWORD PTR [rsi+rcx*4]
  8f:	44 01 04 8f          	add    DWORD PTR [rdi+rcx*4],r8d
  93:	8d 48 04             	lea    ecx,[rax+0x4]
  96:	39 ca                	cmp    edx,ecx
  98:	76 36                	jbe    d0 <foo+0xd0>
  9a:	48 63 c9             	movsxd rcx,ecx
  9d:	44 8b 04 8e          	mov    r8d,DWORD PTR [rsi+rcx*4]
  a1:	44 01 04 8f          	add    DWORD PTR [rdi+rcx*4],r8d
  a5:	8d 48 05             	lea    ecx,[rax+0x5]
  a8:	39 ca                	cmp    edx,ecx
  aa:	76 24                	jbe    d0 <foo+0xd0>
  ac:	48 63 c9             	movsxd rcx,ecx
  af:	44 8b 04 8e          	mov    r8d,DWORD PTR [rsi+rcx*4]
  b3:	83 c0 06             	add    eax,0x6
  b6:	44 01 04 8f          	add    DWORD PTR [rdi+rcx*4],r8d
  ba:	39 c2                	cmp    edx,eax
  bc:	76 12                	jbe    d0 <foo+0xd0>
  be:	48 98                	cdqe   
  c0:	8b 14 86             	mov    edx,DWORD PTR [rsi+rax*4]
  c3:	01 14 87             	add    DWORD PTR [rdi+rax*4],edx
  c6:	c5 f8 77             	vzeroupper 
  c9:	c3                   	ret    
  ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  d0:	c5 f8 77             	vzeroupper 
  d3:	c3                   	ret    
  d4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  d8:	89 c2                	mov    edx,eax
  da:	31 c0                	xor    eax,eax
  dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  e0:	8b 0c 86             	mov    ecx,DWORD PTR [rsi+rax*4]
  e3:	01 0c 87             	add    DWORD PTR [rdi+rax*4],ecx
  e6:	48 89 c1             	mov    rcx,rax
  e9:	48 ff c0             	inc    rax
  ec:	48 39 d1             	cmp    rcx,rdx
  ef:	75 ef                	jne    e0 <foo+0xe0>
  f1:	c3                   	ret    
