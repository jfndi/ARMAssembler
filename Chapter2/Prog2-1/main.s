	EXPORT	__main
	AREA	PROG_2_1, CODE, READONLY
__main
	MOV	R1, #0x25	; R1 = #0x25
	MOV R2, #0x34	; R2 = #0x34
	ADD R3, R2, R1	; R3 = R2 +R1
HERE
	B	HERE		; Endless loop
	END
