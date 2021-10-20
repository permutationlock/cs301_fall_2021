
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
  42:	eb 75                	jmp    b9 <foo+0xb9>
  44:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  47:	48 98                	cdqe   
  49:	48 8d 14 85 00 00 00 00 	lea    rdx,[rax*4+0x0]
  51:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 58 <foo+0x58>	54: R_X86_64_PC32	z-0x4
  58:	f3 0f 10 04 02       	movss  xmm0,DWORD PTR [rdx+rax*1]
  5d:	f3 0f 59 45 f8       	mulss  xmm0,DWORD PTR [rbp-0x8]
  62:	f3 0f 5a c8          	cvtss2sd xmm1,xmm0
  66:	f2 0f 10 05 00 00 00 00 	movsd  xmm0,QWORD PTR [rip+0x0]        # 6e <foo+0x6e>	6a: R_X86_64_PC32	.rodata+0x4
  6e:	f2 0f 5c c1          	subsd  xmm0,xmm1
  72:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  75:	48 98                	cdqe   
  77:	48 8d 14 85 00 00 00 00 	lea    rdx,[rax*4+0x0]
  7f:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 86 <foo+0x86>	82: R_X86_64_PC32	y-0x4
  86:	f3 0f 10 0c 02       	movss  xmm1,DWORD PTR [rdx+rax*1]
  8b:	f3 0f 59 4d fc       	mulss  xmm1,DWORD PTR [rbp-0x4]
  90:	f3 0f 5a c9          	cvtss2sd xmm1,xmm1
  94:	f2 0f 5c c1          	subsd  xmm0,xmm1
  98:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  9c:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
  9f:	48 98                	cdqe   
  a1:	48 8d 14 85 00 00 00 00 	lea    rdx,[rax*4+0x0]
  a9:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # b0 <foo+0xb0>	ac: R_X86_64_PC32	height-0x4
  b0:	f3 0f 11 04 02       	movss  DWORD PTR [rdx+rax*1],xmm0
  b5:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
  b9:	81 7d f0 ff 03 00 00 	cmp    DWORD PTR [rbp-0x10],0x3ff
  c0:	7e 82                	jle    44 <foo+0x44>
  c2:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # c9 <foo+0xc9>	c5: R_X86_64_PC32	height-0x4
  c9:	c9                   	leave  
  ca:	c3                   	ret    
