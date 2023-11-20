;task 2 using multiplication
.MODEL SMALL
.STACK 100H
.DATA   
msg db "enter number: $"
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX, msg
    mov ah,9
    int 21h 
    
    
    mov ah,1
    int 21h
    mov bl, al
    sub bl, 30h ; 32-30=2
    
    mov ah,1
    int 21h
    mov cl,al
    sub cl, 30h ; 32-30=4
    
    mov al, cl
    mul bl 

    mov dx, ax   ; 2*2=4=ax hex val of ax =34 so, ax=4+30=34
    add dx, 30h
    mov ah,2 
    int 21h
    
    
    MAIN ENDP
END MAIN