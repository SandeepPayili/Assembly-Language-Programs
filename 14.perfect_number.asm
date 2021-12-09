; perfect number
include "emu8086.inc"
print "Enter Number : "
call scan_num   
printn
mov n,cx
sub cx,1
check_perfect:        
    mov dx,0
    mov ax,n
    div cx
    cmp dx,0
    je add_factor
    label:
        loop check_perfect


mov dx,n
cmp sum,dx
je perfect
print "Not Perfect"
ret
perfect:
    print "Perfect"
 
ret
    
add_factor:
    add sum,cx
    jmp label 
 

    
ret
n dw ?
sum dw 0 

define_scan_num