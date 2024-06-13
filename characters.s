

section .data
    character DB 'A' ; 1 byte char
    character2 DB 'B' ; 1 byte char
    arr DB 1,2,3,4 ; array, 
    ; arrays have to way to end, so have to manually put something at the end to indicate the end
    ; null terminator


section .text
global _start 



_start:
    MOV bl,[character]
    MOV bh,[character2]
    MOV eax,1
    INT 80h