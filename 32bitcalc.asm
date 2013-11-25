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
	move.l #6250000,d0     ; 100/100 second delay or 1 sec
	decLoop:
   	subq.l #1, d0
   	bne decLoop
   	rts


clear
	move.l #0, x
	jsr bin2bcd
	jsr display_bcd
	jmp calculator

get_operand
	jsr get_switch
	cmp.b #16,d0
	beq get_operand
	cmp.b #9,d0
	bgt operand_return
	jsr insert_bcd_digit
	jsr display_bcd
	jmp     get_operand
	operand_return:
	cmp.b #10, d0
	beq clear
	rts

operation
	jsr bcd2bin
	move.l y, d1
	move.l x, y
	move.l d1, x
	cmp.b #15, d7
	beq addition
	cmp.b #14, d7
	beq subtraction
	cmp.b #13, d7
	beq multiplication
	cmp.b #12, d7
	beq division
	rts
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
	jsr bin2bcd
	rts

startup
	move.l #34224121, x
	jsr bin2bcd
	jsr display_bcd
	move.l #0, x
	jsr wait2sec
	jsr clear
	jmp calculator

calculator
	jsr get_operand
	cmp.b #11, d0
	beq calculator
	move.l d0,d7
	jsr bcd2bin
	move.l x, y
	jsr get_operand
	jsr operation
	jsr display_bcd
	jmp calculator
