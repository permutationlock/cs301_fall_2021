
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
#include<stdio.h>

extern long foo();

int main() {
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
  printf("assembly returned: %ld\n", foo());
   4:	b8 00 00 00 00       	mov    eax,0x0
   9:	e8 00 00 00 00       	call   e <main+0xe>	a: R_X86_64_PLT32	foo-0x4
   e:	48 89 c6             	mov    rsi,rax
  11:	48 8d 3d 00 00 00 00 	lea    rdi,[rip+0x0]        # 18 <main+0x18>	14: R_X86_64_PC32	.rodata-0x4
  18:	b8 00 00 00 00       	mov    eax,0x0
  1d:	e8 00 00 00 00       	call   22 <main+0x22>	1e: R_X86_64_PLT32	printf-0x4
  return 0;
  22:	b8 00 00 00 00       	mov    eax,0x0
}
  27:	5d                   	pop    rbp
  28:	c3                   	ret    
