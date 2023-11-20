;task4  
;If AL contains 1 or 3, display o; if AL contains 2 or 4 display "e".
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AL,4 
    
    CMP AL,1 ; COMPARING AL WITH 1
    JE SHOW_O  ; IF AL==1 >> SHOW_O
    
    CMP AL,3   ;; COMPARING AL WITH 3
    JE SHOW_O  ;; IF AL==3 >> SHOW_O
    
    CMP AL,2
    JE SHOW_E  ; ; IF AL==2 >> SHOW_E
    
    CMP AL,4   ; ; IF AL==4 >> SHOW_E
    JE SHOW_E
    
    SHOW_O:
    MOV DL,6FH  ; AS AL EQUALS 1 OR 3 AND WE HAVE TO PRINT "o" 
    MOV AH,2    ; ASCII VAL OF "o"=6F SO, DL=6FH
    INT 21h
    JMP EXIT
    
    SHOW_E:
    MOV DL,65H  ; AS AL EQUALS 2 OR 4 AND WE HAVE TO PRINT "e"
    MOV AH,2    ; ASCII VAL OF "e"=6F SO, DL=6F
    INT 21h
    JMP EXIT
    
    EXIT:
    MAIN ENDP
END MAIN