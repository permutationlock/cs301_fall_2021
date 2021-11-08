
foo.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <foo>:
   0:	85 d2                	test   edx,edx
   2:	74 44                	je     48 <foo+0x48>
   4:	8d 42 ff             	lea    eax,[rdx-0x1]
   7:	41 54                	push   r12
   9:	4c 8d 64 c6 08       	lea    r12,[rsi+rax*8+0x8]
   e:	55                   	push   rbp
   f:	48 89 fd             	mov    rbp,rdi
  12:	53                   	push   rbx
  13:	48 89 f3             	mov    rbx,rsi
  16:	66 2e 0f 1f 84 00 00 00 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  20:	f2 0f 10 03          	movsd  xmm0,QWORD PTR [rbx]
  24:	48 83 c3 08          	add    rbx,0x8
  28:	48 83 c5 08          	add    rbp,0x8
  2c:	e8 00 00 00 00       	call   31 <foo+0x31>	2d: R_X86_64_PLT32	exp-0x4
  31:	f2 0f 58 45 f8       	addsd  xmm0,QWORD PTR [rbp-0x8]
  36:	f2 0f 11 45 f8       	movsd  QWORD PTR [rbp-0x8],xmm0
  3b:	4c 39 e3             	cmp    rbx,r12
  3e:	75 e0                	jne    20 <foo+0x20>
  40:	5b                   	pop    rbx
  41:	5d                   	pop    rbp
  42:	41 5c                	pop    r12
  44:	c3                   	ret    
  45:	0f 1f 00             	nop    DWORD PTR [rax]
  48:	c3                   	ret    
