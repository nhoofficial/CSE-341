;task3 
;a.Read a character, and display it at the next position on the same line.
;b. Read an uppercase letter (omit error checking), and display it at the next position on the same line in lower case.
.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    ;#################TASK (A)################################### 
    MOV AH,1 ; LINE 12-13 FOR TAKING INPUT FOR A CHAR AND IT WILL 
    INT 21h         ; STORE IN AL
    
    MOV DL, AL ; AS OUTPUT STORE IN AL SO, DL=AL
    MOV AH,2 ; LINE 15-16 FOR SHOWING SINGLE CHAR AS OUTPUT 
    INT 21h
    
    ;############################################################
    
    
    ;#####################TASK (B)###############################
    MOV AH,1
    INT 21h
    MOV DL, AL ; DL=AL
    
    ADD DL, 20H ; ASCII VALUE FOR A=41 WHEREASE a=61 SO FOR CONVERTING TO LOWERCASE WE HAVE TO ADD 20H 
                ; AS A RESULT DL+=20H WILL MAKE A TO a
    MOV AH,2
    INT 21h
     
    ;############################################################
    
    MAIN ENDP
END MAIN