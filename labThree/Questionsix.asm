.MODEL SMALL
.STACK 1000H
.DATA
    message2 db 'English Alphabets in upper case : $'
     message3 db 'English Alphabets in Lower case : $'
    newline db 13, 10, '$'  

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        MOV AH, 09h
        LEA DX, message2
        INT 21h

       
        MOV CX, 26
        MOV AH, 2
        MOV DL, 65

    print_loop1:
        INT 21h
        INC DL
        LOOP print_loop1

        
        MOV AH, 09h
        LEA DX, newline
        INT 21h

        MOV AH, 09h
        LEA DX, message3
        INT 21h

        MOV CX, 26
        MOV AH, 2
        MOV DL, 97

    print_loop2:
        INT 21h
        INC DL
        LOOP print_loop2

        
        MOV AH, 09h
        LEA DX, newline
        INT 21h

        
        MOV AH, 4Ch
        INT 21h
        
    MAIN ENDP
    END MAIN
