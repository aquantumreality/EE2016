    AREA Program, CODE, READONLY
	ENTRY
Main
	LDR	R1, Value1
	SUB	R2, R1, #1
	LDR R4, Value2
    CMP R1, #0
	BNE Loop1
Loop1
    CMP R2, #0
	BNE Loop2
Loop2
	MUL	R3, R1, R2
	MOV	R1, R3
	SUB	R2, R2, #1
	CMP	R2, #0
	BNE	Loop2
	STR	R1, Result
	SWI	&11
Value1  DCD &5
Value2  DCD &1
Result	DCD	0
	END