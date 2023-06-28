; Sample of storing fixed data in program memory.
	EXPORT	__main
	AREA	PROG2_2, CODE, READONLY
__main
	LDR		R2, =OUR_FIXED_DATA	; Point to OUR_FIXED_DATA
	LDRB	R0, [R2]			; Load R0 with the content pointed to by R2
	ADD 	R1, R1, R0			; R1 = R1 + R0
HERE
	B HERE						; Endless loop
	
	AREA LOOKUP_EXAMPLE, DATA, READONLY
OUR_FIXED_DATA
	DCB		0x55, 0x33, 1, 2, 3, 4, 5	;, 6
	DCD		0x23222120, 0x30
	DCW		0x4540, 0x50
	END
