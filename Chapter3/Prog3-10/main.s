; Illustrates RSB (Reverse Subtract)
	EXPORT __main
	AREA MY_PRO3_10_CODE, CODE, READONLY

__main
	MOV		R1, #0x1
	RSB		R0, R1, #0
LOOP
	B		LOOP
	END
