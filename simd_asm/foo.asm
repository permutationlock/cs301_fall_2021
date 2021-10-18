section .text
global foo

foo:
  movups xmm0, [my_floats]
  movups xmm1, [my_floats+16]
  addps xmm0, xmm1
  movups [my_floats], xmm0
  mov rax, my_floats
  ret

section .data
my_floats:
  dd 1.0, 2.0, 3.0, 4.0
  times 4 dd 2.0
