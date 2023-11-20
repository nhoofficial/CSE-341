;TASK2
;Put the sum of 100 + 95 + 90+ .. + 5 in AX.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV CX,20   ; LOOP WILL WORK 20 TIMES CX=20 
    MOV AX,0    ; AX=0
    MOV BX,100  ; BX=100
    
    START:
    ADD AX,BX   ; AX=AX+BX
    SUB BX,5    ; BX-=5
    
    LOOP START  ; CONTINUE LOOP
    
    
    MAIN ENDP
END MAIN