# Buffer overflow to edit data

An innocent looking implementation of a bank interface, with a glaring
security flaw: when a client updates their pin number it can change their
bank balance!

 - [main.c on Netrun]()
