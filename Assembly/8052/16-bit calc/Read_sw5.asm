$modde2

	CSEG at 0
	ljmp startup

	DSEG at 30H
	x:    ds 2
	y:    ds 2
	bcd:	ds 3
	
	BSEG
	mf:   dbit 1
	
	$include(math16.asm)

	CSEG

myLUT:
    DB 0C0H, 0F9H, 0A4H, 0B0H, 099H        ; 0 TO 4
    DB 092H, 082H, 0F8H, 080H, 090H        ; 4 TO 9
    DB 088H, 083H, 0C6H, 0A1H, 086H, 08EH  ; A to F



; Stores first inputed number, reads the second number, and performs desired operation
domath mac
	lcall bcd2hex				;stores previously inputed number to x
	lcall copy_xy				;copies numerand 1 to y
	lcall ClearDisplay			;clears display in anticipation of input of second number
	lcall Display				
	lcall Read_second_number	;jumps to code for reading the second numerand
	lcall bcd2hex				;stores second numerand to x
	lcall xchg_xy				;swaps x and y so numerand 1 is stored in x and numerand 2 in y
	lcall %0					;calls desired operation with numerands stored in x and y
	lcall hex2bcd				;converts result to bcd and stores it in display memory
	lcall Display				;displays result
endmac

Read_second_number:
	lcall ReadNumber
	key_is_one:
	jb KEY.1, Read_second_number_cont ;continues to read more digits for numerand 2 if equals key not pressed
	key_is_zero:
	jnb KEY.1, key_is_zero ;loops while equals pressed, ends input of numbers
	ret
	Read_second_number_cont:
	jnc Read_second_number		;Reads and checks that only switches 0-9 are used
	mov a, r7
	clr c
	subb a, #10
	jnc Read_second_number
	lcall Shift_Digits			;Shifts bcd digits to allow for next digit to be read
	lcall Display				;Displays currently inputed digits
	ljmp Read_second_number


check_for_operand:
key3_not_pressed:					;Checks key3 and, if pressed, waits until key has been let go
	jb KEY.3, key2_not_pressed
key3_is_pressed:
	jnb KEY.3, key3_is_pressed
	domath(add16)					;When key3 has been pressed, jumps to math macro for addition
	ret
key2_not_pressed:					;Likewise for key2/subtraction
	jb KEY.2, sw17_not_pressed
key2_is_pressed:
	jnb KEY.2, key2_is_pressed
	domath(sub16)
	ret
sw17_not_pressed:					;Likewise for sw17/multiplication
	mov a, SWC
	jnb acc.1, sw16_not_pressed
sw17_is_pressed:
	mov a, SWC
	jb acc.1, sw17_is_pressed
	domath(mul16)
	ret	
sw16_not_pressed:					;Likewise for sw16/division
	mov a, SWC
	jnb acc.0, return_to_calc
sw16_is_pressed:
	mov a, SWC
	jb acc.0, sw16_is_pressed
	domath(div16)
	ret
return_to_calc:
ret

Display:
	mov dptr, #myLUT
	; Display Digit 0
    mov A, bcd+0
    anl a, #0fh
    movc A, @A+dptr
    mov HEX0, A
	; Display Digit 1
    mov A, bcd+0
    swap a
    anl a, #0fh
    movc A, @A+dptr
    mov HEX1, A
	; Display Digit 2
    mov A, bcd+1
    anl a, #0fh
    movc A, @A+dptr
    mov HEX2, A
	; Display Digit 3
    mov A, bcd+1
    swap a
    anl a, #0fh
    movc A, @A+dptr
    mov HEX3, A
	; Display Digit 4
    mov A, bcd+2
    anl a, #0fh
    movc A, @A+dptr
    mov HEX4, A
    ret

ClearDisplay:		;clears display memory and hex displays 0-4
	clr a
	mov bcd+0, a  ;bcd+0 is an 8-bit value, but 2 bcd digits
	mov bcd+1, a
	mov bcd+2, a
	mov HEX0,#40H ;Displays "0"
	mov HEX1,#40H
	mov HEX2,#40H
	mov HEX3,#40H
	mov HEX4,#40H
	ret

Shift_Digits:
	mov R0, #4 ; shift left four bits
Shift_Digits_L0:
	clr c
	mov a, bcd+0
	rlc a
	mov bcd+0, a
	mov a, bcd+1
	rlc a
	mov bcd+1, a
	mov a, bcd+2
	rlc a
	mov bcd+2, a
	djnz R0, Shift_Digits_L0
	; R7 has the new bcd digit	
	mov a, R7
	orl a, bcd+0
	mov bcd+0, a
	; make the four most significant bits of bcd+2 zero
	mov a, bcd+2
	anl a, #0fH
	mov bcd+2, a
	ret

Wait50ms:
;33.33MHz, 1 clk per cycle: 0.03us
	mov R0, #30
L3: mov R1, #74
L2: mov R2, #250
L1: djnz R2, L1 ;3*250*0.03us=22.5us
    djnz R1, L2 ;74*22.5us=1.665ms
    djnz R0, L3 ;1.665ms*30=50ms
    ret

; Check if SW0 to SW15 are toggled up.  Returns the toggled switch in
; R7.  If the carry is not set, no toggling switches were detected.
ReadNumber:
	mov r4, SWA ; Read switches 0 to 7
	mov r5, SWB ; Read switches 8 to 15
	mov a, r4
	orl a, r5
	jz ReadNumber_no_number
	lcall Wait50ms ; debounce
	mov a, SWA
	clr c
	subb a, r4
	jnz ReadNumber_no_number ; it was a bounce
	mov a, SWB
	clr c
	subb a, r5
	jnz ReadNumber_no_number ; it was a bounce
	mov r7, #16 ; Loop counter
ReadNumber_L0:
	clr c
	mov a, r4
	rlc a
	mov r4, a
	mov a, r5
	rlc a
	mov r5, a
	jc ReadNumber_decode
	djnz r7, ReadNumber_L0
	sjmp ReadNumber_no_number	
ReadNumber_decode:
	dec r7
	setb c
ReadNumber_L1:
	mov a, SWA
	jnz ReadNumber_L1
ReadNumber_L2:
	mov a, SWB
	jnz ReadNumber_L2
	ret
ReadNumber_no_number:
	clr c
	ret

StudentNum:				;Displays student number for 2 seconds
	mov HEX7, #30H
	mov HEX6, #19H
	mov HEX5, #24H
	mov HEX4, #24H
	mov HEX3, #19H
	mov HEX2, #79H
	mov HEX1, #24H
	mov HEX0, #79H
	mov r3, #40
	Wait2Seconds:
	lcall Wait50ms
	djnz r3,Wait2Seconds
	mov HEX7, #7FH		;Clears displays unused for calculator (HEX5-7)
	mov HEX6, #7FH
	mov HEX5, #7FH	
ret
		
startup:				;Initiates startup code, including turning off LEDS and displaying student number
	mov SP, #7FH
	clr a
	mov LEDRA, a
	mov LEDRB, a
	mov LEDRC, a
	mov LEDG, a
	mov bcd+0, a
	mov bcd+1, a
	mov bcd+2, a
	lcall StudentNum
	lcall Display
	
calculator:						;loops forever, running calculator code
	lcall check_for_operand		;checks if user has completed inputing the first number
	lcall ReadNumber			;gets first numerand, checks to ensure only switches 0-9 are registered
	jnc calculator
	mov a, r7
	clr c
	subb a, #10
	jnc calculator
	lcall Shift_Digits
	lcall Display
	ljmp calculator
	
end

