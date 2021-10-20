gcc -g -c main.c
gcc -O0 -Wall -g -c foo.c
objdump -drwC -Mintel foo.o > foo.asm
gcc -no-pie -o run foo.o main.o
