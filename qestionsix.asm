.model small
.stack 1000h
.data
    letter db "A$"
.code
    main proc
        mov ax, @data
        mov ds,ax
        mov ah,09h
        lea dx,letter
        int 21h
        mov ah , 4Ch
        int 21h
    main endp
    end main