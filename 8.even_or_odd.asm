;even or odd
include "emu8086.inc"
print "Enter Number : "
call scan_num 
printn
mov ax,cx

mov dx,0
mov bx,2
div bx
cmp dx,0
je even
printn "ODD NUMBER"
ret
even:
   printn "Even Number"

ret
define_scan_num ; stores result in cx
