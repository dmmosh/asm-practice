

section .data
    num DB 10
    num2 DB 22
    ; memory is stored right next to each other


section .text
global _start


  
_start:
    ; registers are stored right nex tot each other
    ; 
    MOV bl,[num]
    MOV ch,[num2]
    MOV eax,1
    INT 80h

