# C compiler generating SIMD code for integer computations

Here is an example of how C code can generate SIMD and AVX instructions
for integer calculations just as it does for floats.

The dissassembly of
`foo.c` when compiled for SIMD (gcc -O3) is found in `foo_simd.asm`.

The dissassembly of
`foo.c` when compiled for AVX (gcc -O3 -march=native) is found in `foo_avx.asm`.
