= computing

== compiler

#image("images/compiler.png", width: 80%)

== neumannsche Architektur

#image("images/neumannsche_architektur.png", width: 80%)

== ram

Process memory addresses from *0x0000000000010000* (security reasons) to
*0x00007fffffffffff* (each address references one byte of memory -> 127
terabytes of memory -> virtual memory!!!)

== stack

Can be filled by *push* and emptied by *pop*. The stack grows downwards
(from high to low memory addresses).
The stack pointer is stored in the `rsp` register.
