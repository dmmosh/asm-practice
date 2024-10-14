section .data
    num1 DB 3
    num2 DB 2


section .bss
    num3 RESB 1


section .text
global _start

; ld -m elf_i386

_start:
    mov eax,3 ; constants are only allowed in a/b/c/d registers !!! 
    ; if want to assign constant in a variable, first assign to a register, then move to variable
    add eax,[num1] ; [ ] : reference
    add eax,[num2]
    mov [num3],eax  ; *num3 = eax;
    

    

    mov ebx,[num3]
    mov eax,1
    int 80h

