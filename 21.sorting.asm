; sorting array              
include "emu8086.inc"
mov cx,0
mov cl,6               
mov n,cl

sort:
   lea si,arr1 
   mov dl,n
   mov temp_n,dl
   sub temp_n,1           
   j_loop:     
        cmp temp_n,0
        je j_completed 
        mov dl,[si+1]
        cmp [si],dl
        jg swap   
        
        j_loop_end:
            inc si
            dec temp_n
            jmp j_loop   
        
   j_completed:
        loop sort


jmp print

swap:
    mov dh,[si]
    mov [si],dl
    mov [si+1],dh
    jmp j_loop_end   
                

print:        
    mov cl,n
    lea si,arr1
    jmp print_result
    
    print_result:
    
    mov ax,0
    mov al,[si]   
    printn
    call print_num                
    inc si
    loop print_result


ret
n db ?  
temp_n db ?
arr1 db 10,20,30,50,1,6
;arr1 db -1,-22,-3,50,9,6
;arr1 db 10,1,6,3    

define_print_num
define_print_num_uns