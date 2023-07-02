; This example show how to deal with the addition of two multi-word values.
	EXPORT	__main
	AREA MY_PRO3_4_CODE, CODE, READONLY

__main
; First value is: 0x35F62562FA
; Second value is: 0x21F412963B
	LDR 	R0, =0xF62562FA
	LDR		R1, =0xF412963B
	MOV		R2, #0x35
	MOV		R3, #0x21
	ADDS	R4, R0, R1
	ADC		R5, R2, R3
LOOP
	B		LOOP
	END
