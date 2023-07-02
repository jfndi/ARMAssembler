; Shows the flag bits of status register for unsigned additions.
	EXPORT		__main
	AREA		MY_CODE, CODE, READONLY

__main
	LDR			R2, =0xFFFFFFF5
	MOV			R3, #0x0B
	ADDS		R1, R2, R3
	
	LDR			R2,	=0xFFFFFFFF
	ADDS		R1, R2, #0x95
H1
	B			H1
	
	END