; jumploop.asm

extern printf

section .data
    number      dq  5
    fmt         db  "The sum from 0 to %ld is %ld", 10, 0

section .bss

section .text
    global main
main:
    push    rbp                         ; rbp is 'frame pointer'
    mov     rbp, rsp                    ; saves the previous top of the stack to rbp
    mov     rbx, 0
    mov     rax, 0
jloop:
    add     rax, rbx
    inc     rbx
    cmp     rbx, [number]
    jle     jloop
    mov     rdi, fmt                    ; string template
    mov     rsi, [number]               ; first number 
    mov     rdx, rax                    ; second number
    mov     rax, 0                      ; no floating point arithmetics involved
    call    printf
    mov     rsp, rbp
    pop     rbp
    ret
