; helloprintf.asm

extern printf

section .data
    msg     db  "Hello, World!", 0
    fmtstr  db  "This is our string: %s", 10, 0

section .bss

section .text
    global main

main:
    push    rbp
    mov     rbp, rsp
    mov     rdi, fmtstr         ; 1st arg to printf
    mov     rsi, msg            ; 2nd arg to printf
    mov     rax, 0              ; no xmm registers involved
    call    printf
    pop     rbp
    mov     rax, 60
    mov     rdi, 0
    syscall



