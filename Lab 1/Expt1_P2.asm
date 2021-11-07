;
; Exp1_P2.asm
; Date: 01-09-2021 
; Author : G Abhiram
; Aim: (16-bit addition using a 8-bit processor)- Given two 16-bit binary words (byte), compute the sum and store it in register(s).

.CSEG
LDI ZL, LOW(2*NUM)
LDI ZH, HIGH(2*NUM)
LPM R16, Z+ ; Higher byte of first number 
LPM R17, Z+ ; Lower byte of first number
LPM R18, Z+ ; Higher byte of second number
LPM R19, Z ; Lower Byte of second number
LDI R20, 00
ADD R17, R19
ADC R16, R18
BRCC abc; jump if no carry,
LDI R20,0x01 ; else make carry 1
abc: NOP
NUM: .db $12, $A5, $B2, $54
