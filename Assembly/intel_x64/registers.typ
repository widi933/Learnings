= registers

#block(
  width: 100%,
  fill: rgb("#202124"),
  radius: 5pt,
  inset: 10pt,
)[
  #set text(font: "DejaVu Sans Mono")
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.4em,
    align: left,
    [#text(fill: rgb("#f1f1f1"))[`rax`]], [#text(fill: rgb("#f1f1f1"))[return value, accumulator]],
    [#text(fill: rgb("#f1f1f1"))[`rcx`]], [#text(fill: rgb("#f1f1f1"))[counter, loop control]],
    [#text(fill: rgb("#f1f1f1"))[`rdx`]], [#text(fill: rgb("#f1f1f1"))[data, I/O]],
    [#text(fill: rgb("#f1f1f1"))[`rbx`]], [#text(fill: rgb("#f1f1f1"))[base, pointer]],
    [#text(fill: rgb("#f1f1f1"))[`rsp`]], [#text(fill: rgb("#f1f1f1"))[stack pointer]],
    [#text(fill: rgb("#f1f1f1"))[`rbp`]], [#text(fill: rgb("#f1f1f1"))[base pointer, frame pointer]],
    [#text(fill: rgb("#f1f1f1"))[`rsi`]], [#text(fill: rgb("#f1f1f1"))[source index, pointer]],
    [#text(fill: rgb("#f1f1f1"))[`rdi`]], [#text(fill: rgb("#f1f1f1"))[destination index, pointer]],
    [#text(fill: rgb("#f1f1f1"))[`r8`]], [#text(fill: rgb("#f1f1f1"))[general purpose register]],
    [#text(fill: rgb("#f1f1f1"))[`r9`]], [#text(fill: rgb("#f1f1f1"))[general purpose register]],
    [#text(fill: rgb("#f1f1f1"))[`r10`]], [#text(fill: rgb("#f1f1f1"))[general purpose register]],
    [#text(fill: rgb("#f1f1f1"))[`r11`]], [#text(fill: rgb("#f1f1f1"))[general purpose register]],
    [#text(fill: rgb("#f1f1f1"))[`r12`]], [#text(fill: rgb("#f1f1f1"))[general purpose register]],
    [#text(fill: rgb("#f1f1f1"))[`r13`]], [#text(fill: rgb("#f1f1f1"))[general purpose register]],
    [#text(fill: rgb("#f1f1f1"))[`r14`]], [#text(fill: rgb("#f1f1f1"))[general purpose register]],
    [#text(fill: rgb("#f1f1f1"))[`r15`]], [#text(fill: rgb("#f1f1f1"))[general purpose register]],
  )
]

== partial registers

#figure(
  image("images/partial_register_access.png"),
  caption: [partial registers],
)
#figure(
  image("images/partial_access_table.png", width: 40%),
  caption: [partial register access table],
)

== syscall arguments

#block(
  width: 100%,
  fill: rgb("#202124"),
  radius: 5pt,
  inset: 10pt,
)[
  #set text(font: "DejaVu Sans Mono")
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.4em,
    align: left,
    [#text(fill: rgb("#f1f1f1"))[`rdi`]], [#text(fill: rgb("#f1f1f1"))[1st argument (arg0)]],
    [#text(fill: rgb("#f1f1f1"))[`rsi`]], [#text(fill: rgb("#f1f1f1"))[2nd argument (arg1)]],
    [#text(fill: rgb("#f1f1f1"))[`rdx`]], [#text(fill: rgb("#f1f1f1"))[3rd argument (arg2)]],
    [#text(fill: rgb("#f1f1f1"))[`r10`]], [#text(fill: rgb("#f1f1f1"))[4th argument (arg3)]],
    [#text(fill: rgb("#f1f1f1"))[`r8`]], [#text(fill: rgb("#f1f1f1"))[5th argument (arg4)]],
    [#text(fill: rgb("#f1f1f1"))[`r9`]], [#text(fill: rgb("#f1f1f1"))[6th argument (arg5)]],
  )
]

== syscalls

(see `syscall.sh`)

=== syscall numbers

#block(
  width: 100%,
  fill: rgb("#202124"),
  radius: 5pt,
  inset: 10pt,
)[
  #set text(font: "DejaVu Sans Mono")
  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.4em,
    align: left,
    [#text(fill: rgb("#f1f1f1"))[0]], [#text(fill: rgb("#f1f1f1"))[read]],
    [#text(fill: rgb("#f1f1f1"))[1]], [#text(fill: rgb("#f1f1f1"))[write]],
    [#text(fill: rgb("#f1f1f1"))[2]], [#text(fill: rgb("#f1f1f1"))[open]],
    [#text(fill: rgb("#f1f1f1"))[3]], [#text(fill: rgb("#f1f1f1"))[close]],
    [#text(fill: rgb("#f1f1f1"))[60]], [#text(fill: rgb("#f1f1f1"))[exit (exit code in `rdi`)]],
  )
]
