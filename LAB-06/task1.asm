;HOME WORK 3 
;Input a number. Find all the factors of that number and store them in stack.
.MODEL SMALL
.STACK 100H
.DATA  
A DW 3 DUP(?)
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV BH,0         
    MOV AX,3H 
    MOV CX,1H
    MOV SI,0
    
    EXIT1:
    CMP CX,AX
    JGE EXIT2
    
    DIV CX
    CMP AH,1
    JNE INCREMENT   
    JMP EXIT1
    
    INCREMENT:
    INC BH    
    MOV A[SI],CX   
    PUSH CX
    INC CX
    INC SI
    JMP EXIT1
    
    EXIT2:    
    MOV CX,SI
    EXIT3:
    POP BX
    ADD BX,30H
    MOV DX,BX
    MOV AH,2
    INT 21H
    LOOP EXIT3
    
    
    
   
    MAIN ENDP
END MAIN      