; icalc.asm

extern printf
section .data
    number1     dq      128;
    number2     dq      19;
    neg_num     dq      -12;
    fmt         db      "The numbers are %ld and %ld", 10, 0
    fmtint      db      "%s %ld", 10, 0
    sumi        db      "The sum is", 0
    difi        db      "The difference is", 0
    inci        db      "Number 1 incremented:", 0
    deci        db      "Number 1 decremented:", 0
    sali        db      "Number 1 shifted left 2 (x4):", 0
    sari        db      "Number 1 shifted right 2 (/4):", 0
    sariex      db      "Number 1 shifted right 2 (/4) with "
                db      "sign extension:", 0
    multi       db      "The product is", 0
    divi        db      "The integer quotient is", 0
    remi        db      "The modulo is", 0

section .bss
    resulti     resq    1
    modulo      resq    1

section .text
    global      main
main:
    push        rbp
    mov         rbp, rsp
    ; displaying the numbers
    mov         rdi, fmt
    mov         rsi, [number1]
    mov         rdx, [number2]
    xor         rax, rax         
    call        printf
    ; adding them together
    mov         rax, [number1]
    add         rax, [number2]
    mov         [resulti], rax
    ; display result
    mov         rdi, fmtint
    mov         rsi, sumi
    mov         rdx, [resulti]
    xor         rax, rax
    call        printf

    ; end
    mov         rsp, rbp
    pop         rbp
    ret