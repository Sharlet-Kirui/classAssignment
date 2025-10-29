section .data
    start_num dw 25          
    end_num   dw 15          
    sum       dw 0           

section .text
    global _start

_start:
    mov ax, [start_num]      
    mov bx, [end_num]        
    mov cx, 0                

loop:
    add cx, ax               
    dec ax                   
    cmp ax, bx               
    jge loop        

    mov [sum], cx            

    ; exit program
    mov eax, 1               
    xor ebx, ebx             
    int 0x80
