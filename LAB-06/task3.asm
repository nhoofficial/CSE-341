;HOME WORK 3 
;Input a number and check whether all the digits of that number are unique or not.
.MODEL SMALL
.STACK 100H
.DATA  
B DB "Unique character identified$" 
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
             
    MOV AH,1
    INT 21H   ; 1st input store in stack
    PUSH AX
    mov ah,1
    
    MOV CX,4
    INPUT:
    POP BX
    int 21h
    CMP AX,BX
    JE UNIQUE
    push ax
    loop input   
    
    
     UNIQUE:
    LEA DX,B
    MOV AH,9
    INT 21H
    loop input 
 
   
    MAIN ENDP
END MAIN