.MODEL SMALL
.STACK 1000H
.DATA
    message1 DB 'Enter the initials: $'
    newline  DB 0Dh, 0Ah, '$'
    
    char1 DB ?
    char2 DB ?
    char3 DB ?

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

       
        MOV AH, 09H
        LEA DX, message1
        INT 21H

      
        MOV AH, 01H
        INT 21H
        MOV char1, AL  

       
        MOV AH, 01H
        INT 21H
        MOV char2, AL

        
        MOV AH, 01H
        INT 21H
        MOV char3, AL

       
        LEA DX, newline
        MOV AH, 09H
        INT 21H

       
        MOV AH, 02H
        MOV DL, char1
        INT 21H
        CALL PRINT_NEWLINE

      
        MOV AH, 02H
        MOV DL, char2
        INT 21H
        CALL PRINT_NEWLINE

       
        MOV AH, 02H
        MOV DL, char3
        INT 21H
        CALL PRINT_NEWLINE

        
        MOV AH, 4CH
        INT 21H

    MAIN ENDP

    PRINT_NEWLINE PROC
        MOV DL, 0Dh  
        MOV AH, 02H
        INT 21H
        MOV DL, 0Ah   
        MOV AH, 02H
        INT 21H
        RET
    PRINT_NEWLINE ENDP

END MAIN
