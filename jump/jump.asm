; jump.asm

extern printf

section .data
    number1     dq  42
    number2     dq  41
    fmt1        db  "NUMBER1 >= NUMBER2", 10, 0
    fmt2        db  "NUMBER1 < NUMBER2", 10, 0

section .bss

section .text
    global main
main:
    mov rbp, rsp; for correct debugging
    push    rbp
    mov     rbp, rsp
    mov     rax, [number1]
    mov     rbx, [number2]
    cmp     rax, rbx
    jge     greater_or_equal
    mov     rdi, fmt2
    mov     rax, 0
    call    printf
    jmp     exit
greater_or_equal:
    mov     rdi, fmt1
    mov     rax, 0
    call    printf
exit:
    mov     rsp, rbp
    pop     rbp
    ret
