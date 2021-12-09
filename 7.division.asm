; 8 bit division
;when operand is a byte:
;AL = AX / operand
;AH = remainder (modulus)


;when operand is a word:
;AX = (DX AX) / operand
;DX = remainder (modulus)


MOV AX, 11   ; AX = 00CBh
MOV BL, 2
DIV BL        ; AL = 50 (32h), AH = 3
RET       



MOV AX, 203   ; AX = 00CBh
MOV BL, 4
DIV BL        ; AL = 50 (32h), AH = 3
RET
