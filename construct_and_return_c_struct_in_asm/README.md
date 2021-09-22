# Construct and return struct in asm

Here is an example where we use malloc in assembly to make a new struct and initialize
its entries.

 - [main.c on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_c&code=%23include%3Cstdio.h%3E%0D%0A%0D%0Astruct%20coord%20%7B%0D%0A%20%20int%20x%3B%0D%0A%20%20int%20y%3B%0D%0A%7D%3B%0D%0A%0D%0Aextern%20int%20get_x%28struct%20coord%2A%29%3B%0D%0Aextern%20int%20get_y%28struct%20coord%2A%29%3B%0D%0A%0D%0Aint%20main%28%29%20%7B%0D%0A%20%20struct%20coord%20s%3B%0D%0A%20%20s.x%20%3D%20131%3B%0D%0A%20%20s.y%20%3D%20-3%3B%0D%0A%20%20printf%28%22the%20x%20value%20is%3A%20%25d%5Cnthe%20y%20value%20is%3A%20%25d%5Cn%22%2C%20get_x%28%26s%29%2C%20get_y%28%26s%29%29%3B%0D%0A%20%20return%200%3B%0D%0A%7D&lang=C&mach=skylake64&mode=main&input=&linkwith=example_asm&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [construct.asm on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_asm&code=section%20.text%0D%0Aglobal%20get_x%0D%0Aglobal%20get_y%0D%0A%0D%0Aget_x%3A%0D%0A%20%20mov%20eax%2C%20DWORD%5Brdi%5D%0D%0A%20%20ret%0D%0A%0D%0Aget_y%3A%0D%0A%20%20mov%20eax%2C%20DWORD%5Brdi%2B4%5D%0D%0A%20%20ret&lang=Assembly-NASM&mach=skylake64&mode=main&input=&linkwith=example_c&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)

Note: you must click and run both for them to work (they need to link together).
