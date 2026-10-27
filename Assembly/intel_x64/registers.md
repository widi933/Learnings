# registers

rax -> return value, accumulator

## syscall arguments

- rdi -> 1st argument (arg0)
- rsi -> 2nd argument (arg1)
- rdx -> 3rd argument (arg2)
- r10 -> 4th argument (arg3)
- r8  -> 5th argument (arg4)
- r9  -> 6th argument (arg5)

## syscalls

(s. syscall.sh)

### syscall numbers

- 0 -> read
- 1 -> write
- 2 -> open
- 3 -> close
- 60 -> exit (exit code in rdi)
