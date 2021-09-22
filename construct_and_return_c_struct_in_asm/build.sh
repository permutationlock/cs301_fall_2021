gcc -c main.c
nasm -f elf64 construct.asm
gcc -no-pie -o run construct.o main.o
