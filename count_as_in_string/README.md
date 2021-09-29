# Counting A's in a string

An assembly function to count the number of 'a' characters that appear in a passed string.

 - [main.c on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_c&code=%23include%3Cstdio.h%3E%0D%0A%0D%0Aextern%20long%20count_a%28const%20char%2A%29%3B%0D%0A%0D%0Aint%20main%28%29%20%7B%0D%0A%20%20const%20char%2A%20s%20%3D%20%22aha%20this%20is%20a%20great%20string%22%3B%0D%0A%20%20printf%28%22assembly%20found%20%25ld%20a%27s%20in%20%5C%22%25s%5C%22%5Cn%22%2C%20count_a%28s%29%2C%20s%29%3B%0D%0A%20%20return%200%3B%0D%0A%7D&lang=C&mach=skylake64&mode=main&input=&linkwith=example_asm&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [count_a.asm on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_asm&code=section%20.text%0D%0Aglobal%20count_a%0D%0A%0D%0Acount_a%3A%0D%0A%20%20mov%20rax%2C%200%0D%0A%20%20start%3A%0D%0A%20%20%20%20mov%20cl%2C%20BYTE%5Brdi%5D%0D%0A%20%20%20%20cmp%20cl%2C%20%27a%27%0D%0A%20%20%20%20jne%20skip_add%0D%0A%20%20%20%20add%20rax%2C%201%0D%0A%20%20skip_add%3A%0D%0A%20%20%20%20add%20rdi%2C%201%0D%0A%20%20%20%20cmp%20cl%2C%200%0D%0A%20%20%20%20jne%20start%0D%0A%20%20ret&lang=Assembly-NASM&mach=skylake64&mode=main&input=&linkwith=example_c&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)

Note: you must click and run both for them to work (they need to link together).
