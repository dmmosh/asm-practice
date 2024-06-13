

section .data
    character DB 'A' ; 1 byte char
    arr DB 1,2,3,4 ; array, 


section .text
global _start 



_start:
    MOV eax,1
    MOV bl,[arr]
    INT 80h