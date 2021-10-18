section .text
global foo

foo:
  movups xmm0, [my_floats]
  cmpltps xmm0, [compare]    ; MASK a < compare
  vandps xmm1, xmm0, [THEN]  ; xmm1 = MASK & THEN
  vandnps xmm2, xmm0, [ELSE] ; xmm0 = ~MASK & ELSE
  vorps xmm0, xmm1, xmm2
  movups [my_floats], xmm0   ; my_floats = (MASK & THEN) | (~MASK) & ELSE
  mov rax, my_floats
  ret

section .data
align 16
my_floats:
  dd 1.0, 2.0, 3.0, 4.0
compare:
  times 4 dd 3.0
THEN:
  times 4 dd 1.0
ELSE:
  times 4 dd 5.0
