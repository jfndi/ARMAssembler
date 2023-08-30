; Use this file for testing things.
	EXPORT __main
	AREA MY_TEST_CODE, CODE, READONLY
	
GRADES DCB 69, 87, 96, 45, 75

__main
	LDR		R0, =GRADES
	LDRB	R1, [R0]
HERE
	B 		HERE
	END
