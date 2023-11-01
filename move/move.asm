; move.asm

section .data
    bNum        db  123
    wNum        dw  12345
    dNum        dd  1234567890
    qNum1       dq  1234567890123456789
    qNum2       dq  123456
    qNum3       dq  3.14

section .bss
section .text
    global main

main:
    push        rbp
    mov         rbp, rsp
    mov         rax, -1             ; fill rax with '1's
    mov         al, byte [bNum]     ; does NOT clear upper bits of rax
    xor         rax, rax            ; clear rax
    mov         al, byte [bNum]     ; now rax has correct value
    mov         rax, -1             ; fill rax with '1's
    mov         ax, word [wNum]     ; does not clear upper bits of rax
    xor         rax, rax
    mov         ax, word [wNum]     ; value in rax now correct
    mov         rax, -1
    mov         eax, dword [dNum]
    mov         rax, -1
    mov         rax, qword [qNum1]  ; does clear upper bits too (qword)
    mov         qword [qNum2], rax
    mov         rax, 123456
    movq        xmm0, [qNum3]

    mov         rsp, rbp
    pop         rbp
    ret
