7 ENTRY

  8

  9 Main

10                               LDR R0, Number1

11                               LDR R1, Number2

12                               MOV R3, #0

13 Loop

14                               CMP R1, #0

15                               BEQ Err

16                               CMP R0, R1

17                               BLT Done

18                               ADD R3, R3, #1

19                               SUB R0, R0, R1

20                               B Loop

21 Err

22                               MOV R3, #0xFFFFFFFF

23 Done

24                               STR R0, Remain

25                               STR R3, Quotient

26                               SWI &11

27

28                               AREA Data1, DATA

29 Number1            DCD &0276CBC1

30 Number2            DCD &0286

31                               ALIGN

32

33                               AREA Data2, DATA

34 Quotient             DCD 0

35 Remain                DCD 0

36                               ALIGN

37

38                               END
