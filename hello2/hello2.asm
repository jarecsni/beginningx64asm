section .data
    msg     db  "hello, world", 0
    NL      db  0xa                     ; ASCII for new line

section .bss

section .text
    global main

main:
    mov     rax, 1                      ; 1 syscall "write"
    mov     rdi, 1                      ; to stdout
    mov     rsi, msg                    ; source index to &msg
    mov     rdx, 12                     ; length of string
    syscall
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, NL
    mov     rdx, 1
    syscall
    mov     rax, 60
    mov     rdi, 0
    syscall
    