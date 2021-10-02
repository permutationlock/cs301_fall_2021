section .text
global add_floats

; takes two floats and adds them
add_floats:
  ; the first 8 floating point arguments go in xmm0-xmm7
  addss xmm0, xmm1
  ; xmm0 is the return register for floating point
  ret
