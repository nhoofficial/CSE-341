.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,2   ;FOR PRINTING THE OUTPUT
    MOV DL,30H  ; AS WE WANT TO PRINT 0 THATS WHY DL=30H ASCII 0=30H
    
    START:
    CMP DL, 35H   ; COMPARING DL WITH 35H
    JGE END       ; IF DL<=35H //5 IN NUMERICAL >>END
    INT 21H       ; WILL PRINT FIRST VAL OF DL
    INC DL        ; DL++
    
    JMP START     ; BACK TO START
    
    END:          ; TERMINATE LOOP
    
    MAIN ENDP
END MAIN