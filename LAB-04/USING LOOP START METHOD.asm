.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV CX,5
    MOV AH,2
    MOV DL,30H
   
    START:
    INT 21H
    INC DL
    LOOP START
    
    MAIN ENDP
END MAIN