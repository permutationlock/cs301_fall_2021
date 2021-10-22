
foo.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <foo>:
   0:	85 d2                	test   edx,edx
   2:	0f 84 9a 00 00 00    	je     a2 <foo+0xa2>
   8:	48 8d 4f 0f          	lea    rcx,[rdi+0xf]
   c:	8d 42 ff             	lea    eax,[rdx-0x1]
   f:	48 29 f1             	sub    rcx,rsi
  12:	48 83 f9 1e          	cmp    rcx,0x1e
  16:	76 70                	jbe    88 <foo+0x88>
  18:	83 f8 02             	cmp    eax,0x2
  1b:	76 6b                	jbe    88 <foo+0x88>
  1d:	89 d1                	mov    ecx,edx
  1f:	31 c0                	xor    eax,eax
  21:	c1 e9 02             	shr    ecx,0x2
  24:	48 c1 e1 04          	shl    rcx,0x4
  28:	0f 1f 84 00 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  30:	f3 0f 6f 04 07       	movdqu xmm0,XMMWORD PTR [rdi+rax*1]
  35:	f3 0f 6f 0c 06       	movdqu xmm1,XMMWORD PTR [rsi+rax*1]
  3a:	66 0f fe c1          	paddd  xmm0,xmm1
  3e:	0f 11 04 07          	movups XMMWORD PTR [rdi+rax*1],xmm0
  42:	48 83 c0 10          	add    rax,0x10
  46:	48 39 c8             	cmp    rax,rcx
  49:	75 e5                	jne    30 <foo+0x30>
  4b:	89 d0                	mov    eax,edx
  4d:	83 e0 fc             	and    eax,0xfffffffc
  50:	f6 c2 03             	test   dl,0x3
  53:	74 4d                	je     a2 <foo+0xa2>
  55:	48 63 c8             	movsxd rcx,eax
  58:	44 8b 04 8e          	mov    r8d,DWORD PTR [rsi+rcx*4]
  5c:	44 01 04 8f          	add    DWORD PTR [rdi+rcx*4],r8d
  60:	8d 48 01             	lea    ecx,[rax+0x1]
  63:	39 ca                	cmp    edx,ecx
  65:	76 3b                	jbe    a2 <foo+0xa2>
  67:	48 63 c9             	movsxd rcx,ecx
  6a:	83 c0 02             	add    eax,0x2
  6d:	44 8b 04 8e          	mov    r8d,DWORD PTR [rsi+rcx*4]
  71:	44 01 04 8f          	add    DWORD PTR [rdi+rcx*4],r8d
  75:	39 c2                	cmp    edx,eax
  77:	76 29                	jbe    a2 <foo+0xa2>
  79:	48 98                	cdqe   
  7b:	8b 14 86             	mov    edx,DWORD PTR [rsi+rax*4]
  7e:	01 14 87             	add    DWORD PTR [rdi+rax*4],edx
  81:	c3                   	ret    
  82:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  88:	89 c2                	mov    edx,eax
  8a:	31 c0                	xor    eax,eax
  8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  90:	8b 0c 86             	mov    ecx,DWORD PTR [rsi+rax*4]
  93:	01 0c 87             	add    DWORD PTR [rdi+rax*4],ecx
  96:	48 89 c1             	mov    rcx,rax
  99:	48 83 c0 01          	add    rax,0x1
  9d:	48 39 d1             	cmp    rcx,rdx
  a0:	75 ee                	jne    90 <foo+0x90>
  a2:	c3                   	ret    
