.MODEL SMALL
.STACK 1000H
.DATA
    char db 'Ihsan Ahmed $'
.CODE
    MAIN PROC
        MOV ax ,@DATA
        MOV DS,AX
        MOV cx ,10
    print_loop:
        MOV AH, 09H
        LEA DX, char
        INT 21H

        mov ah, 02h
        mov dl, 0Dh       
        int 21h
        mov dl, 0Ah       
        int 21h

        loop print_loop
        MOV AH,4CH
        INT 21H
        
    MAIN ENDP
    END MAIN
