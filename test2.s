

section .data
    num DB 12
    num2 DB 14


section .text
global _start



_start:
    MOV ebx,[num]
    MOV ecx,[num2]
    MOV eax, 1
    INT 80h

