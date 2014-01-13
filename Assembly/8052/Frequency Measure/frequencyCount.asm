$MODDE2

CSEG
org 0000H
   ljmp Startup

        CSEG                                        ; Absolute CODE segements at fixed memory locations
    myLUT:                                        ; Look-up table for 7-seg displays
    DB 0C0H, 0F9H, 0A4H, 0B0H, 099H                ; 0 TO 4
    DB 092H, 082H, 0F8H, 080H, 090H, 0FFH          ; 4 TO 9, OFF

CSEG    
hex2bcd:
        push acc
        push psw
        push AR0
        
        clr a
        mov R3, a ; Initialize BCD to 00-00-00 
        mov R4, a
        mov R5, a
        mov R6, a
        mov b, #24  ; Loop counter.

hex2bcd_L0:
        ; Shift binary left        
        mov a, R1
        mov c, acc.7 ; This way x remains unchanged!
        mov a, R0
        rlc a
        mov R0, a
        mov a, R1
        rlc a
        mov R1, a
        mov a, R2
        rlc a
        mov R2, a
        
    
        ; Perform bcd + bcd + carry using BCD arithmetic
        mov a, R3
        addc a, R3
        da a
        mov R3, a
        mov a, R4
        addc a, R4
        da a
        mov R4, a
        mov a, R5
        addc a, R5
        da a
        mov R5, a
        mov a, R6
        addc a, R6
        da a
        mov R6, a
      

        djnz b, hex2bcd_L0

        pop AR0
        pop psw
        pop acc
        ret
        
Display:
        mov dptr, #myLUT
        ; Display Digit 0
        mov A, R3
        anl a, #0fh
        movc A, @A+dptr
        mov HEX0, A
        ; Display Digit 1
        mov A, R3
        swap a
        anl a, #0fh
        movc A, @A+dptr
        mov HEX1, A
        ; Display Digit 2
        mov A, R4
        anl a, #0fh
        movc A, @A+dptr
        mov HEX2, A
        ; Display Digit 3
        mov A, R4
        swap a
        anl a, #0fh
        movc A, @A+dptr
        mov HEX3, A
        ; Display Digit 4
        mov A, R5
        anl a, #0fh
        movc A, @A+dptr
        mov HEX4, A
        ; Display Digit 5
        mov A, R5
        swap a
        anl a, #0fh
        movc A, @A+dptr
        mov HEX5, A
        ; Display Digit 6
        mov A, R6
        anl a, #0fh
        movc A, @A+dptr
        mov HEX6, A
        ; Display Digit 7
        mov A, R6
        swap a
        anl a, #0fh
        movc A, @A+dptr
        mov HEX7, A
        ret


correctLeadingZeros:
        ;if high part of R6 is zero
        mov a,R6
        anl a,#0F0H
        swap a
        jnz correctLeadingZeros_return
        ;turn off HEX7:
        mov a,R6
        anl a,#0FH
        orl a,#0A0H
        mov R6,a
        
        ;if low part of R6 is zero
        mov a,R6
        anl a,#0FH
        jnz correctLeadingZeros_return
        ;turn off HEX6:
        mov a,R6
        anl a,#0F0H
        orl a,#0AH
        mov R6,a
        
        ;if high part of R5 is zero
        mov a,R5
        anl a,#0F0H
        swap a
        jnz correctLeadingZeros_return
        ;turn off HEX5
        mov a,R5
        anl a,#0FH
        orl a,#0A0H
        mov R5,a
        
        ;if low part of R5 is zero
        mov a,R5
        anl a,#0FH
        jnz correctLeadingZeros_return
        ;turn off HEX4
        mov a,R5
        anl a,#0F0H
        orl a,#0AH
        mov R5,a
        
        ;if high part of R4 is zero
        mov a,R4
        anl a,#0F0H
        swap a
        jnz correctLeadingZeros_return
        ;turn off HEX3
        mov a,R4
        anl a,#0FH
        orl a,#0A0H
        mov R4,a
        
        ;if low part of R4 is zero
        mov a,R4
        anl a,#0FH
        jnz correctLeadingZeros_return
        ;turn off HEX2
        mov a,R4
        anl a,#0F0H
        orl a,#0AH
        mov R4,a
        
        ;if high part of R3 is zero
        mov a,R3
        anl a,#0F0H
        swap a
        jnz correctLeadingZeros_return
        ;turn off HEX1
        mov a,R3
        anl a,#0FH
        orl a,#0A0H
        mov R3,a
        
        ;if low part of R3 is zero
        mov a,R3
        anl a,#0FH
        jnz correctLeadingZeros_return
        ;turn off HEX0
        mov a,R3
        anl a,#0F0H
        orl a,#0AH
        mov R3,a
        
        ret
        
        correctLeadingZeros_return: ret


computeFreq:
		lcall multiplyOverflows
		mov R3, TL0
		mov R4, TH0
		mov R5, #0
		lcall add24
		ret


add24:
        ;x=x+y
        mov a,R0
        add a,R3
        mov R0,a
        mov a,R1
        addc a,R4
        mov R1,a
        mov a,R2
        addc a,R5
        mov R2,a
        ret

multiplyOverflows:
        ;x=65536*R7
        mov R3,#0FFH
        mov R4,#0FFH
        mov R5,#0
        mov R0,#0
        mov R1,#0
        mov R2,#0
        mov a,R7
        mov R6,a
        jnz multiplyOverflows_L1
        ret
        multiplyOverflows_L1:
        call add24;x=x+65536
        dec R6
        mov a,R6
        jnz multiplyOverflows_L1
        ret
        

; On the DE2-8052, with a 33.33MHz clock, one cycle takes 30ns
Wait1s:
        mov R7,#0
        mov R2, #176
        L3: mov R1, #250
        L2: mov R0, #250
        L1: djnz R0, L1 ; 3 machine cycles-> 3*30ns*250=22.5us
        jnb TF0,continue
        ;--------------------------------------------------------------------
        ;Overflow occured, increment R7, set the registers to 0, start timer:
        clr TF0
        inc R7
        ;--------------------------------------------------------------------
        continue:
        djnz R1, L2 ; 22.5us*250=5.625ms
        djnz R2, L3 ; 5.625ms*180=1s (approximately)
        ret

;Initializes timer/counter 0 as a 16-bit counter and counts number of pulses of T0 until timer is stopped
InitializeTimer:
        clr TR0 ; Stop timer 0 (just in case)
        mov a, #11110000B ; Clear the bits of timer 0
        anl a,TMOD
        orl a, #00000101B ; Set timer 0 as 16-bit counter
        mov TMOD, a
        clr TR0	; Stop timer 0
        mov TL0, #0		;Reset low bits of counter
        mov TH0, #0		;Reset high bits of counter
        setb TR0		;Start timer
        ret


Startup:
    	mov SP, #7FH ; Set the stack pointer to the begining of idata
        mov LEDRA, #0
        mov LEDRB, #0
        mov LEDRC, #0
        mov LEDG, #0
        setb T0      ;configure T0 as an input
forever:        
        lcall InitializeTimer	;Initialize timer and start counting
        lcall Wait1s	;Wait 1 second
        clr TR0			;Stop counter 0 after 1 second, TL0 and TH0 have the frequency
        
        call computeFreq   ;computes the frequency based on number of overlows and current count
        call hex2bcd		;converts computed frequency to BCD
        call correctLeadingZeros ;sets BCD values for leading zeros to "off"
        call display	;displays frequency
        
    jmp forever

END