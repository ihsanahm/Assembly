.model small
.stack 1000h
.data 
    message1 db 'Enter an uppercase Letter : $'
    message2 db 'The letter in lowercase is :$'
    lw db ?
.code
    main proc
        mov ax ,@data
        mov ds ,ax
        lea dx , message1
        mov ah,09h
        int 21h


        mov ah, 01h
        int 21h 
        add al,20h
        mov lw ,al
        
        mov ah,02h
        mov dl ,0ah
        int 21h

        mov ah ,09
        lea dx,message2
        int 21h
        mov ah,02
        mov dl ,lw
        int 21h
        mov ah ,4ch
        int 21h




    main endp
    end main