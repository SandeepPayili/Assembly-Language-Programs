;factorial
include "emu8086.inc"
printn "Enter Number : "
call scan_num  
mov ax,1
factorial:        
    mul cx
    loop factorial ;limitation not considering dx after multiplication

printn
call print_num
ret            
result dw 1
define_scan_num
define_print_num
define_print_num_uns