; Shows the result when using various values of ALIGN.
	EXPORT		__main
	AREA		PROG2_4, CODE, READONLY

__main
	ADR			R2, DTA
	LDRB		R0, [R2]
	ADD			R1, R1, R0
H1
	B			H1

DTA	DCB			0x55
#ifdef ALIGNED_4
	ALIGN		4
#elif defined(ALIGNED_2)
	ALIGN		2
#endif
	DCB			0x22
	
	END
