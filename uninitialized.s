section .data
    num2 DB 3 DUP(2)

; uninitialized variables
; cant assign directly because no idea of the size
section .bss ; block starting space

    num RESB 3

section .text
global _start

; nasm -f elf -o uninitialized.o uninitialized.s && ld -m elf_i386 -o out uninitialized.o && git-all && ./out && echo $? 

_start:
    ; how to assign uninitialized variable:
    ; move to register then move to variable from register
    MOV bl,1
    MOV [num],bl
    MOV [num+1],bl ; note: boxy brackets 
    MOV [num+2],bl

    MOV eax,1
    INT 80h