;task4
;Write a sequence of instructions to multiply AX by BX, and put the product in CX. You
;may ignore the possibility of overflow.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AX, 2
    MOV BX, 4
    
    MUL BX   ; 2*4=8
    
    ADD AX, 30H ; FOR DISPLAYING THE CHAR 8+30=38H=8 IN DISPLAY
    MOV CX, AX     ; CX=DX
    MOV DX, CX ; AS WE WILL SHOW OUTPUT SO ITS MOVING TO DX AND HERE DL WON'T WORK CZ DL(8 BIT) DX (16BIT)
    MOV AH,2  ; AS OUTPUT IS SINGLE BIT SO 
    INT 21H
    
    
    MAIN ENDP
END MAIN