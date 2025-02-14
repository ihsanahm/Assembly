.MODEL SMALL
.STACK 1000H
.DATA
    message1 db 'Enter ending range of a number <1 to 9> : $'
    message2 db 'The entered range is upto : $'
    char db ?
    char1 db '1'
.CODE
    MAIN PROC
        MOV ax ,@DATA
        MOV DS,AX
         mov ah, 09h
        lea dx, message1
        int 21h

        mov ah, 01h
        int 21h      
        mov char,AL

        sub AL,'0'
        mov cl,AL

        mov ah, 02h
        mov dl, 0Dh       
        int 21h
        mov dl, 0Ah       
        int 21h

        mov ah, 09h
        lea dx, message2
        int 21h

    print_loop:
        MOV AH, 02H
        mov Dl, char1
        INT 21H

        

        INC  char1

        loop print_loop

        MOV AH,4CH
        INT 21H
        
    MAIN ENDP
    END MAIN
