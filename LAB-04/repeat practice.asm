;asked to take in characters from the user and print them until a space is
pressed.
.MODEL SMALL
.STACK 100H
.DATA
a db "hello world$"
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    REPEAT:
    MOV AH,1
    INT 21H  ; INPUT WILL STORE IN DL
    
    MOV DL,AL ; SINGLE CHAR OUTPUT STORE IN DL
    MOV AH,2
    INT 21h
    CMP AL, ' '    ; IF AL!=" " THE LOOP WILL CONTINUE 
    JNE REPEAT
    
    MAIN ENDP
END MAIN