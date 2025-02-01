.model small
.stack 100h
.code
main proc
    mov ah, 02h   ; DOS function to print a character

    ; Print 'I' and newline
    mov dl, 'I'   
    int 21h       
    mov dl, 0Dh   ; Carriage return
    int 21h       
    mov dl, 0Ah   ; Line feed
    int 21h       

    ; Print 'H' and newline
    mov dl, 'H'   
    int 21h       
    mov dl, 0Dh   
    int 21h       
    mov dl, 0Ah   
    int 21h       

    ; Print 'S' and newline
    mov dl, 'S'   
    int 21h       
    mov dl, 0Dh   
    int 21h       
    mov dl, 0Ah   
    int 21h       

    ; Print 'A' and newline
    mov dl, 'A'   
    int 21h       
    mov dl, 0Dh   
    int 21h       
    mov dl, 0Ah   
    int 21h       

    ; Print 'N' and newline
    mov dl, 'N'   
    int 21h       
    mov dl, 0Dh   
    int 21h       
    mov dl, 0Ah   
    int 21h       

    mov ah, 4Ch   ; Exit program
    int 21h
main endp
end main
