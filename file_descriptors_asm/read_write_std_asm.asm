section .text
global foo

foo:
  ; call read(0, my_buffer, 10) 
  mov rax, 0  ; system call #
  mov rdi, 0  ; file descriptor of stdin
  mov rsi, my_buffer
  mov rdx, 10
  syscall

  ; in rax is the number of bytes read
  cmp BYTE [my_buffer + rax - 1], `\n`
  je skip_newline
  mov BYTE [my_buffer + rax], `\n`  ; write newline at end of input
skip_newline:

  ; call write(1, my_buffer, 10)
  mov rax, 1  ; system call #
  mov rdi, 1  ; file descriptor of stdout
  mov rsi, my_buffer
  mov rdx, 11
  syscall
  ret

my_string:
  db `hi\n`

section .data
my_buffer:
  times 11 db 0

 
