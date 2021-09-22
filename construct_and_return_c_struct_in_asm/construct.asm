section .text
global construct_coord
extern malloc

construct_coord:
  push rdi
  push rsi
  mov rdi, 8
  call malloc
  pop rsi
  pop rdi

  mov DWORD[rax], edi
  mov DWORD[rax+4], esi
  ret
