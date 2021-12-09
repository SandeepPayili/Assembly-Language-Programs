; 8086 architecture has 2 buses address and data bus 
; so there is no two immediate data passing and two address passing

;General Purpose Registers
;1)Accumulator Register (AX) ;arithematic and logical operations
;2)Base Register (BX)   ; data movement
;3)Count Register (CX)  ; looping and rotating
;4)Data Register (DX)   ; used for multiplication and divission

;16 bits and is divided into two 8 bit registers AH and AL to perform 8-bit instructions.

                     
                     
; org 100h ; assembly directive  (not an instruction)
; it defines where machine code(translated assembly code ) to place in memory 
                    
                    
                    
                    
                    ;Register Organization of 8086
;8086 has a powerful set of registers known as general purpose registers and special purpose registers
; all of them are 16 bit registers
;the 8086 registers are classified as following types:
    
;   1) General Data Registers / General Purpose Registers(GPR)
;   2) Segment Registers
;   3) Pointers and Index Registers
;   4) Flag Register
                                                              
                                                              
; 2) Segement Registers
;     i) Code segment Register (CS)
;    ii) Stack Segement Register (SS)
;   iii) Data Segment Register (DS)
;    iv) Extra Segment Register (ES)
 
 
; 3) Pointers and Index Registers
;      i) Stack Pointer
;       ii) Base Pointer
;       iii) Source Index   Register
;       iv) Destination Index  Register
;       v) Instruction Pointer



;  4) Flag Register / PSW       
;        




;           AL       AH
;           Bl       BH
;           CL       CH
;           DL       DH

;Range :   0-255    256-65535                                                                      