
foo.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <foo>:
   0:	0f 28 25 00 00 00 00 	movaps xmm4,XMMWORD PTR [rip+0x0]        # 7 <foo+0x7>	3: R_X86_64_PC32	.LC0-0x4
   7:	0f 28 1d 00 00 00 00 	movaps xmm3,XMMWORD PTR [rip+0x0]        # e <foo+0xe>	a: R_X86_64_PC32	.LC1-0x4
   e:	31 c0                	xor    eax,eax
  10:	48 8d 35 00 00 00 00 	lea    rsi,[rip+0x0]        # 17 <foo+0x17>	13: R_X86_64_PC32	height-0x4
  17:	0f 28 15 00 00 00 00 	movaps xmm2,XMMWORD PTR [rip+0x0]        # 1e <foo+0x1e>	1a: R_X86_64_PC32	.LC2-0x4
  1e:	48 8d 0d 00 00 00 00 	lea    rcx,[rip+0x0]        # 25 <foo+0x25>	21: R_X86_64_PC32	z-0x4
  25:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 2c <foo+0x2c>	28: R_X86_64_PC32	y-0x4
  2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  30:	0f 28 04 01          	movaps xmm0,XMMWORD PTR [rcx+rax*1]
  34:	0f 28 0c 02          	movaps xmm1,XMMWORD PTR [rdx+rax*1]
  38:	0f 28 eb             	movaps xmm5,xmm3
  3b:	0f 59 c4             	mulps  xmm0,xmm4
  3e:	0f 59 ca             	mulps  xmm1,xmm2
  41:	0f 5c e8             	subps  xmm5,xmm0
  44:	0f 28 c5             	movaps xmm0,xmm5
  47:	0f 5c c1             	subps  xmm0,xmm1
  4a:	0f 29 04 06          	movaps XMMWORD PTR [rsi+rax*1],xmm0
  4e:	48 83 c0 10          	add    rax,0x10
  52:	48 3d 00 10 00 00    	cmp    rax,0x1000
  58:	75 d6                	jne    30 <foo+0x30>
  5a:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 61 <foo+0x61>	5d: R_X86_64_PC32	height-0x4
  61:	c3                   	ret    
