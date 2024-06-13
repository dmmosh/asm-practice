

; DATA SECTION
; stores variables, what to store in memory
section .data 
    ; have to give 3 things: name, type (size) and initial value
    ; num DB  - defined byte - 1 byte of data
    ; num DW - defined word - 2 bytes of data 
    ; num DD - 4 bytes
    ; num DQ - 8 bytes
    ; num DT - 10 bytes

    ; theres no distinguishing between types , only distinguish by how BIG it is 

    num DD 5 ; 32 bits of data, basically integer

; actual code thats being run
section .text
global _start 


_start: ; LABEL, segment of code, everything below start will run
; basically int main() {}

    ; COMPILE:
    ; nasm -f elf -o first.o first.s && ld -m elf_i386 -o out first.o
    ; compiles to object file and then makes an executable targeting i386

    MOV eax, 1 ; MOV : move values into / out of registors 
    ; telling what system call to do
    ; set to 1 -> exit program 

    ; MOV does to, from (1 into eax register)

    MOV ebx, 25  ; exit status code
    INT 80h ; system interrupt



