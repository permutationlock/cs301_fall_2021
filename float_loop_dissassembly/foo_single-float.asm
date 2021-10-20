
foo.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <foo>:
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 83 ec 10          	sub    rsp,0x10
   8:	f3 0f 10 05 00 00 00 00 	movss  xmm0,DWORD PTR [rip+0x0]        # 10 <foo+0x10>	c: R_X86_64_PC32	.rodata-0x4
  10:	f3 0f 11 45 f4       	movss  DWORD PTR [rbp-0xc],xmm0
  15:	f3 0f 5a 45 f4       	cvtss2sd xmm0,DWORD PTR [rbp-0xc]
  1a:	e8 00 00 00 00       	call   1f <foo+0x1f>	1b: R_X86_64_PLT32	sin-0x4
  1f:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  23:	f3 0f 11 45 f8       	movss  DWORD PTR [rbp-0x8],xmm0
  28:	f3 0f 5a 45 f4       	cvtss2sd xmm0,DWORD PTR [rbp-0xc]
  2d:	e8 00 00 00 00       	call   32 <foo+0x32>	2e: R_X86_64_PLT32	cos-0x4
  32:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  36:	f3 0f 11 45 fc       	movss  DWORD PTR [rbp-0x4],xmm0
  3b:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  42:	eb 6c                	jmp    b0 <foo+0xb0>
  44:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  47:	48 98                	cdqe   
  49:	48 8d 14 85 00 00 00 00 	lea    rdx,[rax*4+0x0]
  51:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 58 <foo+0x58>	54: R_X86_64_PC32	z-0x4
  58:	f3 0f 10 04 02       	movss  xmm0,DWORD PTR [rdx+rax*1]
  5d:	0f 28 c8             	movaps xmm1,xmm0
  60:	f3 0f 59 4d f8       	mulss  xmm1,DWORD PTR [rbp-0x8]
  65:	f3 0f 10 05 00 00 00 00 	movss  xmm0,DWORD PTR [rip+0x0]        # 6d <foo+0x6d>	69: R_X86_64_PC32	.rodata
  6d:	f3 0f 5c c1          	subss  xmm0,xmm1
  71:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  74:	48 98                	cdqe   
  76:	48 8d 14 85 00 00 00 00 	lea    rdx,[rax*4+0x0]
  7e:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 85 <foo+0x85>	81: R_X86_64_PC32	y-0x4
  85:	f3 0f 10 0c 02       	movss  xmm1,DWORD PTR [rdx+rax*1]
  8a:	f3 0f 59 4d fc       	mulss  xmm1,DWORD PTR [rbp-0x4]
  8f:	f3 0f 5c c1          	subss  xmm0,xmm1
  93:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  96:	48 98                	cdqe   
  98:	48 8d 14 85 00 00 00 00 	lea    rdx,[rax*4+0x0]
  a0:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # a7 <foo+0xa7>	a3: R_X86_64_PC32	height-0x4
  a7:	f3 0f 11 04 02       	movss  DWORD PTR [rdx+rax*1],xmm0
  ac:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
  b0:	81 7d f0 ff 03 00 00 	cmp    DWORD PTR [rbp-0x10],0x3ff
  b7:	7e 8b                	jle    44 <foo+0x44>
  b9:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # c0 <foo+0xc0>	bc: R_X86_64_PC32	height-0x4
  c0:	c9                   	leave  
  c1:	c3                   	ret    
