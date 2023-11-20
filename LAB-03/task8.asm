;task8  
;Write a program to input any alphabet and check whether it is vowel or consonant.
.MODEL SMALL
.STACK 100H
.DATA
M DB "ALPHABET$"
M1 DB "VOWEL$"
M2 DB "CONSTANT$" 
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AX,8
    MOV BH,2
    DIV BH
    ; AH/BH QOUTIENT AL=4, AH=0
    CMP AH,1
    JE PRINT1 ; AH==1
    JMP PRINT2; AH==0 
    
    PRINT1:
    LEA DX,M1
    MOV AH,9
    INT 21h
    JMP EXIT
    
    PRINT2:
    LEA DX,M
    MOV AH,9
    INT 21h
    JMP EXIT

    EXIT:     
    MAIN ENDP
END MAIN