.model small
.stack 1000h
.data 
    message1 db 'Enter the first number : $'
    message2 db 'Enter the second number : $'
    message3 db 'Sum is : $'
    num1 DW ?
    num2 DW ?
    result DW ?
.code
    main proc
        
        mov ax, @data
        mov ds, ax

        
        mov ah, 09h
        lea dx, message1
        int 21h

        
        mov ah, 01h
        int 21h 
        sub al, 30h       
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
        sub al, 30h       
        mov num2, ax      

        
        mov ah, 02h
        mov dl, 0Dh       
        int 21h
        mov dl, 0Ah       
        int 21h

        
        mov ax, num1    
        add ax, num2     
        mov result, ax    

        
        add result, 30h

        
        mov ah, 09h
        lea dx, message3
        int 21h

        
        mov ah, 02h
        mov dx, result
        int 21h

       
        mov ah, 4Ch
        int 21h
    main endp
end main