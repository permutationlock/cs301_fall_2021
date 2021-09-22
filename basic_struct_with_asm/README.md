# Basic struct with asm

Here is a basic example passing a C struct to an x86 Assembly function.

 - [main.c on Netrun][1]
 - [get.asm on Netrun][2]

Note: you must click and run both for them to work (they need to link together).

[1]: https://lawlor.cs.uaf.edu/netrun/run?name=example_c&code=%23include<stdio.h>%0D%0A%0D%0Astruct coord {%0D%0A%20 int x%3B%0D%0A%20 int y%3B%0D%0A}%3B%0D%0A%0D%0Aextern int get_x(struct coord*)%3B%0D%0Aextern int get_y(struct coord*)%3B%0D%0A%0D%0Aint main() {%0D%0A%20 struct coord s%3B%0D%0A%20 s.x %3D 131%3B%0D%0A%20 s.y %3D -3%3B%0D%0A%20 printf("the x value is%3A %25d\nthe y value is%3A %25d\n"%2C get_x(%26s)%2C get_y(%26s))%3B%0D%0A%20 return 0%3B%0D%0A}&lang=C&mach=skylake64&mode=main&input=&linkwith=example_asm&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings

[2]: https://lawlor.cs.uaf.edu/netrun/run?name=example_asm&code=section .text%0D%0Aglobal get_x%0D%0Aglobal get_y%0D%0A%0D%0Aget_x%3A%0D%0A%20 mov eax%2C DWORD[rdi]%0D%0A%20 ret%0D%0A%0D%0Aget_y%3A%0D%0A%20 mov eax%2C DWORD[rdi%2B4]%0D%0A%20 ret&lang=Assembly-NASM&mach=skylake64&mode=main&input=&linkwith=example_c&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings
