# Dissassembling C in Linux with objdump and readelf

Here is an example of how to create a nice dissassembly of a C program
using `objdump`. We also use `readelf` to grab the data section of the
compiled object file.

In this example the dissassembly of `main.c` is found in `main.asm`.
The `main.c` program stores a format string for `printf`
in static data which is found in `main.rodata`. The dissassembly of
`foo.c` is, similarly, found in `foo.asm`.
