	EXPORT __main
	AREA MY_PRO3_6_CODE, CODE, READONLY

__main
	LDR		R2, =0x88888888
	LDR		R3, =0x33333333
	SUBS	R4, R2, R3
LOOP
	B		LOOP
	END