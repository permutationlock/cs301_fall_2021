
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
#include<cstdio>

float foo();

int main() {
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
  printf("assembly returned: %f\n", 4.23);
   4:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # b <main+0xb>	7: R_X86_64_PC32	.rodata+0x14
   b:	66 48 0f 6e c0       	movq   xmm0,rax
  10:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 17 <main+0x17>	13: R_X86_64_PC32	.rodata-0x4
  17:	b8 01 00 00 00       	mov    eax,0x1
  1c:	e8 00 00 00 00       	call   21 <main+0x21>	1d: R_X86_64_PLT32	printf-0x4
  return 0;
  21:	b8 00 00 00 00       	mov    eax,0x0
}
  26:	5d                   	pop    rbp
  27:	c3                   	ret    
