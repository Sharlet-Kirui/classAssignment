section .data
    start_num dw 15
    end_num dw 25
    sum dw 0

section .text
    global _start

_start:
    mov ax, [start_num] 
    mov bx, [end_num]
    mov cx, 0

loop:
    add cx,ax
    inc ax
    cmp ax,bx
    jle loop

    mov [sum], cx

    mov eax, 1
    xor ebx, ebx
    int 0x80