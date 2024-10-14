section .data
    nums DB 3 DUP(3)

section .bss
    nums_uninit RESB 3


section .text
global _start

_start:
    mov [nums_uninit],1
    mov [nums_uninit+1],2
    mov [nums_uninit+2],3

    
    mov al,3
    mul [nums_uninit]
    mul [nums_unini+1]
    mul [nums_uninit+2]

    mov ebx,[nums_uninit]
    add ebx,[nums_uninit+1]
    add ebx,[nums_uninit+2]

    mov al,1
    int 80h



