;
; Exp1_P3.asm
; Date: 01-09-2021 
; Author : G Abhiram
; Aim: (Multiplication of two 8-bit numbers)- Given two 8-bit binary words (byte), compute the product and store it in register(s).


.CSEG
LDI ZL,LOW(2*NUM);
LDI ZH,HIGH(2*NUM);
LPM R16, Z+
LPM R17, Z
MUL R16, R17
NOP
NUM: .db $AB, $23
