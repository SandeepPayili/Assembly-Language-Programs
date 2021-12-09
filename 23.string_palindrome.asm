;String Palindrome
include "emu8086.inc"

lea si,str1
go_last:
    cmp [si],'$'
    je string_palindrome
    inc si
    jmp go_last
  
string_palindrome:
    dec si
    lea di,str1   
    
    label:
    
    cmp di,si
    jge palindrome
    
    mov dl,[si]
    cmp [di],dl
    jne not_palindrome  
    inc di
    dec si
    
    jmp label

                     

palindrome:
    print "Palindrome"
    ret

not_palindrome:
    print "Not Palindrome"
                     
ret
;str1 db "Hello World$"
str1 db "qwerewqq$"