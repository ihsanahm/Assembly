.model small
.stack 100h
.code

ihsan proc
    mov ah, 02h     ; Set function 02h to display a character
    mov dl, 'H'     ; Load ASCII character 'H' into DL
    int 21h         ; Call DOS interrupt 21h to print the character

    mov ah, 4Ch     ; Set function 4Ch to terminate program
    int 21h         ; Call DOS interrupt 21h to exit
ihsan endp
end ihsan
