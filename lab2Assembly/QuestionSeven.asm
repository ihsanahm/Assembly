.model small
.stack 1000h
.data 
    message1 db '1$'
    message2 db '1 2$'
    message3 db '1 2 3$'
    message4 db '1 2 3 4 $:'
    message5 db '1 2 3 4 5$:'
   
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
