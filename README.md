# CS301 Fall 2021

Examples for the fall 2021 CS301 class at UAF.

## Requirements

All of the examples require an x86_64 machine running a Linux distro with
[gcc](https://gcc.gnu.org) and [nasm](https://nasm.us) installed. However,
the readme file in each folder contains a link to run the code on
[Netrun](http://netrun.cs.uaf.edu/).

## Vagrant VM

A [Vagrant](https://vagrantup.com) box
[avenbross/cs301](https://app.vagrantup.com/avenbross/boxes/cs301)
is available with [Alpine Linux](https://alpinelinux.org),
all of these examples in this repo, and the packages required
to run them.

To set up a VM this way you need to install
[VirtualBox](https://virtualbox.org) and
[Vagrant](https://vagrantup.com) and then run
the following commands (in PowerShell on Windows, terminal on Linux/macOS):

```console
vagrant init avenbross/cs301
vagrant up
```

To log in and start using the machine run:

```console
ssh -p <port> vagrant@localhost
```

Enter the password "vagrant" when prompted. The port that the VM is running
on is shown during the startup process (it will be something like 2200 or 2222). If you missed it, you can find it by running:

```console
vagrant ssh-config
```

Once you are logged in to the server you need to know a little about Linux to get around. You can run the command `ls` to
list the files and subdirectories of the current directory. You can use `cd <directory name>` to change directory. For example,
when you first log in to the server running `ls` shows:

```console
alpine:~$ ls
cs301_fall_2021
```

Lets move into the `cs301_fall_2021` folder and see what is inside:

```console
alpine:~$ cd cs301_fall_2021
alpine:~/cs301_fall_2021$ ls
README.md                             function_ptr
array_of_function_ptrs                function_ptr_in_struct
basic_struct_with_asm                 input_index_to_find_in_array
call_c_function_from_asm              linking_c_and_asm
construct_and_return_c_struct_in_asm  linking_cpp_and_asm
count_as_in_string
```

Next, move into the `linking_c_and_asm` example folder and open the `main.c` file with
[nano](https://www.nano-editor.org/dist/latest/nano.html) text editor:

```console
alpine:~/cs301_fall_2021$ cd linking_c_and_asm
alpine:~/cs301_fall_2021/linking_c_and_asm$ nano main.c
```

Press CTRL-X to close the file (select no if asked to save changes). You 
can do the same thing to read `foo.asm` by executing `nano foo.asm`.

Having looked through the code, let's build and run the example:

```console
alpine:~/cs301_fall_2021/linking_c_and_asm$ ./build.sh
alpine:~/cs301_fall_2021/linking_c_and_asm$ ./run
assembly returned: 1783
```

Great, we compiled a C and assembly project and it ran! This created an executable
and a couple object files (.o files):

```console
alpine:~/cs301_fall_2021/linking_c_and_asm$ ls
README.md  build.sh   clean.sh   foo.asm    foo.o      main.c     main.o     run
```

To get rid of these just run the clean script:

```console
alpine:~/cs301_fall_2021/linking_c_and_asm$ ./clean.sh
alpine:~/cs301_fall_2021/linking_c_and_asm$ ls
README.md  build.sh   clean.sh   foo.asm    main.c
```

All the other examples can be built the same way (and you can copy a directory to start your own project). I would recommend not modifying the files in the `cs301_fall_2021` directory if you are not experienced with git. I will be updating the repo and if you modify the files, pulling updates will cause merge conflicts. Instead make copies of examples by running `cp -r directory_to_copy copy_name`.

If you are curious as to how each example is built and cleaned you can open those
script files with `nano` as well and simply read the list of commands they execute.

When you are done, you can close the ssh session by running the command `exit`. This will leave the machine running and you can ssh in later. If you instead want to shut the machine down (all your files will be saved, but you will have to re-run `vagrant up` to boot up the machine again) you can instead run `sudo poweroff`.

Some other things you might want to look at:

 - [cheat sheet on linux commands](https://www.guru99.com/linux-commands-cheat-sheet.html)
 - [nano text editor documentation](https://www.nano-editor.org/dist/latest/nano.html)
 - [vim text editor documentation (if you are brave enough to seek its power)](https://vimhelp.org/)
