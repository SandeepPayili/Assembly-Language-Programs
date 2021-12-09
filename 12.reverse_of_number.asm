;reverse of a number
include "emu8086.inc"
print "Enter Number : " 
call scan_num 
printn
;mov cx,123   
reverse:
    cmp cx,0
    je exit
    mov ax,cx
    mov dx,0
    div ten
    mov cx,ax
    mov bx,dx
    mov ax,rev
    mul ten
    add ax,bx
    mov rev,ax
    
    
    jmp reverse
exit:
    mov ax,rev
    call  print_num

ret
rev dw  0
ten dw 10
define_scan_num
define_print_num
define_print_num_uns