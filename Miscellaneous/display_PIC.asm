; Read from the address 4014(equivalent to DISP_STATUS). 3rd bit from LSB. If that bit = 1, means display is ready to display the character. Otherwise wait for 1 ms.
START: LDI ZH,0x40;
LDI ZL,0x14;
REPEAT: LPM R0,Z ; Read from address 4014 to the register R0
LDI R16,0x04;
AND R0,R16;
BREQ REPEAT ; Not equal means display is ready, hence display the value in 4010(equivalent to DISP_DATA)
LDI ZH,0x40
LDI ZL,0x10 ; Setting the location where the value to be displayed is going to come
LPM R2, Z ; Read from that location
; Create a sleep time for 100 ms
; 50 X 100 X 250 = 12500 cycles. 100 X 12500 X 0.083 = 1 ms
LDI R17,0x32
CONTINUE3: LDI R18, 0x64
CONTINUE2: LDI R19, 0x0FA
CONTINUE1: DEC R19
BRNE CONTINUE1
DEC R18
BRNE CONTINUE2
DEC R17
RJMP START