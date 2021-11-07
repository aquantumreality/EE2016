; Expt1_P4.asm
; Author: G Abhiram
; Date: 01-09-2021
; AVR Lab Experiment 1
; Aim: Given a finite set of binary words, load them- from memory, identify the largest in the given set, and store this largest number in SRAM

.CSEG
LDI R16,0x00
LDI ZL,LOW(2*var)
LDI ZH,HIGH(2*var)
LPM R4,Z
loop:
     LPM R8,Z+
	 LPM R9,z; R8, R9 does the bubble sort here
	 MOV R11,R9
	 MOV R10,R8
	 MOV R10,R4
	 rjmp abc
lbl:MOV R4,R10
    rjmp def
abc:CP R10,R11; R10, R11 are registers where comparison occurs
    BRSH lbl
    MOV R4,R11
def: INC R16
    CPI R16,0x08; Write No of Elements-1 in the data set here
    BRSH next
	rjmp loop
next : NOP
var: .db 0x12,0x78,0xA2,0x13,0x56,0x07,0xF2,0x87,0x00 ; R04 Has the maximum value NOW

