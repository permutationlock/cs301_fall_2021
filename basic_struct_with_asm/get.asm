section .text
global get_x
global get_y

get_x:
  mov eax, DWORD[rdi]
  ret

get_y:
  mov eax, DWORD[rdi+4]
  ret
