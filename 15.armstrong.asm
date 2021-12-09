;armstrong number    
include "emu8086.inc"
print "Enter Number : "
call scan_num
printn
;mov cx,371
mov temp_n,cx
mov n,cx
get_no_of_digits:
    cmp temp_n,0
    je temp
    add no_of_digits , 1
    mov dx,0
    mov ax,temp_n
    div ten
    mov temp_n,ax
    jmp get_no_of_digits
      
  
temp:
mov temp_n,cx

check_armstrong:    
    cmp temp_n,0
    je label
    mov dx,0
    mov ax,temp_n
    div ten
    mov temp_n,ax
    mov cx,no_of_digits
    mov bx,dx
    mov ax,1
    multiply:        
        mul bx
        loop multiply 
    add sum,ax
    jmp check_armstrong
    
    
label:
   mov dx,sum
   cmp n,dx
   je armstrong
   print "Not Armstrong"
   ret
   armstrong:
    print "Armstrong "

ret 
sum dw 0
ten dw 10 
no_of_digits dw 0
temp_n dw 0          
n dw 0

define_scan_num