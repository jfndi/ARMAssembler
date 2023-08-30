; This program places some data into registers and pushes them onto the stack.
	EXPORT __main
	AREA MY_PROG4_13_CODE, CODE, READONLY

__main PROC
	LDR		R0, =0x123
	LDR		R1, =0x455
	LDR		R2, =0x6677
	PUSH	{R0}
	PUSH	{R1}
	PUSH	{R2}
	MOV		R0, #0
	MOV		R1, #0
	MOV		R2, #0
	POP		{R2}
	POP		{R1}
	POP		{R0}
HERE
	B		HERE
	ENDP
	END