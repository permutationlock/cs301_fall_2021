section .text
global ret_float

ret_float:
  ; movss copies a single precision (32 bit) float
  movss xmm0, [my_float]
  ; xmm0 is the return register for floating point
  ret

section .data
my_float:
  dd 3.1415
