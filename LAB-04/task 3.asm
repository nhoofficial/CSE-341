;TASK 3
;Read a five character password and overprint it by executing a carriage return and displaying five X's.                                                  
.MODEL SMALL
.STACK 100H
.DATA
STR DB "XXXXX$"
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV CX,5
    MOV AH,1
    START:      ; HERE 14-16 WILL CONTINUE 5 TIMES AS CX=5
    INT 21h
    LOOP START

    LEA DX, STR  ; 18-20 FOR SHOWING STRING AS OUTPUT 
    MOV AH,9
    INT 21H
    
    
    
    MAIN ENDP
END MAIN