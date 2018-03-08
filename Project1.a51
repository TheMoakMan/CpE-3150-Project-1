#include <reg932.inc>

led1 	equ 0a4h
led2 	equ 85h
led3 	equ 0a7h
led4 	equ 86h
led5 	equ 96h
led6 	equ 84h
led7 	equ 0a5h
led8 	equ 87h
led9 	equ 0a6h
sw1 	equ 0a0h
sw2 	equ 81h
sw3		equ 0a3h
sw4		equ 82h
sw5		equ 94h
sw6		equ	80h
sw7		equ	0a1h
sw8		equ	83h
sw9		equ	0a2h


cseg at 0			; Start of code segment set to address 0
		mov P2M1,#0		; set Port 2 to bi-directional
	    mov P1M1,#0		; set Port 1 to bi-directional
	    mov P0M1,#0		; set Port 0 to bi-directional
      
	  loop:				; endless loop label
		mov c,sw1		; Move Switch 1 value into C
		mov led1,c		; Write C to LED 1  Switches and LEDs are active low
		mov c,sw2		; Rinse and repeat for all the other switches and LEDs
		mov led2,c		
		mov c,sw3		
		mov led3,c		
		mov c,sw4		
		mov led4,c		
		mov c,sw5		
		mov led5,c		
		mov c,sw6		
		mov led6,c		
		mov c,sw7		
		mov led7,c		
		mov c,sw8		
		mov led8,c		
		mov c,sw9		
		mov led9,c		
		sjmp loop		

end				; tells assembler that this is the end
					; of the assembly language program   
   
