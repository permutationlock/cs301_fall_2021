gcc -g -c main.c
gcc -O3 -march=native -g -c foo.c
objdump -drwC -Mintel foo.o > foo.asm
gcc -no-pie -o run foo.o main.o
