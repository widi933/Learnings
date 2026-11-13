= commands

#block(
  width: 100%,
  fill: rgb("#202124"),
  radius: 5pt,
  inset: 10pt,
)[
  #set text(
    font: "DejaVu Sans Mono",
    //size: 9pt,
  )

  #text(fill: rgb("#f1f1f1"))[
    #raw(lang: "asm")[
mov rax, 0x12345    ; move the value 0x12345 into the rax register
mov rdi, 42         ; move the value 42 into the rdi register
                    ; (for example as the exit code)
mov rsi, [rsp+rax*8]; move the value at the memory address (rsp + rax*8) into rsi
mov [rax], rdi      ; move the value in rdi into the memory address in rax
syscall             ; make the syscall
add rax, rdi        ; add the value in rdi to the value in rax
sub rax, 1          ; subtract 1 from the value in rax
mul rax, 2          ; multiply the value in rax by 2
div rax, 3          ; divide the value in rax by 3
cmp rax, rdi        ; compare the value in rax with the value in rdi
                    ; (zero flag is set if they are equal)
test rax, rdi       ; perform a bitwise AND between rax and rdi
                    ; (zero flag is set if the result is zero)
movsx rax, rdi      ; move the value in rdi into rax with sign
                    ; extension (top bits of rax are filled with the
                    ; sign bit of rdi)
inc rax             ; increment the value in rax by 1
dec rax             ; decrement the value in rax by 1
neg rax             ; negate the value in rax (two's complement)
not rax             ; perform a bitwise NOT on the value in rax
and rax, rdi        ; perform a bitwise AND between rax and rdi
or rax, rdi         ; perform a bitwise OR between rax and rdi
xor rax, rdi        ; perform a bitwise XOR between rax and rdi
shl rax, 1          ; shift the value in rax left by 1 bit
shr rax, 1          ; shift the value in rax right by 1 bit
ror rax, 1          ; rotate the value in rax right by 1 bit
rol rax, 1          ; rotate the value in rax left by 1 bit
push rax            ; push the value in rax onto the stack
pop rax             ; pop the value from the stack into rax
    ]
  ]
]

== build

For a normal build, use the following commands:

#block(
  width: 100%,
  fill: rgb("#202124"),
  radius: 5pt,
  inset: 10pt,
)[
  #set text(
    font: "DejaVu Sans Mono",
    //size: 9pt,
  )

  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.4em,
    align: left,

    // Erste Zeile
    [#text(fill: rgb("#a1a1aa"))[$]],
    [#text(fill: rgb("#f1f1f1"))[
      #raw("as -o main.o main.s", lang: "bash")
    ]],

    // Zweite Zeile
    [],
    [#text(fill: rgb("#f1f1f1"))[
      #raw("ld -o main main.o", lang: "bash")
    ]],
  )
]

To build a library, use the following commands:

#block(
  width: 100%,
  fill: rgb("#202124"),
  radius: 5pt,
  inset: 10pt,
)[
  #set text(
    font: "DejaVu Sans Mono",
    //size: 9pt,
  )

  #grid(
    columns: (auto, 1fr),
    column-gutter: 1em,
    row-gutter: 0.4em,
    align: left,

    // Erste Zeile
    [#text(fill: rgb("#a1a1aa"))[$]],
    [#text(fill: rgb("#f1f1f1"))[
      #raw("as -o lib.o lib.s", lang: "bash")
    ]],

    // Zweite Zeile
    [],
    [#text(fill: rgb("#f1f1f1"))[
      #raw("ld -o lib.so lib.o -shared", lang: "bash")
    ]],
  )
]
