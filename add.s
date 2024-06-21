section .data


section .bss 




section .text
global _start

; nasm -f elf -o add.o add.s && ld -m elf_i386 -o out add.o && git-all && ./out


_start:
    MOV eax,1
    MOV ebx,20
    INT 80h
