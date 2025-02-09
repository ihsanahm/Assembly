.model small
.stack 1000h
.code

    MAIN PROC
        mov ah ,02h
        mov dl,'I'
        int 21h
        mov dl,'H'
        int 21h
        mov dl,'S'
        int 21h
        mov dl,'A'
        int 21h
        mov dl,'N'
        int 21h
         mov dl,' '
        int 21h
         mov dl,'A'
        int 21h
        mov dl,'H'
        int 21h
        mov dl,'M'
        int 21h
        mov dl,'E'
        int 21h
        mov dl,'D'
        int 21h
        mov dl,' '
        int 21h
         mov dl,'N'
        int 21h
        mov dl,'A'
        int 21h
        mov dl,'R'
        int 21h
        mov dl,'E'
        int 21h
        mov dl,'J'
        int 21h
        mov dl,''
        int 21h
        mov ah,4Ch
        int 21h
        
    MAIN endp    
   end MAIN 