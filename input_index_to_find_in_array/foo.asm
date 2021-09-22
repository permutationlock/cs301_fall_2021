section .text
global foo

foo:
  mov rax, [array+4*rdi]
  ret

section .data
array:
  dd 1, 1, 2, 3, 5, 8, 13, 21
