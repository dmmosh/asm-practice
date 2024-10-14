section .data
    nums DB 3 DUP(3)
    string DB "hello world",0

section .bss
    nums_uninit RESB 3


section .text
global _start

_start:
    mov cl,1
    mov [nums_uninit],cl
    add cl,1
    mov [nums_uninit+1],cl
    add cl,1
    mov [nums_uninit+2],cl



    mov bx,0
    add bx,[nums_uninit]
    add bx,[nums_uninit+1]
    add bx,[nums_uninit+2]
    
    mov ax,4
    mul bx

    mov bx,ax
    push string
    call printf


    mov eax,1
    int 80h



