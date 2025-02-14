.MODEL SMALL
.STACK 1000H
.DATA
    char db '0'
.CODE
    MAIN PROC
        MOV ax ,@DATA
        MOV DS,AX
        MOV cx ,10
        
    print_loop:
        MOV AH, 02H
        mov Dl, char
        INT 21H

        

        INC char

        loop print_loop
        MOV AH,4CH
        INT 21H
        
    MAIN ENDP
    END MAIN
