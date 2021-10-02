gcc -c main.c
nasm -f elf64 ret_float.asm
nasm -f elf64 add_floats.asm
nasm -f elf64 compare_floats.asm
gcc -no-pie -o run compare_floats.o add_floats.o ret_float.o main.o
