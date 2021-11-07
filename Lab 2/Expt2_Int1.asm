; Author: G Abhiram
; Date: 22-09-2021
; AVR Lab Experiment 2
; Aim: To demonstrate blinking of an LED IN PB0 10 times (ON(or OFF) = 1 sec, duty cycle is 50%) in a ATMega8A device using External Interrupt Request 1
; Crystal Frequency is 1 MHz, so the stop watch count should be approximately 10^6 seconds. 
;

.org 0x0000
rjmp reset

.org 0x002
rjmp int1_ISR

.org 0x100

reset:

      ;loading stack pointer address
	  LDI R16, 0x70
	  OUT SPL, R16 
	  LDI R16, 0x00
	  OUT SPH, R16

	  SBI DDRB, 0; Interface port B pin0 to be output, to view the LED blinking

	  LDI R16, 0x00
	  OUT DDRD, R16

	  ;set MCUCR to enable low level interrupt
	  OUT MCUCR, R16

	  ; Set GICR register to enable interrupt 1
	  LDI R16, 0x80;
	  OUT GICR, R16 

	  LDI R16, 0x00
	  OUT PORTB, R16

	  SEI
	  
ind_loop: rjmp ind_loop

int1_ISR: IN R16, SREG 
          PUSH R16
		  ;Creating a loop counter so to keep a count of number of times the LED blinks (10)
		  LDI R16, 0x0A
		  MOV R0, R16


        ;loops to make LED blink for one second
	c1: LDI R16, 0x01; ON state now
		OUT PORTB, R16
		
		LDI R16, 8   ; Initialising counter to loop for 8 times
	a0: LDI R17, 125 ; Initialising counter to loop for 125 times
	a1: LDI R18, 250 ; Initialising counter to loop for 250 times
	a2: DEC R18
		NOP
		BRNE a2

;Since a2 takes 4 machine cycles (1 extra due to NOP), the approximate count shown by the stop watch for these nested loops is is 4 x 250 x 125 x 8 = 1,000,000 microseconds (or) 1 second

		DEC R17
		BRNE a1

		DEC R16
		BRNE a0

	c2: LDI R16, 0x00; OFF state now
		OUT PORTB, R16

		LDI R16, 8   ; Initialising counter to loop for 8 times
	b0: LDI R17, 125 ; Initialising counter to loop for 125 times
    b1: LDI R18, 250 ; Initialising counter to loop for 250 times 
	b2: DEC R18
	    NOP
		BRNE b2

;Since b2 takes 4 machine cycles (1 extra due to NOP), the approximate count shown by the stop watch for these nested loops is is 4 x 250 x 125 x 8 = 1,000,000 microseconds (or) 1 second

		DEC R17
		BRNE b1

		DEC R16
		BRNE b0

	    DEC R0
	    BRNE c1
	    POP R16
	    OUT SREG, R16

	RETI


