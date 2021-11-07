;
; indirect_addressing.asm
;
; Created: 25-09-2021 00:25:40
; Author : Abhiram
; assembly code to add the contents of registers R11 to R20 using indirect register addressing mode 

; 
.CSEG
LDI R18,10 ; load 10 into R18
LDI R19,20 ; load 20 into R19
LDI R16,0 ; load 0 into R16
LDI ZL,10 ; load 10 into ZL
LDI ZH,00 ; load 00 into ZH
LOOP: INC R18 ; increment R18
INC ZL  ;increment ZL
LD R17, Z  ;load R17 with content present in the register pointed by Z
ADD R16, R17 ;add R16 and R17 and store result in R16
CP R18, R19 ;compare R18 and R19
BREQ STOP ;branch if R18 = R19
JMP LOOP ;jump if not equal
STOP: NOP ;end of program