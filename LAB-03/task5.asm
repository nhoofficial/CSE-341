;task5  
;Read a character, and if it's an uppercase letter, display it.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,1
    INT 21h
    
    CMP AL,41H ; ASCII VAL OF A=41
    JGE FUNC1  ; IF VAL OF AL>=41 THEN IT WILL JUMP TO FUNC1
    JMP EXIT   ; ELSE GOTO EXIT
    
    FUNC1:
    CMP AL,5AH ; ASCII VAL OF Z=5A
    JLE FUNC2  ; IF VAL OF AL<=5AH THEN IT WILL JUMP TO FUNC1
    JMP EXIT
    
    FUNC2:
    MOV DL, AL
    MOV AH,2       ; 26-27 WILL PRINT 
    INT 21h
    
    EXIT: 
    
    MAIN ENDP
END MAIN