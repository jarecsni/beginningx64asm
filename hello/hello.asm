section .data
  msg:    db      "Hello, world!", 0

section .bss
section .text
  global main
main:
  mov rax, 1 ; write
  mov rdi, 1 ; stdout
  mov rsi, msg
  mov rdx, 13
  syscall
  mov rax, 60 ; exit
  mov rdi, 0
  syscall
