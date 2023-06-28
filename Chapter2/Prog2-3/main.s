; Demonstrates the use of SPACE directive along with variable initialization.
	EXPORT	__main
	AREA OUR_PROG, CODE, READONLY
__main
	; A = 5
	LDR		R0, =A		; R0 = Addr of A
	MOV 	R1, #5		; R1 = 5
	STR		R1, [R0]	; A = 5
	
	; B = 4
	LDR 	R0, = B		; R0 = Addr of B
	MOV 	R1, #4		; R1 = 4
	STR		R1, [R0]	; B = 4
	
	; R1 = A
	LDR		R0, =A		; R0 = Addr of A
	LDR		R1, [R0]	; R1 = 5
	
	; R2 = B
	LDR		R0, =B		; R0 = Addr of B
	LDR		R2, [R0]	; R2 = 4
	
	; C = R1 + R2 (C = A + B)
	ADD		R3, R1, R2	; R3 = A + B
	LDR		R0, =C		; R0 = Addr of C
	STR		R3, [R0]	; C = R3
	
LOOP
	B LOOP
	
	AREA OUR_DATA, DATA, READWRITE
	; Allocate the following in SRAM memory
A	SPACE	4
B	SPACE	4
C	SPACE	4
	
	END