# commands

```assembly
mov rax, 60         ; move the value 60 into the rax register
mov rdi, 0          ; move the value 0 into the rdi register 
                    ; (for example as the exit code)
syscall             ; make the syscall
```

## build

for normal build, you can use the following commands:

```bash
as -o main.o main.s
ld -o main main.o
```

to build a library, you can use the following commands:

```bash
as -o lib.o lib.s
ld -o lib.so lib.o -shared
```
