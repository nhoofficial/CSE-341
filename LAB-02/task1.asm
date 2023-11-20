;task1
;Take a character input and display it. Display the message "Please insert a character: "
;when taking an input.
.MODEL SMALL
.STACK 100H
.DATA
m1 db "Please insert a character$"
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    LEA DX, m1;for printing a string we have to store it on dx                                 
    MOV AH,9 ; for printing str
    INT 21h
    
    MOV AH,1;SINGLE CHAR INPUT 
    INT 21h ; 
    ;STORE INPUT VALUE IN AL REG 
    
    MOV DL,AL ;PRINTED ITEM MUST BE STORED IN DL 
    MOV AH,2 ;SINGLE CHAR OUTPUT 
    INT 21h 
    
    
    
    MAIN ENDP
END MAIN