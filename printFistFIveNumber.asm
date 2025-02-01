.model small
.stack 100h
.code 
ihsan proc 
    mov ah, 02h
    mov dl, 48
    int 21h
    mov dl ,0Dh
    int 21h
    mov dl ,0Ah
    int 21h
     mov dl, 49
    int 21h
    mov dl ,0Dh
    int 21h
    mov dl ,0Ah
    int 21h
     mov dl, 50
    int 21h
    mov dl ,0Dh
    int 21h
    mov dl ,0Ah
    int 21h
     mov dl, 51
    int 21h
    mov dl ,0Dh
    int 21h
    mov dl ,0Ah
    int 21h
     mov dl, 52
    int 21h
    mov dl ,0Dh
    int 21h
    mov dl ,0Ah
    int 21h
     mov dl, 53
    int 21h
    mov dl ,0Dh
    int 21h
    mov dl ,0Ah
    int 21h
     mov dl, 54
    int 21h
    mov dl ,0Dh
    int 21h
    mov dl ,0Ah
    int 21h

    mov ah, 4Ch
    int 21h
ihsan endp
end ihsan
