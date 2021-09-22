section .text
global foo
extern bar

foo:
  call bar
  ret
