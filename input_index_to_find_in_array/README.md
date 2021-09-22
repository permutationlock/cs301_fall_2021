# Input index to find in array

Here we read an int from the user and use as an index to lookup a value from an int array defined in x86 assembly.

 - [main.c on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_c&code=%23include%3Cstdio.h%3E%0D%0A%0D%0Aextern%20int%20foo%28int%29%3B%0D%0A%0D%0Aint%20main%28%29%20%7B%0D%0A%20%20printf%28%22please%20enter%20an%20index%20between%200%20and%207%3A%20%5Cn%22%29%3B%0D%0A%0D%0A%20%20int%20x%20%3D%200%3B%0D%0A%20%20scanf%28%22%25d%22%2C%20%26x%29%3B%0D%0A%0D%0A%20%20if%28x%20%3C%200%20%7C%7C%20x%20%3E%207%29%20%7B%0D%0A%20%20%20%20printf%28%22index%20out%20of%20bounds%20%3A%28%5Cn%22%29%3B%0D%0A%20%20%7D%20else%20%7B%0D%0A%20%20%20%20printf%28%22the%20int%20at%20index%20%25d%20is%3A%20%25d%5Cn%22%2C%20x%2C%20foo%28x%29%29%3B%0D%0A%20%20%7D%0D%0A%0D%0A%20%20return%200%3B%0D%0A%7D&lang=C&mach=skylake64&mode=main&input=&linkwith=example_asm&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [foo.asm on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_asm&code=section%20.text%0D%0Aglobal%20foo%0D%0A%0D%0Afoo%3A%0D%0A%20%20mov%20rax%2C%20%5Barray%2B4%2Ardi%5D%0D%0A%20%20ret%0D%0A%0D%0Asection%20.data%0D%0Aarray%3A%0D%0A%20%20dd%201%2C%201%2C%202%2C%203%2C%205%2C%208%2C%2013%2C%2021&lang=Assembly-NASM&mach=skylake64&mode=main&input=&linkwith=example_c&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)

Note: you must click and run both for them to work (they need to link together).
