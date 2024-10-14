
section .data
    message:  db        "Hello, World", 10, 0
    fmt:    db "%s", 10, 0
    syscall
    ; FUNCTION ARGS (64 bit nasm)

    format2 db "%i\t power of 2: %i",0
    
section .bss
    data1 resb 1

section .text
    extern printf
    global main
    syscall
main:
    ; Create a stack-frame, re-aligning the stack to 16-byte alignment before calls


    mov	rdi, fmt
    mov	rsi, message
    mov	rax, 0 ; return value has to be 0 before calling a function

    ; 64 BIT NASM ARGUMENT NAMING SCHEME (dsxx)
    ;   RDI: 1st argument
    ;   RSI: 2nd argument
    ;   RDX: 3rd argument
    ;   RCX: 4th argument
    ;   R8: 5th argument
    ;   R9: 6th argument
    ; Call printf
    call printf wrt ..plt  

    ; note: R is beyond E 

    ; HOW TO COMPILE:

    ;  nasm -f elf64 main.s && gcc -no-pie main.o -o main && git-all

    mov eax,33
    mov [data1],eax

    mov ebx,[data1]
    mul ebx

    push format2
    push rbx
    push rax
    call printf wrt ..plt
    


    mov	rax,0	; Exit code 0
    ret			; Return