;TASK2
;Put the sum of 1 + 4 + 7+ .. + 148 in AX.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV CX,50   ; BX WILL START FROM 1 AND INCREMENT WILL BE 3 SO IT'LL CONTINUE 50
    MOV AX,0    ;AX=0
    MOV BX,1    ;BX=0
    
    START:
    ADD AX,BX   ; AX=AX+BX
    ADD BX,3    ; BX+=3
    
    LOOP START  ; CONTINUE LOOP
    
    
    MAIN ENDP
END MAIN