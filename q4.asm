section .text
    global factorial

factorial:
    mov rax, 1              
    mov rcx, rdi            

    cmp rcx, 0
    jle done               

loop:
    imul rax, rcx           
    dec rcx                 
    jnz loop               

done:
    ret
