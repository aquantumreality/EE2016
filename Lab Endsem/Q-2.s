1             START:

2                           LDI         ZH, 0x08

3                           LDI         ZL, 0x00                           

4

5                           LPM       R2, Z                                               

6                            LDI         R20, 0xF0

7                            MOV      R3, R20

8                            AND       R3, R2                                     

9                            LDI         R21, 0x0F

10                         AND       R2, R21                  

11                         LDI         R22, 0x30

12                         MOV      R4, R22                           

13                         CP          R3, R4  

14                         BREQ    DISP

 15                        LDI         R23, 0x0A

 16                        MOV      R2, R23                             

 17    DISP:          LDI         ZH, 0x20

 18                        LDI         ZL, 0x00

 19                        MOV      ZL, R2

 20                        LPM       R5, Z

 21                        LDI         XH, 0x40

 22                        LDI         XL, 0x30     

 23                        ST          X, R5                  

 24                        RJMP    START
