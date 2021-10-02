gcc -g -c main.c
gcc -g -c foo.c
objdump -drwC -Mintel -S foo.o > foo.asm
objdump -drwC -Mintel -S main.o > main.asm
readelf -x .rodata main.o > main.rodata
gcc -no-pie -o run foo.o main.o
