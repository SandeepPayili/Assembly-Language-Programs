;16 bit subtraction
mov ax,[1000h]
mov bx,[1002h]
mov cl,00h
SUB ax,bx
jnc jump
inc cl
not ax
add ax,0001h
jump:
    mov [1004h],ax
    mov [1006h],cl
hlt        



;   ax 3243
;   bx 2316
;diff   0F2D    ; no carry(borrow) 





;  ax   840C
;  bx   B2CA
; diff  1D142  ; carry(borrow)
;   >>  2EBE

