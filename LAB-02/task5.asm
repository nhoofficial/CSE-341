;task5                                                                                                               ;Write a program to:
;(a) display a "?"
;(b) read two decimal digits whose sum is less than 10,
;(c) display them and their sum on the next line, with an appropriate message.
.MODEL SMALL
.STACK 100H
.DATA
STR DB "SUM IS: $"
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    ;###############(A)##################
    MOV DL, 3Fh  ; ASCII VALUE FOR "?"=3F
    MOV AH,2
    INT 21h
    ;####################################
    MOV AH,1
    INT 21h
    MOV BH, AL
    SUB BH, 30H 
    
    MOV AH,1
    INT 21h
    MOV BL, AL
    SUB BL, 30H
    ;####################################
    ADD BH,BL
    ADD BH,30H
    
    MOV AH,2
    MOV DL, 0DH
    INT 21h
    MOV DL, 0AH
    INT 21h
    
    LEA DX,STR
    MOV AH,9 
    INT 21h
    
    MOV DL,BH
    MOV AH,2
    INT 21h
    
    MAIN ENDP
END MAIN