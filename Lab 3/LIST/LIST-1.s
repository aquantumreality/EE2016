 AREA Program, CODE, READONLY 
 ENTRY 
Main 
 ADR R0, LIST1 
 LDR R3, Result 
 LDR R1, [R0] 
 AND R1, R1, #0xF 
 MOV R2, R1, LSL #12 
 LDR R1, [R0, #4] 
 AND R1, R1, #0xF 
 MOV R1, R1, LSL #8 
 EOR R2, R2, R1 
 LDR R1, [R0, #8] 
 AND R1, R1, #0xF 
 MOV R1, R1, LSL #4 
 EOR R2, R2, R1 
 LDR R1, [R0, #12] 
 AND R1, R1, #0xF 
 EOR R2, R2, R1 
 STR R2, [R3] 
 SWI &11 
  
LIST1 DCD &1A, &2B, &3C, &4D        ;any  list of value can be chosen 
Result DCD &40000000 
 END
