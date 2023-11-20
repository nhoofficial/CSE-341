;task4 
;Read an uppercase letter (omit error checking), and display it at the next position on the next line in lower case.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1     ; 12-13 for char input
    INT 21h
    MOV BL,AL
     
    ;line 17-21 for new line
    MOV AH,2 
    MOV DL, 0DH
    INT 21h
    MOV DL, 0AH
    INT 21h
    
    
    
    ADD BL, 20H; ASCII VALUE FOR A=41 WHEREASE a=61 SO FOR CONVERTING TO LOWERCASE WE HAVE TO ADD 20H 
                ; AS A RESULT DL+=20H WILL MAKE A TO a
    MOV DL,BL
    MOV AH,2    ; 28-29 for display char 
    INT 21h
    
    MAIN ENDP
END MAIN