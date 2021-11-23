START:

LDI      ZH, 0x08
LDI      ZL, 0x00                           
LPM      R2, Z                                               
LDI      R20, 0xF0
MOV      R3, R20
AND      R3, R2                                     
LDI      R21, 0x0F
AND      R2, R21                  
LDI      R22, 0x30
MOV      R4, R22                           
CP       R3, R4  
BREQ    DISP
LDI      R23, 0x0A
MOV      R2, R23                             


DISP:    LDI ZH, 0x20
LDI      ZL, 0x00
MOV      ZL, R2
LPM      R5, Z
LDI      XH, 0x40
LDI      XL, 0x30     
ST       X, R5                  
RJMP    START
