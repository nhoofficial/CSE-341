;task2  
;Suppose AL and BL contain extended ASCII characters. Display the one that comes first
;in the character sequence.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH, 1
    INT 21h
    MOV BL, AL
    
    MOV AH,1 
    INT 21h       
    
    CMP AL,BL
    
    
    JB PRINT_AL ; IF AL<BL THEN PRINT_AL WILL EXECUTE   
    JBE PRINT_BL; AFTER THAT AL<=BL EXECUTE  
    
    
    PRINT_AL:
    MOV DL, AL
    MOV AH,2
    INT 21h
    PRINT_BL:
    MOV DL,BL
    MOV AH,2
    INT 21H

    
    MAIN ENDP
END MAIN