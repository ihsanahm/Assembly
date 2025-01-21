.model small
.stack 100h
.code 
main proc 
    mov ah, 02h
    mov dl, 'H'
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main 
