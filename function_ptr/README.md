# Function pointer

Here is an example of passing a c function pointer to x86 assembly.

 - [main.c on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_c&code=%23include%3Cstdio.h%3E%0D%0A%0D%0Aextern%20long%20call_func%28long%28%2A%29%28void%29%29%3B%0D%0A%0D%0Along%20bar%28%29%20%7B%0D%0A%20%20return%20189231%3B%0D%0A%7D%0D%0A%0D%0Aint%20main%28%29%20%7B%0D%0A%20%20printf%28%22assembly%20returned%3A%20%25ld%5Cn%22%2C%20call_func%28bar%29%29%3B%0D%0A%20%20return%200%3B%0D%0A%7D&lang=C&mach=skylake64&mode=main&input=&linkwith=example_asm&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [call_func.asm on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_asm&code=section%20.text%0D%0Aglobal%20call_func%0D%0A%0D%0Acall_func%3A%0D%0A%20%20call%20rdi%0D%0A%20%20ret&lang=Assembly-NASM&mach=skylake64&mode=main&input=&linkwith=example_c&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)

Note: you must click and run both for them to work (they need to link together).
