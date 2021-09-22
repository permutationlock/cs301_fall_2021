gcc -c main.c
nasm -f elf64 get.asm
gcc -no-pie -o run get.o main.o
