# EE2016 Fall 2021

NOTE: You can use these codes for reference/learning but even in case of the same question, please DO NOT submit the same code as given in this repo. Thanks!

**Lab**

- **Lab 1**: Simple computations like addition of two 8-bit and 16-bit numbers, multiplication of two 8-bit numbers using AVR Assembly, and coding a comparator in AVR Assembly Language. 
  - Problem 1 (Common 8-bit mathematical operation): Given two 8-bit binary words (byte), compute the sum and store it in register(s).
  - Problem 2 (16-bit addition using a 8-bit processor): Given two 16-bit binary words (byte), compute the sum and store it in register(s).
  - Problem 3 (Multiplication of two 8-bit numbers): Given two 8-bit binary words (byte), compute the product and store it in register(s).
  - Problem 4 (Largest of number given): Given a finite set of binary words, load them- from memory, identify the largest in the given set, and store this largest number in SRAM.

- **Lab 2**: Aims of  this  experiment  are:
  - Generate an external (logical) hardware interrupt using an emulation of a push button switch. 
  - Write an ISR to switch ON an LED for a few seconds (10 secs) and then switch OFF. (The lighting of  the  LED  could  be  verified  by  monitoring  the  signal  to  switch  it  ON). 
  - If there is time, you could try this also:  Use the 16 bit timer to make an LED blink with a duration of  1  second. Also, one needs to implement all of the above using C-interface.

- **Lab 3**: Solve the following engineering problems using ARM through assembly programs.
  - Compute the factorial of a given number using ARM processor through assembly programming
  - Combine the low four bits of each of the four consecutive bytes beginning at LIST into one 16-bit halfword. The value at LIST goes into the most signicant nibble of the result.       Store the result in the 32-bit variable RESULT.
  - Given a 32 bit number, identify whether it is an even or odd. (You implementation should not involve division).

- **Lab 4**: ARM C-Interfacing - Emulation of Switch LED and Stepper Motor Control
   -  Write a program (in C) to dis-assemble a byte into two nibbles from the DIP switch states, multiply and display the product in the LED.
   -  Write a C program to demonstrate the control of stepper motor to rotate in opposite direction to that of the direction shown in demo code. 
   -  Let us assume the step angle as 5 degrees. Write a C program to make the motor rotate until 100 degress and stop thereafter.
