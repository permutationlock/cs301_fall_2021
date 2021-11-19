section .text
global foo

foo:
  push rbx

  ; call open("test.txt", 0)
  mov rax, 2  ; system call #
  mov rdi, my_file
  mov rsi, 0
  syscall

  mov rbx, rax  ; store fd in rbx

  ; call read(0, my_buffer, 10) 
  mov rax, 0  ; system call #
  mov rdi, rbx  ; file descriptor of stdin
  mov rsi, my_buffer
  mov rdx, 10
  syscall

  ; call write(1, my_buffer, 10)
  mov rax, 1  ; system call #
  mov rdi, 1  ; file descriptor of stdout
  mov rsi, my_buffer
  mov rdx, 10
  syscall

  ; call close(rbx) 
  mov rax, 3  ; system call #
  mov rdi, rbx  ; file descriptor of our file
  syscall

  pop rbx
  ret

my_file:
  db `/home/vagrant/cs301_fall_2021/class_examples/test.txt`,0

section .data
my_buffer:
  times 10 db 0

 
