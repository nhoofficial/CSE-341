.MODEL SMALL
.STACK 100H
.DATA
    MESSAGE DB 'The sum is: $'   
    str db "give input of two number: $"
    NUM1 DB ?
    NUM2 DB ?
    RESULT DB ?
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX    
        
        lea dx,str
        mov ah,9
        int 21h

        ; Read the first number
        MOV AH, 01H
        INT 21H
        SUB AL, 30H ;32=2
        MOV NUM1, AL

        ; Read the second number
        MOV AH, 01H
        INT 21H
        SUB AL, 30H
        MOV NUM2, AL

        ; Perform the addition
        MOV AL, NUM1
        ADD AL, NUM2   
        add al, 30h
        MOV RESULT, AL

       
        
        ;for the new line
        mov ah, 2
        mov dl, 0dh
        int 21h
        mov dl,0ah
        int 21h
        
        
        ; Print the message
        LEA DX, MESSAGE
        MOV AH, 09H
        INT 21H

        ; Print the result
        MOV DL, RESULT
   
        MOV AH, 02H
        INT 21H

    MAIN ENDP
END MAIN