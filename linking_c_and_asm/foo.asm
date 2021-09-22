section .text
global foo

foo:
  mov rax, [my_long]
  ret

section .data
my_long:
  dq 1783
