# ARM 32bit Examples

Here are the ARM examples fromc class

 - [return 3](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=foo%3A%0D%0A%09%2F%2F%20can%27t%20mov%20constants%20whose%20significant%20bits%20won%27t%20fit%20in%208%20bits%0D%0A%09mov%20r3%2C%203%0D%0A%09bx%20lr&lang=Assembly&mach=ARM&mode=frag&input=&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [defining and calling functions](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=%2F%2F%20a%20simple%20function%20that%20returns%2013%0D%0Abar%3A%0D%0A%09mov%20r0%2C%2013%0D%0A%09bx%20lr%0D%0A%0D%0Afoo%3A%0D%0A%09%2F%2F%20we%20have%20to%20push%20the%20lr%20register%20to%20save%20the%20return%20address%0D%0A%09push%20%7Blr%7D%0D%0A%09%2F%2F%20bl%20is%20equivalent%20to%20call%20but%20puts%20return%20address%20in%20lr%20register%0D%0A%09bl%20bar%0D%0A%09pop%20%7Blr%7D%0D%0A%09%2F%2F%20bx%20lr%20jumps%20to%20the%20return%20address%0D%0A%09bx%20lr&lang=Assembly&mach=ARM&mode=file&input=&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [can't load large constants with mov](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=foo%3A%0D%0A%09%2F%2F%20can%27t%20mov%20constants%20whose%20significant%20bits%20won%27t%20fit%20in%208%20bits%0D%0A%09mov%20r3%2C%201023%0D%0A%09bx%20lr&lang=Assembly&mach=ARM&mode=frag&input=&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [using adr and ldr to load large constant](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=%2F%2F%20loading%20large%20constant%20from%20nearby%20memory%0D%0Afoo%3A%0D%0A%09%2F%2F%20load%20local%20address%20by%20offset%20%28adds%20to%20program%20counter%20in%20dissassembly%29%0D%0A%09adr%20r2%2C%20my_int%0D%0A%09%2F%2F%20load%20from%20memory%20to%20register%0D%0A%09ldr%20r0%2C%20%5Br2%5D%0D%0A%09bx%20lr%0D%0A%0D%0Amy_int%3A%0D%0A%09.4byte%201023&lang=Assembly&mach=ARM&mode=file&input=&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Disassemble&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [using ldr with = to load large constants](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=%2F%2F%20loading%20large%20constant%20from%20nearby%20memory%0D%0Afoo%3A%0D%0A%09%2F%2F%20shortcut%20to%20loading%20large%20constant%20into%20register%0D%0A%09%2F%2F%20-%3E%20essentially%20the%20compiler%20puts%201023%20in%20nearby%20memory%20and%20loads%20it%20for%20us%0D%0A%09ldr%20r0%2C%20%3D1023%0D%0A%09bx%20lr&lang=Assembly&mach=ARM&mode=frag&input=&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [adr can only load addresses near code](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=%2F%2F%20working%20with%20distant%20memory%20%28modifiable%20memory%20is%20in%20different%20sector%29%0D%0Afoo%3A%0D%0A%09%2F%2F%20we%20can%27t%20use%20adr%20to%20load%20distant%20memory%0D%0A%09adr%20r2%2C%20my_int%0D%0A%09ldr%20r0%2C%20%5Br2%5D%0D%0A%09bx%20lr%0D%0A%0D%0A.data%0D%0Amy_int%3A%0D%0A%09.4byte%201023&lang=Assembly&mach=ARM&mode=frag&input=&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [use ldr with = to load far arbitrary memory addresses](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=%2F%2F%20working%20with%20distant%20memory%20%28modifiable%20memory%20is%20in%20different%20sector%29%0D%0Afoo%3A%0D%0A%09%2F%2F%20use%20load%20shortcut%20to%20load%20full%20address%20into%20register%0D%0A%09ldr%20r2%2C%20%3Dmy_int%0D%0A%09ldr%20r0%2C%20%5Br2%5D%0D%0A%09bx%20lr%0D%0A%0D%0A.data%0D%0Amy_int%3A%0D%0A%09.4byte%201023&lang=Assembly&mach=ARM&mode=frag&input=&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [use str to write into memeory](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=%2F%2F%20working%20with%20distant%20memory%20%28modifiable%20memory%20is%20in%20different%20sector%29%0D%0Afoo%3A%0D%0A%09ldr%20r2%2C%20%3Dmy_int%0D%0A%09mov%20r3%2C%203%0D%0A%09%2F%2F%20use%20str%20to%20write%20a%20register%20into%20memory%0D%0A%09str%20r3%2C%20%5Br2%5D%0D%0A%09ldr%20r0%2C%20%5Br2%5D%0D%0A%09bx%20lr%0D%0A%0D%0A.data%0D%0Amy_int%3A%0D%0A%09.4byte%201023&lang=Assembly&mach=ARM&mode=frag&input=&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [count the number of 'a' chars in a string](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=%2F%2F%20Suppose%20we%20want%20to%20look%20through%20a%20string%0D%0A%2F%2F%20and%20count%20number%20of%20%27a%27%20characters%0D%0Afoo%3A%0D%0A%09mov%20r0%2C%200%09%2F%2F%20count%20of%20%23%20of%20%27a%27s%0D%0A%09mov%20r1%2C%200%09%2F%2F%20index%20of%20string%20%28want%20to%20access%203rd%20character%29%0D%0A%09ldr%20r2%2C%20%3Dmy_string%0D%0A%09start%3A%0D%0A%09%09%2F%2F%20load%20one%20byte%20%28one%20character%29%20into%20our%20register%0D%0A%09%09ldrb%20r3%2C%20%5Br2%2Cr1%5D%09%2F%2F%20equivalent%20to%20mov%20r3%2C%20%5Br2%20%2B%20r1%5D%20in%20x86%0D%0A%09%09%0D%0A%09%09%2F%2F%20add%201%20to%20our%20%27a%27%20count%20if%20the%20character%20is%20an%20%27a%27%0D%0A%09%09cmp%20r3%2C%20%27a%27%0D%0A%09%09addeq%20r0%2C%201%0D%0A%09%09%0D%0A%09%09add%20r1%2C%201%0D%0A%09%09cmp%20r3%2C%200%0D%0A%09%09bne%20start%0D%0A%09bx%20lr%0D%0A%0D%0A.data%0D%0Amy_string%3A%0D%0A%09%2F%2F%20null%20character%20is%20automatically%20added%20with%20.asciz%20%28ASCI%20w%2F%20zero%20byte%29%0D%0A%09.asciz%20%22this%20is%20a%20nice%20stringasdfa%22&lang=Assembly&mach=ARM&mode=file&input=&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Disassemble&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [access elements of an int array](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=%2F%2F%20function%20takes%20an%20int%20that%20is%20the%20index%20of%0D%0A%2F%2F%20the%20element%20of%20our%20array%20to%20return%0D%0Afoo%3A%0D%0A%09%2F%2F%201st%20parameter%20in%20r0%20%28index%20of%20element%20to%20look%20up%29%0D%0A%09ldr%20r2%2C%20%3Dmy_array%0D%0A%09ldr%20r0%2C%20%5Br2%2C%20r0%2C%20lsl%202%5D%09%09%2F%2F%20equivalent%20x86%20style%3A%20mov%20r0%2C%20%5Br2%20%2B%204%20%2A%20r0%5D%0D%0A%09bx%20lr%0D%0A%0D%0A.data%0D%0Amy_array%3A%0D%0A%09.4byte%2010%2C%2011%2C%2012%2C%2013%2C%2014%2C%2015%0D%0A&lang=Assembly&mach=ARM&mode=file&input=5&check_input=Input&linkwith=&foo_ret=int&foo_arg0=int&orun=Run&orun=Disassemble&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [multiply floats](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=foo%3A%0D%0A%09adr%20r2%2C%20my_float%0D%0A%09vldr%20s0%2C%20%5Br2%5D%0D%0A%09vldr%20s1%2C%20%5Br2%2C%204%5D%0D%0A%09%0D%0A%09%2F%2F%20in%20x86%20we%20used%20vaddss%0D%0A%09vmul.f%20s0%2C%20s1%0D%0A%09bx%20lr%0D%0A%0D%0Amy_float%3A%0D%0A%09.float%201.7%2C%202.0&lang=Assembly&mach=ARM&mode=file&input=5&linkwith=&foo_ret=float&foo_arg0=void&orun=Run&orun=Disassemble&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [multiply doubles](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=foo%3A%0D%0A%09adr%20r2%2C%20my_double%0D%0A%09vldr%20d0%2C%20%5Br2%5D%0D%0A%09vldr%20d1%2C%20%5Br2%2C%208%5D%0D%0A%09%0D%0A%09%2F%2F%20multiply%20doublers%20%28in%20x86%20we%20use%20vmulsd%29%0D%0A%09vmul.d%20d0%2C%20d1%0D%0A%09%0D%0A%09bx%20lr%0D%0A%0D%0Amy_double%3A%0D%0A%09.double%201.5%2C%202.0&lang=Assembly&mach=ARM&mode=file&input=5&linkwith=&foo_ret=double&foo_arg0=void&orun=Run&orun=Disassemble&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [multiply two floats at a time with SIMD](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=foo%3A%0D%0A%09adr%20r2%2C%20my_float%0D%0A%09vldr%20d0%2C%20%5Br2%5D%0D%0A%09vldr%20d1%2C%20%5Br2%2C%208%5D%0D%0A%09%0D%0A%09%2F%2F%20this%20treats%20d0%2C%20d1%20each%20as%20arrays%20of%20two%20floats%20and%20multiplies%20them%0D%0A%09vmul.f%20d0%2C%20d1%0D%0A%09%0D%0A%09%2F%2F%20the%20value%20in%20s0%20now%20is%20%201.7%20%2A%202.0%20%28we%20multiplied%20first%20element%20of%20each%20array%29%0D%0A%09bx%20lr%0D%0A%0D%0Amy_float%3A%0D%0A%09.float%201.7%2C%202.3%0D%0A%09.float%202.0%2C%202.0&lang=Assembly&mach=ARM&mode=file&input=5&linkwith=&foo_ret=float&foo_arg0=void&orun=Run&orun=Disassemble&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [multiply four ints at a time with SIMD](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=foo%3A%0D%0A%09ldr%20r2%2C%20%3Dmy_ints%0D%0A%09%2F%2F%20load%20our%20q0%20register%20with%20first%20array%20of%20ints%0D%0A%09vldr%20d0%2C%20%5Br2%5D%0D%0A%09vldr%20d1%2C%20%5Br2%2C%208%5D%0D%0A%0D%0A%09%2F%2F%20load%20our%20q1%20register%20with%20array%20of%20int%202%27s%0D%0A%09vldr%20d2%2C%20%5Br2%2C%2016%5D%0D%0A%09vldr%20d3%2C%20%5Br2%2C%2024%5D%0D%0A%09%0D%0A%09%2F%2F%20multiply%20the%20entries%20of%20the%20first%20array%20by%20entries%20of%20second%20array%0D%0A%09vmul.u32%20q0%2C%20q1%0D%0A%09%0D%0A%09%2F%2F%20store%20our%20q0%20register%20back%20into%20the%20array%20in%20memory%0D%0A%09vstr%20d0%2C%20%5Br2%5D%0D%0A%09vstr%20d1%2C%20%5Br2%2C%208%5D%0D%0A%09%0D%0A%09%2F%2F%20grab%20the%20third%20element%20of%20the%20array%20to%20return%0D%0A%09ldr%20r0%2C%20%5Br2%2C8%5D%0D%0A%09bx%20lr%0D%0A%0D%0A.data%0D%0Amy_ints%3A%0D%0A%09.4byte%201%2C%202%2C%203%2C%204%0D%0A%09.4byte%202%2C%202%2C%202%2C%202&lang=Assembly&mach=ARM&mode=file&input=5&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Disassemble&orun=Grade&ocompile=Optimize&ocompile=Warnings)
 - [allocating memory and reading characters](https://lawlor.cs.uaf.edu/netrun/run?name=Testing&code=%2F%2F%20read%20characters%20from%20stdin%20and%20store%20in%20memory%20until%20we%20hit%20%5Cn%20or%20run%20out%20of%20space%0D%0A%2F%2F%20print%20the%20the%20read%20characters%20as%20a%20string%0D%0Afoo%3A%0D%0A%09push%20%7Br4%2Clr%7D%0D%0A%09mov%20r0%2C%2032%0D%0A%09bl%20malloc%0D%0A%09%2F%2F%20now%20r0%20should%20contain%20a%20ptr%20to%20the%20allocated%20memory%0D%0A%09mov%20r4%2C%20r0%0D%0A%09%0D%0A%09mov%20r3%2C%200%0D%0A%09start%3A%0D%0A%09%09%2F%2F%20read%20a%20character%20from%20stdin%0D%0A%09%09push%20%7Br3%7D%0D%0A%09%09bl%20getchar%0D%0A%09%09pop%20%7Br3%7D%0D%0A%09%09%0D%0A%09%09%2F%2F%20write%20current%20char%20into%20string%20memory%0D%0A%09%09strb%20r0%2C%20%5Br4%2C%20r3%5D%0D%0A%09%09%0D%0A%09%09%2F%2F%20check%20for%20end%20of%20line%0D%0A%09%09cmp%20r0%2C%20%27%5Cn%27%0D%0A%09%09beq%20end%0D%0A%09%09%0D%0A%09%09%2F%2F%20check%20for%20out%20of%20space%0D%0A%09%09add%20r3%2C%201%0D%0A%09%09cmp%20r3%2C%2031%0D%0A%09%09bl%20start%0D%0A%09end%3A%0D%0A%09%0D%0A%09%2F%2F%20write%20null%20character%20at%20end%20of%20string%0D%0A%09mov%20r0%2C%200%0D%0A%09strb%20r0%2C%20%5Br4%2C%20r3%5D%0D%0A%09%0D%0A%09mov%20r0%2C%20r4%0D%0A%09bl%20puts%0D%0A%0D%0A%09mov%20r0%2C%20r4%0D%0A%09bl%20free%0D%0A%09pop%20%7Br4%2C%20lr%7D%0D%0A%09bx%20lr&lang=Assembly&mach=ARM&mode=file&input=asdfas%0D%0Aasdfa%0D%0A&check_input=Input&linkwith=&foo_ret=int&foo_arg0=void&orun=Run&orun=Grade&ocompile=Optimize&ocompile=Warnings)