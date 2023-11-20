;HOME WORK 2 
;Input a string and reverse it using stack.
.MODEL SMALL
.STACK 100H
.DATA  
A DW 4 DUP(?) 
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX     
    MOV AH,1
    MOV CX,4
    MOV SI,0
    
    INPUT:  ; A=['','','','','','']
    INT 21H
    MOV A[SI],AX
    PUSH A[SI] ; FIRST ELEMENT WILL STORE INTO STACK 
    INC SI
    LOOP INPUT
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV CX,4
    MOV AH,2
    PRINT:
    POP BX     ; A[3] WILL COME FIRST AND FROM STACK A[3] WILL BE REMOVED  
    MOV DX,BX  ; SO DX=A[3]
    INT 21H    ; PRINT A[3]
    LOOP PRINT
    MAIN ENDP
END MAIN