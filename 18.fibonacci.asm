;fibonacci
include "emu8086.inc"
print "Enter N : "
call scan_num
;mov cx,10  
printn
printn "0"
print "1"
mov ax,0
mov bx,1

sub cx,2

fibonacci:        
    mov dx,bx
    add bx,ax
    mov ax,bx
    printn
    call print_num
    mov ax,dx
    loop fibonacci
    
ret
                  
           
define_scan_num
define_print_num
define_print_num_uns