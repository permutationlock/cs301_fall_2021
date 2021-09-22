gcc -c main.c
nasm -f elf64 call_func.asm
gcc -no-pie -o run call_func.o main.o
