;task 3  
;If AX contains a negative number, put -1 in BX; if AX contains 0, put 0 In BX; if AX
;contains a positive number, put 1 in BX.
.MODEL SMALL
.STACK 100H
.DATA

.CODE

    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX  
    MOV AX,-1  
    CMP AX,0
    JL NEGATIVE ; if ax<0 then it jumps to neg; 
    JE ZERO      ; if ax==0 then it jumps to neg
    JG POSITIVE  ; if ax>0 then it jumps to pos
    
    
    NEGATIVE:
    MOV BX,-1D
    MOV DX,BX
    MOV AH,2
    INT 21h
    JMP EXIT
    
    ZERO:
    MOV BX,0
    MOV DX,BX
    MOV AH,2
    INT 21h
    JMP EXIT
    
    POSITIVE:
    MOV BX,1D
    MOV DX,BX
    MOV AH,2
    INT 21h   
    JMP EXIT
    
    EXIT:
    
    MAIN ENDP
END MAIN