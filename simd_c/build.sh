gcc -g -c main.c
gcc -O3 -g -c foo.c
objdump -drwC -Mintel foo.o > foo.asm
gcc -no-pie -lm -o run foo.o main.o
