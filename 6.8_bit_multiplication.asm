; 8 bit multiplication
;mov al,10h
;mov bl,25h
;mul bl ; ax =  al * bl;


mov al,[5000h]
mov bl,[5001h]
mul bl ; ax =  al * bl;
mov [5002h],ax

ret