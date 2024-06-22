section .data


section .bss 
    num1 RESB 1
    num2 RESB 1



section .text
global _start

; nasm -f elf -o add.o add.s && ld -m elf_i386 -o out add.o && git-all && ./out


; EFLAGS
; a register which gives info on whats just been run

; PF flag: parody flag , set when value is odd # (1), when even (0) 
; basically modulus

_start:
    MOV eax,5
    MOV [num1],eax
    MOV [num2], eax
    MOV ebx,30
    ADD [num1],ebx

    MOV eax,1
    MOV ebx,[num1]
    INT 80h
