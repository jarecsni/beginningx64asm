;alive.asm

section .data
    msg1        db  "Hello, World!", 10, 0
    msg1Len     equ $-msg1-1                    ; measure length, take away 1 (for the 0 byte at the end)
    msg2        db  "Alive and kicking!", 10, 0
    msg2Len     equ $-msg2-1                  
    radius      dq  357
    pi          dq  3.14
    fmtstr      db  "%s", 10, 0
    fmtflt      db  "%1f", 10, 0
    fmtint      db  "%d", 10, 0

section .bss

section .text
    extern printf
    global main

main:
    push    rbp                     ; function prolog
    mov     rbp, rsp                ; -"-
    ; print msg1
    mov     rax, 0
    mov     rdi, fmtstr
    mov     rsi, msg1
    call printf

    ; print msg2
    mov     rax, 0
    mov     rdi, fmtstr
    mov     rsi, msg2
    call printf

    ; print radius
    mov     rax, 0
    mov     rdi, fmtint
    mov     rsi, [radius]
    call printf

    ; print pi
    mov     rax, 1                  ; floating point involved (1 xmm register used)
    movq    xmm0, [pi]
    mov     rdi, fmtflt
    call printf

    mov     rsp, rbp                ; function epilogue
    pop     rbp 
    ret
