g++ -c main.cpp
nasm -f elf64 foo.asm
g++ -no-pie -o run foo.o main.o
