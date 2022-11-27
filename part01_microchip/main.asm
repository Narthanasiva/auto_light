;
; part01_microchip.asm
;
; Created: 10/26/2022 11:52:13 PM
; Author : Narthana S
;


; Replace with your application code
.include "m328pdef.inc"

start:
	SBI DDRD, 0	
	CBI DDRB, 0		

forever:
L1:	SBIS PINB, 0	
	RJMP L2
	SBI PORTD, 0	
	SBIC PINB, 0	
	RJMP L1
L2: CBI PORTD, 0	
	rjmp forever
