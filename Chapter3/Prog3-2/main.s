; Shows the flag bits of status register for unsigned additions.
	EXPORT		__main
	AREA		PROG3_2_CODE, CODE, READONLY

__main
	LDR			R2, =0xFFFFFFF1
	MOV			R3, #0x0F
	ADDS		R3, R3, R2
	ADD			R3, R3, #0x7
	MOV			R1, R3
H1
	B			H1
	
	END