
;Modify the code and try printing the letter 
;without using single quotes. Try 
;a.printing a letter using double quotes 
;b. printing a letter using its ASCII code 
;(Hint: the ASCII codes of capital alphabets
;start from 65 and of small alphabets start from 97)
.model small
.stack 100h
.code 
ihsan proc 
    mov ah, 02h
    mov dl, 97
    int 21h

    mov ah, 4Ch
    int 21h
ihsan endp
end ihsan
