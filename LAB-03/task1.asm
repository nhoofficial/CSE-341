;task1  
;Take a number in AX, and if it"s a negative number, replace it by 5.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AL,-1H
    MOV BL,0H
    CMP AL,BL
    JL CONVERT ;HERE AL<BL SO JL WILL EXECUTE 
    JMP EXIT
    CONVERT:
    MOV AL,5H ; ASSIGNING AL=5
    ADD AL,30H  ; ASCII VALUE OF 5 IS 35 SO AL+=30
    MOV DL,AL
    MOV AH,2    ;20-21 SHOWING THE OUTPUT
    INT 21h
    EXIT:

    
    MAIN ENDP
END MAIN