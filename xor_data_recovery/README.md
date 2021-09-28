# XOR data recovery

The XOR operation ('^' in C/C++) allows for a method of backing up **n** blocks
of data with one backup block. This backup block can then be used to retrieve
a single missing block of data, so long as the other blocks remain in place.
This is similar to how
[RAID 4,5](https://en.wikipedia.org/wiki/Standard_RAID_levels#RAID_4) are
implemented.

 - [main.c on Netrun]()
