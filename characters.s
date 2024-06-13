

section .data
    character DB 'A' ; 1 byte char


section .text
global _start 



_start:
    MOV bl,[character]
    MOV eax,1
    INT 80h