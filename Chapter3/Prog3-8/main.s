	EXPORT	__main
	AREA MY_PROG3_8_CODE, CODE, READONLY
__main
	LDR		R0, =0xF62562FA
	LDR		R1, =0xF412963B
	MOV		R2, #0x21
	MOV		R3, #0x35
	SUBS	R5, R1, R0
	SBC		R6, R3, R2
LOOP
	B		LOOP
	END
