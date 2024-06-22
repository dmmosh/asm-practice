section .data
    word1 DB "hello there",0 ; 0 is null terminator


section .bss
    num1 RESB 1
 
section .text

global _start

; nasm -f elf -o substract.o substract.s && ld -m elf_i386 -o out substract.o && git-all && ./out && echo $?

; NEGATIVE NUMBERS 
_start:
    MOV al,5
    MOV bl,3
    SUB al, bl
    MOV bl,al

    MOV al,1
    INT 80h

