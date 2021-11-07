; Read from the address 4004(equivalent to KBD_STATUS) 2nd bit from LSB. If that bit = 1, means a key is pressed. Otherwise wait for 1 ms.

START: LDI ZH,0x40;
LDI ZL,0x04;
REPEAT: LPM R0,Z ;  Read from address 4004 to the register r0
 LDI R16,0x02;
 AND R0,R16;
 BREQ REPEAT ; Not equal means a key is pressed, hence read the key from the location 4000
LDI ZH,0x40;
LDI ZL,0x00; Setting the location where the pressed key is going to come (equivalent to KBD_DATA)
LPM R2, Z; Read from that location
; Create a sleep time for 1 ms, let's say our period is 
; 50 X 250 = 12500 cycles. 12500 X 0.083 = 1 ms
LDI R17, 0x32
CONTINUE2: LDI R18, 0xFA
CONTINUE1: DEC R18
BRNE CONTINUE1
DEC R17
BRNE CONTINUE2
RJMP START