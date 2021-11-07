 AREA Program, CODE, READONLY 
 ENTRY 
Main 
 LDR R0, Result 
 LDR R1, Value 
 MOV R2, #1 
 MOVS R1, R1
 BEQ Done 
Loop 
 MUL R3, R2, R1 
 MOV R2, R3 
 SUBS R1, R1, #1 
 BEQ Done 
 B Loop  
Done 
 STR R2, [R0] 
 SWI &11 
 
Value DCD 0                                      ;any value can be chosen 
Result DCD &40000000 
 END
