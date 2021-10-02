
foo.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <foo>:
#include<stdio.h>

long foo(long n) {
   0:	55                   	push   rbp
   1:	48 89 e5             	mov    rbp,rsp
   4:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  return 3 * n;
   8:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
   c:	48 89 d0             	mov    rax,rdx
   f:	48 01 c0             	add    rax,rax
  12:	48 01 d0             	add    rax,rdx
}
  15:	5d                   	pop    rbp
  16:	c3                   	ret    
