;prime number
include "emu8086.inc"
print "Enter Number : "
call scan_num
printn       
;mov cx,16
mov n,cx
;printn
sub cx,1
prime_check:
    cmp cx,1
    je prime_number
    mov dx,0
    mov ax,n
    div cx
    cmp dx,0
    je not_prime
    dec cx
    jmp prime_check
    
prime_number:
    printn "Prime Number"
ret
not_prime:
    printn "Not Prime"
ret         
n dw 0            
define_scan_num