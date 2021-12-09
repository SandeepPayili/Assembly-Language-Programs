;16 bit addition 
mov ax,[1000h]   ; 4 digits * 4 bits for each bit = 16 bit address
mov bx,[1002h]
mov cl,00h        
ADD ax,bx
mov [1004h],ax
jnc jump
inc cl
jump:
    mov [1006h],cl
 
hlt
                 
                             
;    ax 2316
;    bx 3243
;sum    5559   ; carry flag is zero
                             
                             
; ax,FE1C
; bx,A243
; sum 1A05F    ; carry flag is one