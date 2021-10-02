section .text
global compare_floats

; takes two floats f1, f2 and returns:
;   1 if f1 < f1
;   0 otherwise
compare_floats:
  ; the first 8 floating point arguments go in xmm0-xmm7
  ucomiss xmm0, xmm1
  ; floating point compares use the unsigned flags
  ; -> thus you need to use ja, jb instead of jg, jl
  ja return0
  mov rax, 1
  ret
return0:
  mov rax, 0
  ret
