section .data


; uninitialized variables
; cant assign directly because no idea of the size
section .bss ; block starting space

    num RESB 3

section .text
global _start



_start:
    MOV bl, 1
    MOV [num], bl
    MOV [num+1], bl ; note: boxy brackets 
    MOV [num+2], bl

    MOV eax 1
    INT 80h