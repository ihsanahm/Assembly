.model small
.stack 100h
.code

        ihsan proc
        move ah , 02
        mov dl 'H'
        int 21h
        mov ah 4ch 
        int 21h

        ihsan endp
        end ihsan

