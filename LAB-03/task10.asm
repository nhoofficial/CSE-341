;TASK10
;find maximum and minimum between three numbers.  
.MODEL SMALL
.STACK 100H
.DATA
a db 5d
b db 3d
c db 1d
M DB "minimum num is $"
M1 DB "maximum num is $$"
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    mov ah, a
    mov bh, b
    mov ch, c
    
    cmp ah,bh
    jg greater
    
    
    
    greater:
    cmp ah,ch
    jg greatest
    
    
    greatest:
    mov dl,ah
    
    lea dx,m1
    mov ah,9
    int 21h
    
     
    mov ah,2
    int 21h
    
    JMP EXIT
    
    EXIT:
    MAIN ENDP
END MAIN