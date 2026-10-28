# computing

## compiler

![source to binary (executable)](images/compiler.png)

## neumannsche Architektur

![neumannsche Architektur](images/neumannsche_architektur.png)

## ram

process memory adresses from **0x0000000000010000** (security reasons) to
**0x00007fffffffffff** (each adress references one byte of memory -> 127
terabytes of memory -> virtual memory!!!)

## stack

can be filled by **push** and emptied by **pop**. The stack grows downwards
(from high to low memory adresses).
The stack pointer is stored in the **rsp** register.
