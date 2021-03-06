# Optimizing robot vision height conversion

In this example we show several levels of optimization for a floating point
computation. For details on what the code is trying
to achieve see [the lecture notes](https://docs.google.com/document/d/e/2PACX-1vSAkksTkd3mericYRXYTNRvVSePm8JRmc01t1VVID--o86RnRIj30IIbct84D-RYZfeSG61PyeKPPbe/pub).

If we build with all constants as doubles and no optimization (gcc -O0),
the resulting dissassembly is in foo_single-float_bad-double-conversion.asm.

If we change constants to floats and build with no optimization (gcc -O0),
the resulting dissassembly is in foo_single-float.asm. Note that it uses
single float SSE instructions.

If we then build with highest optimization (gcc -O3),
the resulting dissassembly is in foo_simd.asm. Note that this code uses
the four-float-at-a-time simd instructions (movups, addps, ...).

Finally, if we build with native optimization (gcc -O3 -march=native) on
a processor that supports avx,
the resulting dissassembly is in foo_avx.asm. Note that this code uses
the eight-float-at-a-time avx registers (ymm0, ymm1, ...).
