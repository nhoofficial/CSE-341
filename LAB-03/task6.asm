;task6  
;Read a character. If it's "y" or "Y", display it; otherwise, terminate the program.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,1
    INT 21h
    
    CMP AL, 59H ; ASCII VAL OF Y=59
    JE FUNC1   ; 
    CMP AL, 79H
    JE FUNC1   ; ASCII VAL OF y=79
    JMP EXIT
    
    FUNC1:
    MOV DL,AL ;
    MOV AH,2
    INT 21h
    JMP EXIT

    EXIT: 
    
    MAIN ENDP
END MAIN