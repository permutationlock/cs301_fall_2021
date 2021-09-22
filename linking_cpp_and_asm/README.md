# Linking C++ and Assembly

Here is a basic example calling an x86 Assembly function from C++.

 - [main.cpp on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_cpp&code=%23include%3Ccstdio%3E%0D%0A%0D%0Aextern%20%22C%22%20long%20foo%28%29%3B%0D%0A%0D%0Aint%20main%28%29%20%7B%0D%0A%20%20printf%28%22assembly%20returned%3A%20%25ld%5Cn%22%2C%20foo%28%29%29%3B%0D%0A%20%20return%200%3B%0D%0A%7D&lang=C%2B%2B0x&mach=skylake64&mode=main&input=&linkwith=example_asm&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [foo.asm on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_asm&code=section%20.text%0D%0Aglobal%20foo%0D%0A%0D%0Afoo%3A%0D%0A%20%20mov%20rax%2C%20%5Bmy_long%5D%0D%0A%20%20ret%0D%0A%0D%0Asection%20.data%0D%0Amy_long%3A%0D%0A%20%20dq%201783&lang=Assembly-NASM&mach=skylake64&mode=main&input=&linkwith=example_cpp&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)

Note: you must click and run both for them to work (they need to link together).
