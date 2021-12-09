; 16 bit multiplication
mov si,1100h
mov ax,[si]
mov bx,[si+2]
mul bx
mov [si+4],ax
mov [si+6],dx
hlt