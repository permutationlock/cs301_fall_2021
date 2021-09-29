# Load effective address in assembly

Memory lookups in assembly let us do fancy calculations like `mov rax, [rcx + 8 * rdi]` all in
one instruction and look up the address in memory. But sometimes we just want to get the
address, not do the memory lookup. Without `lea` we would need to use `mov`, `mul`, and `add`,
three instructions, just to get the same address we were looking up. But with load effective
address we write `lea rax, [rcx + 8 * rdi]`.

 - [main.c on Netrun]()
 - [get_address.asm on Netrun]()

Note: you must click and run both for them to work (they need to link together).
