section .data
    num1 dw 30000 ;num1 = 7350h
    num2 dw 40000 ;num2 = 9C40h
    sum dd 0      ;sum = 00h

section .text
    global _start

_start:
    mov dx, 0
    mov ax, word[num1]  ;ax = num1 = 7350h
    add ax, word[num2]  ;ax = ax + num2 = 2Ch
    adc dx, 0           ;dx = dx + 0 + CF = 01h
    mov word[sum+0], ax ;sum+0 = ax = 0117Ch
    mov word[sum+2], dx ;sum+2 = dx = 002

    mov rax, 60 ;terminate executing process
    mov rdi, 0  ;exit status
    syscall     ;calling system servies