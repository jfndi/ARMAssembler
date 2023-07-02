; Multiplication. NOTE: no immediate value can be used as operands in this case.
	EXPORT	__main
	AREA MY_PROG3_9_CODE, CODE, READONLY

__main
	LDR		R1, =0xFFFFFFFF
	UMULL	R3, R4, R1, R1
LOOP
	B		LOOP
	END
