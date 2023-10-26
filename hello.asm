section .data
    msg db          "hello world", 0

section .bss
section .text
    global main
main:
    mov         rax, 1          ; 1 = write
    mov         rdi, 1          ; 1 = stdout
    mov         rsi, msg        ; string to display in rsi
    mov         rdx, 12         ; length of string without the 0
    syscall                     ; display the thing
    mov         rax, 60         ; 60 = exit
    mov         rdi, 0          ; 0 = success
    syscall
