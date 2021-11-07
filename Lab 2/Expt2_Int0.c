/*
 * Author: G Abhiram
 * Date: 22-09-2021
 * AVR Lab Experiment 2
 * Aim: C-interfacing of LED blinking IN PB0 10 times (ON(or OFF) = 1 sec, duty cycle is 50%) in a ATMega8A device using External Interrupt Request 0
 * Crystal Frequency is 1 MHz, so the stop watch count should be approximately 10^6 seconds. 
 */
#define F_CPU 1000000  // clock/XTAL frequency

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

ISR (INT1_vect) // ISR from INT1 to perform the task
{
	int i;
	for (i=1;i<=10;i++) // for 10 times LED blink

	{
		PORTB=0x01;
		_delay_ms(1000);   // delay of 1 sec
		PORTB=0x00;
		_delay_ms(1000);
		
	}
	
	
}
int main(void)
{
	//Set the input/output pins appropriately
	//To enable interrupt and port interfacing
	//For LED to blink
	DDRD=0x00;   //Set appropriate data direction for D
	DDRB=0x01;   //Make PB0 as output
	MCUCR=0x00;  //Set MCUCR to level triggered
	GICR=0x40;   //Enable external interrupt 1
	PORTB=0x00;
	sei();       //Enabling global interrupt flag

	while (1) //wait
	{

	}
}