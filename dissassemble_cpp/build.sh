g++ -g -c main.cpp
objdump -drwC -Mintel -S main.o > main.asm
readelf -x .rodata main.o > main.rodata
g++ -no-pie -o run main.o
