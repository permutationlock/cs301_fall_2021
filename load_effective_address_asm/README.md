# Load effective address in assembly

Memory lookups in assembly let us do fancy calculations like `mov rax, [rcx + 8 * rdi]` all in
one instruction and look up the address in memory. But sometimes we just want to get the
address, not do the memory lookup. Without `lea` we would need to use `mov`, `mul`, and `add`,
three instructions, just to get the same address we were looking up. But with load effective
address we write `lea rax, [rcx + 8 * rdi]`.

 - [main.c on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_c&code=%23include%3Cstdio.h%3E%0D%0A%0D%0Aextern%20long%2A%20get_address_of_power%28long%29%3B%0D%0A%0D%0Aint%20main%28%29%20%7B%0D%0A%20%20long%20index%20%3D%203%3B%0D%0A%20%20long%2A%20address%20%3D%20get_address_of_power%28index%29%3B%0D%0A%20%20long%20value%20%3D%20%2Aaddress%3B%0D%0A%20%20printf%28%22the%20address%20of%20element%20%25ld%20is%20%25p%2C%20its%20value%20is%20%25ld%5Cn%22%2C%20index%2C%20address%2C%20value%29%3B%0D%0A%20%20return%200%3B%0D%0A%7D&lang=C&mach=skylake64&mode=main&input=&linkwith=example_asm&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [get_address.asm on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_asm&code=section%20.text%0D%0Aglobal%20get_address_of_power%0D%0A%0D%0A%3B%20returns%20a%20pointer%20to%20the%20given%20index%20in%20our%20array%0D%0Aget_address_of_power%3A%0D%0A%20%20%3B%20the%20lea%20instruction%20lets%20us%20compute%20an%20address%20in%20one%20%28otherwise%20we%20would%20need%20imul%20%2B%20add%29%0D%0A%20%20lea%20rax%2C%20%5Bpowers_of_two%20%2B%208%20%2A%20rdi%5D%0D%0A%20%20ret%0D%0A%0D%0Asection%20.data%0D%0Apowers_of_two%3A%0D%0A%20%20dq%201%2C%202%2C%204%2C%208%2C%2016%2C%2032%2C%2064%2C%20128&lang=Assembly-NASM&mach=skylake64&mode=main&input=&linkwith=example_c&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)

Note: you must click and run both for them to work (they need to link together).
