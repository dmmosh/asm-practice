section .data


section .bss 
    num1 RESB 1
    num2 RESB 1
    num3 RESD 1



section .text
global _start

; nasm -f elf -o add.o add.s && ld -m elf_i386 -o out add.o && git-all && ./out


; EFLAGS
; a register which gives info on whats just been run
; each bit is a flag representing what just been run

; PF flag: parody flag , set when value is odd # (1), when even (0) 
; basically modulus

; registors vs variables
; registors: operations are way faster than variables
; variables

_start:
    MOV eax,5
    MOV [num1],eax
    MOV [num2], eax
    MOV ebx,30
    MOV eax,0b00000001
    ADD [num1],eax


    ; buffer overflowing
    ; 0b: binary representation
    ; 0x: hexadecimal representation
    MOV bl,0b00000001 
    MOV cl,0b11111111
    MOV [num1],cl
    ADD [num1],bl
    MOV ebx,[num1]

    ; eflags register 
    ; ZF: operation is zero
    
    ; how to get the carry (value from buffer overflow)
    MOV bl,0b00000001 
    MOV cl,0b11111111
    ADD cl,bl
    ADC bl,0 ; adds the carry bit to the higher part of a register
    MOV [num3], bx
    MOV ebx,[num3]


    MOV eax,1 ; system reads code 1, meaning exit
    INT 80h ; requests system call
