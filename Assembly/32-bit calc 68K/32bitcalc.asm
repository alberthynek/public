;
; by Albert Hynek (2013)
;

PortA	equ	$00400000
PortB	equ	$00400002
PortC	equ	$00400004
PortD	equ	$00400006
HEXA	equ	$00400010
HEXB	equ	$00400012
HEXC	equ	$00400014
HEXD	equ	$00400016

	org	$10000	;set the start address for our variables in Ram
x          ds.l          1
y          ds.l          1
bcd	ds.b	5

	org	$00800000
	jmp startup

           ; Load the library of 32-bit operations
           include math32_68k.asm



wait2sec
	move.l #6250000,d0     ; 2 sec
	decLoop:
   	subq.l #1, d0	; subtracts 1 from d0, sets Z flag when result is zero
   	bne decLoop	; loops until z flag is set (counter has counted down to zero)
   	rts


clear			;clears both x and all bcd variables (and hex displays)
	move.l #0, x
	jsr bin2bcd
	jsr display_bcd
	jmp calculator

get_operand			;gets a number from the user and displays it
	jsr get_switch
	cmp.b #16,d0
	beq get_operand	;if d0 is 16, no switch has been registered, loop back to get_switch
	cmp.b #9,d0
	bgt operand_return	;if a switch from 10-15 has been registered, stop registering switches
	jsr insert_bcd_digit
	jsr display_bcd
	jmp     get_operand	;continue displaying and storing input until switches 10-15 are activated
	operand_return:
	cmp.b #10, d0	;if switch is 10, clear
	beq clear
	rts		;if 11-15 (operators), return

operation
	jsr bcd2bin	;first store second number in x
	move.l y, d1	;swap x and y
	move.l x, y
	move.l d1, x
	cmp.b #15, d7
	beq addition	;if the stored operation is +, jump to addition
	cmp.b #14, d7
	beq subtraction	;if -, jump to subtraction
	cmp.b #13, d7
	beq multiplication	;if *, jump to multiplication
	cmp.b #12, d7
	beq division	;if /, jump to division
	rts		;if somehow no operation was stored, return
	addition:
	jsr add32
	jmp operation_complete
	subtraction:
	jsr sub32
	jmp operation_complete
	multiplication:
	jsr mul32
	jmp operation_complete
	division:
	jsr div32
	jmp operation_complete

	operation_complete:
	jsr bin2bcd	;send x to bcd variables and return
	rts

startup
	move.l #34224121, x	;send student number to bcd variables
	jsr bin2bcd
	jsr display_bcd	;display student number
	jsr wait2sec	;wait 2 seconds
	jsr clear		;stop displaying student number
	jmp calculator	;jump to my calculator code

calculator
	jsr get_operand	;get first number
	cmp.b #11, d0
	beq calculator	;if user entered equal sign after first number, loop back and get the first number again
	move.l d0,d7	;save operator to d7 (so it doesn't get overriden when the next number is entered)
	jsr bcd2bin	;store first number in x
	move.l x, y	;move x to y to make room for second number
	jsr get_operand	;get second number
	jsr operation	;do math (we can assume that since we have kicked out of get_operand, the user has input an equals sign)
	jsr display_bcd	;display result
	jmp calculator