;TASK9
;DIVISIBLE BY 5 AND 11 OR NOT 

.MODEL SMALL
.STACK 100H
.DATA
M DB "DIVISIBLE BT 5$"
M1 DB "DIVISIBLE BY 11$"
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    

    MOV AX, 0D
    MOV BL, 5D
    DIV BL 
    
    CMP AH,0
    JE DIV_5
    
    MOV CL,11D
    DIV CL
    
    CMP AH,0
    JE DIV_11
    
    DIV_5:
    LEA DX, M
    MOV AH,9
    INT 21h
    JMP EXIT
    
    DIV_11:
    LEA DX, M1
    MOV AH,9
    INT 21h
    JMP EXIT
    
    EXIT:
    MAIN ENDP
END MAIN