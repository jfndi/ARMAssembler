; In ARM ABI, registers R0-R3 are clobbered by function calls. On the
; other hand regsiters R4-R15 should be preserved between function calls.
	EXPORT __main
	AREA MY_PROG4_15_CODE, CODE, READONLY

__main PROC
	BL		DELAY
HERE
	B		HERE
	ENDP

DELAY PROC
	PUSH	{R7}
	LDR		R7, =120000
D_1
	SUBS	R7, R7, #1
	BNE		D_1
	POP		{R7}
	BX		LR
	ENDP
	
	END
