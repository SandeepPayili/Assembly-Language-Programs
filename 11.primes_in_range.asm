; primes in range
include "emu8086.inc"
mov cx,20
mov n1,cx
mov cx,100
mov n2,cx
print_range_primes:
    mov ax,n2
    cmp n1,ax
    je exit
    mov cx,n1
    sub cx,1
    check_prime:
        cmp cx,1
        je jump_last
        mov dx,0
        mov ax,n1
        div cx
        cmp dx,0
        je not_prime
        loop check_prime 
        
    jump_last:
        mov ax,n1 
        printn
        call print_num
        inc n1
        jmp print_range_primes
                    
   not_prime:
     inc n1
     jmp print_range_primes
    
    
    
exit:
    ret    
ret
n1 dw ?
n2 dw ?             

define_print_num
define_print_num_uns