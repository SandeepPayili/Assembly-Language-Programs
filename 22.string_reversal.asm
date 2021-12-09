; String Reverse
lea si,str1

go_last:
    cmp [si],'$'
    je print_reverse
    inc si
    jmp go_last
    

print_reverse:
    lea di,str1
    dec si
    
    label:
        mov cl,[di]
        cmp [si],cl
        je exit
        mov ah,2
        mov dl,[si]
        int 21h
        dec si
        jmp label


exit: 
   mov ah,2
   mov dl,[di]
   int 21h   
   ret



ret
;str1 db  "Hello World$"
str1 db  "Programming$"