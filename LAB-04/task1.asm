;TASK1
;Write a count-controlled loop to display a row of 80 stars.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV CX,80      ; FOR PRINTING 80 (*)
    MOV AH,2       ; PRINTING COMMAND
    MOV DL,2AH     ; "*"=2A
    
    START:
    INT 21H
    LOOP START:
    
    
    MAIN ENDP
END MAIN