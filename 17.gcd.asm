;GCD
include "emu8086.inc"    
print "Enter A : "
call scan_num
;mov cx,5    
mov a,cx
 
printn
print "Enter B : "
call scan_num
;mov cx,10
mov b,cx
     
mov ax,a     
mov bx,b
cmp a,bx
jg find_hcf
mov a,bx
mov b,ax


find_hcf:
   
   mov dx,0
   mov ax,a
   div b
   cmp dx,0
   je result 
          
   mov cx,b
   mov a,cx
   mov b,dx
   
   jmp find_hcf
   
   
   
result: 
   mov ax,b      
   printn
   call print_num


ret
a dw ?
b dw ?  
define_scan_num
define_print_num
define_print_num_uns