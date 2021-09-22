# Construct and return struct in asm

Here is an example where we use malloc in assembly to make a new struct and initialize
its entries.

 - [main.c on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_c&code=%23include%3Cstdlib.h%3E%0D%0A%23include%3Cstdio.h%3E%0D%0A%0D%0Astruct%20coord%20%7B%0D%0A%20%20int%20x%3B%0D%0A%20%20int%20y%3B%0D%0A%7D%3B%0D%0A%0D%0Aextern%20struct%20coord%2A%20construct_coord%28int%2C%20int%29%3B%0D%0A%0D%0Aint%20main%28%29%20%7B%0D%0A%20%20struct%20coord%2A%20p%20%3D%20construct_coord%287%2C%203%29%3B%0D%0A%20%20printf%28%22the%20x%20value%20is%3A%20%25d%5Cnthe%20y%20value%20is%3A%20%25d%5Cn%22%2C%20p-%3Ex%2C%20p-%3Ey%29%3B%0D%0A%20%20free%28p%29%3B%0D%0A%20%20return%200%3B%0D%0A%7D&lang=C&mach=skylake64&mode=main&input=173&linkwith=example_asm&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [construct.asm on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_asm&code=section%20.text%0D%0Aglobal%20construct_coord%0D%0Aextern%20malloc%0D%0A%0D%0Aconstruct_coord%3A%0D%0A%20%20push%20rdi%0D%0A%20%20push%20rsi%0D%0A%20%20mov%20rdi%2C%208%0D%0A%20%20call%20malloc%0D%0A%20%20pop%20rdi%0D%0A%20%20pop%20rsi%0D%0A%0D%0A%20%20mov%20DWORD%5Brax%5D%2C%20edi%0D%0A%20%20mov%20DWORD%5Brax%2B4%5D%2C%20esi%0D%0A%20%20ret&lang=Assembly-NASM&mach=skylake64&mode=main&input=&linkwith=example_c&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)

Note: you must click and run both for them to work (they need to link together).
