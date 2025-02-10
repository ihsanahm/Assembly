.model small
.stack 1000h
.data 
    message1 db 'Enter the first number : $'
    message2 db 'Enter the second number : $'
    message3 db 'The first Number is : $'
    message4 db 'The second Number is $:'
    num1 DW ?
    num2 DW ?
   
.code
    main proc
        
        mov ax, @data
        mov ds, ax

        
        mov ah, 09h
        lea dx, message1
        int 21h

        
        mov ah, 01h
        int 21h     
        mov num1, ax      

        
        mov ah, 02h
        mov dl, 0Dh       
        int 21h
        mov dl, 0Ah       
        int 21h

        
        mov ah, 09h
        lea dx, message2
        int 21h

       
        mov ah, 01h
        int 21h       
        mov num2, ax      

        
        mov ah, 02h
        mov dl, 0Dh       
        int 21h
        mov dl, 0Ah       
        int 21h
        
        mov ah, 09h
        lea dx, message3
        int 21h

        
        mov ah, 02h
        mov dx, num2
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
        mov dx, num1
        int 21h

       
        mov ah, 4Ch
        int 21h
    main endp
end main
