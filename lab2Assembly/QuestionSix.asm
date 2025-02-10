.model small
.stack 1000h
.data 
    message1 db '* * * * *$'
    message2 db '* * * *$'
    message3 db '* * *$'
    message4 db '* *$:'
    message5 db '* $:'
   
.code
    main proc
        
        mov ax, @data
        mov ds, ax

        
        mov ah, 09h
        lea dx, message1
        int 21h

        mov ah, 02h
        mov dl, 0Dh       
        int 21h
        mov dl, 0Ah       
        int 21h

        
        mov ah, 09h
        lea dx, message2
        int 21h

        mov ah, 02h
        mov dl, 0Dh       
        int 21h
        mov dl, 0Ah       
        int 21h
        
        mov ah, 09h
        lea dx, message3
        int 21h

        mov ah, 02h
        mov dl, 0Dh       
        int 21h
        mov dl, 0Ah       
        int 21h

        mov ah, 09h
        lea dx, message4
        int 21h

        
        mov ah, 02h
        mov dl, 0Dh       
        int 21h
        mov dl, 0Ah       
        int 21h

        mov ah, 09h
        lea dx, message5
        int 21h

        
       
        mov ah, 4Ch
        int 21h
    main endp
end main
