$modde2

	CSEG at 0
	ORG 000H
	ljmp startup
	$include(adctable.asm)
	
	DSEG at 30H
	bcd: ds 2
	x: ds 2
	y: ds 2
	
	BSEG
	nf: dbit 1
	
	CSEG
	
	myLUT:
    DB 0C0H, 0F9H, 0A4H, 0B0H, 099H        ; 0 TO 4
    DB 092H, 082H, 0F8H, 080H, 090H        ; 4 TO 9
    DB 03FH								   ; minus sign
    
add16:
	push acc
	push psw
	mov a, x+0
	add a, y+0
	mov x+0, a
	mov a, x+1
	addc a, y+1
	mov x+1, a
	pop psw
	pop acc
	ret

mul16:
	push acc
	push b
	push psw
	push AR0
	push AR1
		
	; R0 = x+0 * y+0
	; R1 = x+1 * y+0 + x+0 * y+1
	
	; Byte 0
	mov	a,x+0
	mov	b,y+0
	mul	ab		; x+0 * y+0
	mov	R0,a
	mov	R1,b
	
	; Byte 1
	mov	a,x+1
	mov	b,y+0
	mul	ab		; x+1 * y+0
	add	a,R1
	mov	R1,a
	clr	a
	addc a,b
	mov	R2,a
	
	mov	a,x+0
	mov	b,y+1
	mul	ab		; x+0 * y+1
	add	a,R1
	mov	R1,a
	
	mov	x+1,R1
	mov	x+0,R0

	pop AR1
	pop AR0
	pop psw
	pop b
	pop acc
	
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
	ret
	
Wait50ms: 		;33.33MHz, 1 clk per cycle: 0.03us
	mov R0, #30
L3: mov R1, #74
L2: mov R2, #250
L1: djnz R2, L1 ;3*250*0.03us=22.5us
    djnz R1, L2 ;74*22.5us=1.665ms
    djnz R0, L3 ;1.665ms*30=50ms
    ret
    
ReadNumber:
    mov x+0, SWA
    mov A, SWB
    anl A, #00000011B
    mov x+1, A
    ret
    
hex2bcd:
	push acc
	push psw
	push AR0
	
	clr a
	mov bcd+0, a ; Initialize BCD to 00-00-00 
	mov bcd+1, a
	mov r0, #16  ; Loop counter.

	hex2bcd_L0:
	; Shift binary left	
	mov a, x+1
	mov c, acc.7 ; This way x remains unchanged!
	mov a, x+0
	rlc a
	mov x+0, a
	mov a, x+1
	rlc a
	mov x+1, a
    
	; Perform bcd + bcd + carry using BCD arithmetic
	mov a, bcd+0
	addc a, bcd+0
	da a
	mov bcd+0, a
	mov a, bcd+1
	addc a, bcd+1
	da a
	jnb nf, continue
	setb acc.7
	clr acc.6
	setb acc.5
	clr acc.4
	continue:
	mov bcd+1, a

	djnz r0, hex2bcd_L0

	pop AR0
	pop psw
	pop acc
	ret

checkNeg:
	mov a, x+1
	jb acc.7, negative
	clr nf
	ret
	negative:
	lcall fixNeg
	setb nf
	ret
	
fixNeg:
	push acc
	push psw
	clr c
	clr a
	subb a, x+0
	mov x+0, a
	clr a
	subb a, x+1
	mov x+1, a
	pop psw
	pop acc
	ret
	
ADCtoTemp:
	mov dptr, #adctable
    mov y, #2                        ; Each row has two entries (DW is two bytes)
    lcall mul16                ; Increment by two
    mov y+1, dph                ; Sets high to the first 8-bits of y
    mov y+0, dpl                ; Sets low to the last 8-bits of y
    lcall add16                        ; 
    mov dph, x+1                ; Sets high to the first 8-bits of x
    mov dpl, x+0                ; Sets low to the last 8-bits of x

    clr a
    movc a, @a+dptr                ; Selects the first 8-bits to display
    mov x+1, a                        ; Sets the first 8-bits of the value
    inc dptr                        ; Increments dptr to select second bit
    clr a 
    movc a, @a+dptr                ; Selects the second 8-bits to display
    mov x+0, a                        ; Sets the second 8-bits of the value
    ret  
    
Startup:
    mov SP, #7FH
	clr a
	mov LEDRA, a
	mov LEDRB, a
	mov LEDRC, a
	mov LEDG, a
	mov bcd+0, a
	mov bcd+1, a
	lcall Display
	
myProgram:
	lcall ReadNumber
	lcall ADCtoTemp
	lcall checkNeg
	lcall hex2bcd
	lcall display
	ljmp myProgram
	
	end