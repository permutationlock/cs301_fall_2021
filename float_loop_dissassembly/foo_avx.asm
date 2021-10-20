
foo.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <foo>:
   0:	c5 fc 28 25 00 00 00 00 	vmovaps ymm4,YMMWORD PTR [rip+0x0]        # 8 <foo+0x8>	4: R_X86_64_PC32	.LC0-0x4
   8:	c5 fc 28 1d 00 00 00 00 	vmovaps ymm3,YMMWORD PTR [rip+0x0]        # 10 <foo+0x10>	c: R_X86_64_PC32	.LC1-0x4
  10:	c5 fc 28 15 00 00 00 00 	vmovaps ymm2,YMMWORD PTR [rip+0x0]        # 18 <foo+0x18>	14: R_X86_64_PC32	.LC2-0x4
  18:	31 c0                	xor    eax,eax
  1a:	48 8d 35 00 00 00 00 	lea    rsi,[rip+0x0]        # 21 <foo+0x21>	1d: R_X86_64_PC32	z-0x4
  21:	48 8d 0d 00 00 00 00 	lea    rcx,[rip+0x0]        # 28 <foo+0x28>	24: R_X86_64_PC32	y-0x4
  28:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 2f <foo+0x2f>	2b: R_X86_64_PC32	height-0x4
  2f:	90                   	nop
  30:	c5 dc 59 04 06       	vmulps ymm0,ymm4,YMMWORD PTR [rsi+rax*1]
  35:	c5 ec 59 0c 01       	vmulps ymm1,ymm2,YMMWORD PTR [rcx+rax*1]
  3a:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  3e:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  42:	c5 fc 11 04 02       	vmovups YMMWORD PTR [rdx+rax*1],ymm0
  47:	48 83 c0 20          	add    rax,0x20
  4b:	48 3d 00 10 00 00    	cmp    rax,0x1000
  51:	75 dd                	jne    30 <foo+0x30>
  53:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 5a <foo+0x5a>	56: R_X86_64_PC32	height-0x4
  5a:	c5 f8 77             	vzeroupper 
  5d:	c3                   	ret    
