;Read a five character password and overprint it by executing a carriage return and displaying five X's.                                                  
.MODEL SMALL
.STACK 100H
.DATA
STR DB "ENTER A HEX DIGIT: $$"  
STR1 DB "IN DECIMAL IT IS $" 
STR2 DB "DO YOU WANT TO DO IT $" 
.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    REPEAT:
    MOV AH,2                   ; 13-17 for new line
    MOV DL, 0DH
    INT 21h
    MOV DL, 0AH
    INT 21h          
    LEA DX, STR            ; 18-20 for printing str
    MOV AH,9
    INT 21H    
    MOV AH,1               ; 21-22 taking input 
    INT 21h    
    MOV BL,AL              ; BL=AL    
    MOV AH,2
    MOV DL, 0DH
    INT 21h
    MOV DL, 0AH
    INT 21h
    LEA DX, STR1
    MOV AH,9
    INT 21h    
    MOV DL,BL              ; 33-34 for printing single char output
    MOV AH,2
    INT 21h    
    MOV AH,2
    MOV DL, 0DH
    INT 21h
    MOV DL, 0AH
    INT 21h    
    LEA DX, STR2
    MOV AH,9
    INT 21h    
    MOV AH,1 
    INT 21h   
    CMP AL,79h ; after taking input from 43-44 it will store input in AL and loop'll continue if input="y" and hex val of y=79
    JE REPEAT  ; if al = 79 then it'll jump back to line 14
    MAIN ENDP
END MAIN