; Given a 32 bit number, Identify even or odd without division
; We will load 1 into Result if odd and 0 if even
      AREA Program, CODE, READONLY
	 ENTRY
Main
     LDR R0, Result
	 LDR R1, Value
	 AND R1, R1, #0x00000001
	 STR R1, [R0]
	 SWI &11

Value	DCD	&5
Result	DCD	&40000000 
	 END
