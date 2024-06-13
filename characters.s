

section .data
    character DB 'A' ; 1 byte char
    arr DB 1,2,3,4 ; array, 


section .text
global _start 



_start:
    MOV bl,[arr]
    MOV eax,1
    INT 80h