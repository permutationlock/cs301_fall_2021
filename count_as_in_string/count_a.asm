section .text
global count_a

count_a:
  mov rax, 0
  start:
    mov cl, BYTE[rdi]
    cmp cl, 'a'
    jne skip_add
    add rax, 1
  skip_add:
    add rdi, 1
    cmp cl, 0
    jne start
  ret
