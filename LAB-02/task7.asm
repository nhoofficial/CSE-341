;Task 07
;Write a program to read one of the hex digits A-F, and display it on the next line in decimal.
.MODEL SMALL
.STACK 100H
.DATA
STR DB "ENTER A HEX DIGIT: $"
STR2 DB "IN DECIMAL IT IS $"
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX  
    
    LEA DX,STR
    MOV AH,9 
    INT 21h
    
    
    MOV AH,1
    INT 21h
    MOV BL,AL
    SUB BL,31h

    
    MOV AH,2
    MOV DL, 0DH
    INT 21h
    MOV DL, 0AH
    INT 21h
    
    LEA DX,STR2
    MOV AH,9 
    INT 21h
    
    MOV DL,BL
    MOV AH,2
    INT 21h
    
    MAIN ENDP
END MAIN