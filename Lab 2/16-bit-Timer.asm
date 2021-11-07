; Author: G Abhiram
; Date: 22-09-2021
; AVR Lab Experiment 2
; Aim: Use the 16 bit timer to make an LED blink with a duration of 1 second.
; Crystal Frequency is 1 MHz, so we make use of that in this questio  to use a prescaler of 64 for Timer-1 in AVR.
;



.INCLUDE  "M32DEF.INC"
LDI R16,HIGH(RAMEND) ;initialize  stack  pointer
OUT SPH,R16
LDI R16,LOW(RAMEND)
OUT SPL,R16
SBI DDRC,4 ;PC4  as  an  output
BEGIN:SBI PORTC,4 ;PC4  =  1 
RCALL  DELAY_1s
CBI PORTC,4 ;PC4  =  0
RCALL  DELAY_1s
RJMP  BEGIN
;-------------------  Timer1  delay
DELAY_1s:
LDI R20,HIGH  (15625-1)
OUT OCR1AH,R20 ;
LDI R20,LOW  (15625-1)
OUT OCR1AL,R20 ;
LDI R20,0x00
OUT TCNT1H,R20 ;TEMP  =  0x00
OUT TCNT1L,R20 ;TCNT1L  =  0x00,  TCNT1H  =  TEMP
LDI R20,0x00
OUT TCCR1A,R20 ;WGM11:10  =  00
LDI R20,0x3
OUT TCCR1B,R20 ;WGM13:12  =  00,  Normal  mode,  CS  =  CLK/64
AGAIN:IN R20,TIFR ;read  TIFR
SBRS R20,OCF1A ;if  OCF1A  is  set  skip  next  instruction
RJMP AGAIN
LDI R20,1<<OCF1A
OUT TIFR,R20 ;clear  OCF1A  flag 
LDI R19,0
OUT TCCR1B,R19 ;stop  timer
OUT TCCR1A,R19
RET