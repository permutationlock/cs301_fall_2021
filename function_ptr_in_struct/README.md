# Function point in struct

Here we use a function pointer to give a struct something resebling a member function.

 - [main.c on Netrun](https://lawlor.cs.uaf.edu/netrun/run?name=example_c&code=%23include%3Cstdio.h%3E%0D%0A%0D%0Atypedef%20void%20%28%2Adisconnect_t%29%28void%29%3B%0D%0A%0D%0Astruct%20voip_room%20%7B%0D%0A%20%20long%20id%3B%0D%0A%20%20long%20participants%3B%0D%0A%20%20disconnect_t%20disconnect%3B%0D%0A%7D%3B%0D%0A%0D%0Avoid%20default_disconnect%28%29%20%7B%0D%0A%20%20puts%28%22disconnected%22%29%3B%0D%0A%7D%0D%0A%0D%0Aint%20main%28%29%20%7B%0D%0A%20%20struct%20voip_room%20room%3B%0D%0A%20%20room.disconnect%20%3D%20default_disconnect%3B%0D%0A%20%20room.disconnect%28%29%3B%0D%0A%20%20return%200%3B%0D%0A%7D&lang=C&mach=skylake64&mode=main&input=&linkwith=&foo_ret=long&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
