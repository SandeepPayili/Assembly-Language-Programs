; 8 bit additon
mov al,255 ; carry flag will be 1
mov al,254 ; carry flag will be 0
mov bl,01
add al,bl
mov DS:[0200H] , Al
mov al,00
ADC AL,AL
mov DS:[0201H],Al
hlt