gcc -c main.c
nasm -f elf64 get_address.asm
gcc -no-pie -o run get_address.o main.o
