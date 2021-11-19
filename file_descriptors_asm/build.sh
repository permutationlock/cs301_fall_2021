gcc -c read_file.c
nasm -f elf64 read_file_asm.asm
gcc -no-pie -o read_file read_file_asm.o read_file.o

gcc -c read_write_std.c
nasm -f elf64 read_write_std_asm.asm
gcc -no-pie -o read_write_std read_write_std_asm.o read_write_std.o
