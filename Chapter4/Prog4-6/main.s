; Branch address offset calculation.
	EXPORT __main
	AREA MY_PROG4_6_CODE, CODE, READONLY

__main
	MOV 	R1, #0x15
	B		THERE
	MOV		R1, #0x25
	MOV		R2, #0x35
	MOV		R3, #0x45
THERE
	MOV		R4, #0x55
HALT
	B		HALT
	END
