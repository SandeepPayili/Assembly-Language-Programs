; LCM      
include "emu8086.inc"
print "Enter a : "
call scan_num
mov b,cx     

printn
print "Enter b: "
call scan_num
mov a,cx

mov dx,b
cmp a,dx
jg a_is_greater
mov dx,b
mov lcm,dx
jmp find_lcm

a_is_greater:
    mov dx,a
    mov lcm,dx
  
find_lcm:
    mov dx,0
    mov ax,lcm
    div a
    cmp dx,0
    je first_success
    inc lcm
    jmp find_lcm
    
    
first_success:
    mov dx,0
    mov ax,lcm
    div b
    cmp dx,0
    je print_lcm
    inc lcm
    jmp find_lcm
    
    
print_lcm:
    mov ax,lcm 
    printn
    call print_num 
    
    

ret
a dw 0
b dw 0
lcm dw 0          
define_print_num
define_print_num_uns
define_scan_num