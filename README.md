# CS301 Fall 2021

Examples for the fall 2021 CS301 class at UAF.

## Requirements

All of the examples require an x86_64 machine running a Linux distro with
[gcc](https://gcc.gnu.org) and [nasm](https://nasm.us) installed.

## Vagrant VM

A [Vagrant](https://vagrantup.com) box
[avenbross/cs301](https://app.vagrantup.com/avenbross/boxes/cs301)
is available with [Alpine Linux](https://alpinelinux.org),
all of these examples in this repo, and the packages required
to run them.

To set up a VM this way you need to install
[VirtualBox](https://virtualbox.org) and
[Vagrant](https://vagrantup.com) and then run
the following commands (in PowerShell on Windows, terminal on Linux/OSX):

```console
vagrant init avenbross/cs301
vagrant up
```

To log in and start using the machine run:

```console
ssh -p <port> vagrant@localhost
```

Enter the password "cs301" when prompted. The port that the VM is running
on is shown during the startup process (it will be something like 2200 or 2222). If you missed it, you can find it by running:

```console
vagrant ssh-config
```
