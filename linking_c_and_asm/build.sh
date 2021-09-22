gcc -c main.c
nasm -f elf64 foo.asm
gcc -no-pie -o run foo.o main.o
