gcc -c main.c
nasm -f elf64 count_a.asm
gcc -no-pie -o run count_a.o main.o
