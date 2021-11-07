;
; Exp1_P1.asm
; Date: 01-09-2021
; Author : G Abhiram
; Aim: (Common 8-bit mathematical operation)- Given two 8-bit binary words (byte), compute the sum and store it in register(s).

.CSEG ; defines memory space to hold program
LDI ZL,LOW(2*NUM);load address of first data byte
LDI ZH,HIGH(2*NUM);
LDI R16,00 ; clear R16,used to hold carry
LPM R0,Z+
LPM R1,Z ; Get second number into R1
ADD R0,R1 ; Add R0 and R1,result in R0,carry flag affected
BRCC abc; jump if no carry,
LDI R16,0x01 ; else make carry 1
abc: NOP ; End of program, No operation
NUM: .db 0xFF,0xFF;
