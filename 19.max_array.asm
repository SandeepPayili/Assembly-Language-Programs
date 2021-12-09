; max of array
include "emu8086.inc"
mov cx,6
lea si,arr1   
mov dl,[si]
mov ans,dl  

find_ans:        
    mov al,[si]
    cmp al,ans
    jg update_ans
    
    temp:   
        inc si
        loop find_ans

 
mov ax,0
;mov ah,0FFh ; for printing signed  output
mov al,ans    
printn
call print_num
ret

update_ans:  
    mov dl,[si]
    mov ans,dl
    jmp temp

ret 
ans db ?
;arr1 db 100,99,199
;arr1 db -100,-20,-30,-10,-99,-101
arr1 db 100,20,30,10,99,101
; ja unsigned condition
; jg signed condition             
                            
define_print_num
define_print_num_uns