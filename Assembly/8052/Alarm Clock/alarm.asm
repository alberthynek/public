; Blinky_Int.asm: blinks LEDR0 of the DE2-8052 each second.
; Also generates a 2kHz signal at P0.0 using timer 0 interrupt.
; Also keeps a BCD counter using timer 2 interrupt.

$MODDE2

org 0000H
	ljmp setup
	
org 000BH
	ljmp ISR_timer0
	
org 001BH
	ljmp ISR_timer1

DSEG at 30H
hours: ds 1
minutes: ds 1
seconds: ds 1
alarm_hours: ds 1
alarm_minutes: ds 1
alarm_seconds: ds 1
Cnt_10ms:  ds 1

BSEG
alarm: dbit 1	;alarm flag - 0 if off, 1 if on
ampm: dbit 1	;am/pm flag - 0 if am, 1 if pm
alarm_ampm: dbit 1 ;am/pm flag for alarm

CSEG

; Look-up table for 7-segment displays
myLUT:
    DB 0C0H, 0F9H, 0A4H, 0B0H, 099H
    DB 092H, 082H, 0F8H, 080H, 090H
    DB 0FFH ; All segments off

CLK EQU 33333333
FREQ_0 EQU 200
FREQ_1 EQU 100
TIMER0_RELOAD EQU 65536-(CLK/(12*2*FREQ_0))
TIMER1_RELOAD EQU 65536-(CLK/(12*FREQ_1))

ISR_timer1:

    mov TH1, #high(TIMER1_RELOAD)
    mov TL1, #low(TIMER1_RELOAD)

	push psw
	push acc
	push dpl
	push dph

	jb SWA.0, clock_update_display	;time is being set by user - no need to update clock
	
	mov a, Cnt_10ms
	inc a
	mov Cnt_10ms, a
	cjne a, #100, clock_update_display	;update display every 10 ms
	mov Cnt_10ms, #0	
	
 	mov a, seconds ;if a second has passed, increment seconds displays
    add a, #1
    da a
    mov seconds, a
    cjne A, #60H, clock_update_display
    mov seconds, #0

    mov a, minutes
    add a, #1
    da a
    mov minutes, a
    cjne A, #60H, clock_update_display
    mov minutes, #0

    mov a, hours
    add a, #1
    da a
    mov hours, a
    cjne A, #12H, tod_continue
	cpl ampm
	tod_continue:
    cjne A, #13H, clock_update_display
    mov hours, #1
    cpl ampm

clock_update_display:
	jnb SWA.1, display_clock
	lcall alarm_update_display
	jmp do_nothing
	
	display_clock:
	mov dptr, #myLUT

	jb ampm, display_pm
	mov HEX0, #10001000B
	sjmp display_time
	display_pm:
	mov HEX0, #10001100B

	display_time:
	mov a, seconds
	anl a, #0fH
	movc a, @a+dptr
	mov HEX2, a
	mov a, seconds
	swap a
	anl a, #0fH
	movc a, @a+dptr
	mov HEX3, a

	mov a, minutes
	anl a, #0fH
	movc a, @a+dptr
	mov HEX4, a
	mov a, minutes
	swap a
	anl a, #0fH
	movc a, @a+dptr
	mov HEX5, a

	mov a, hours
	anl a, #0fH
	movc a, @a+dptr
	mov HEX6, a
	mov a, hours
	jb acc.4, clock_last_digit
	mov a, #0A0H		;turn off HEX7 instead of displaying zero
clock_last_digit:
	swap a
	anl a, #0fH
	movc a, @a+dptr
	mov HEX7, a
check_alarm:

	mov a, #0						; check that both the alarm and time are in the same time of day
	jnb ampm, check_alarm_0
	inc a
	check_alarm_0:
	jnb alarm_ampm, check_alarm_1
	inc a
	check_alarm_1:
	cjne A, #1, check_alarm_3
	jmp do_nothing
	check_alarm_3:
	mov a, hours
	cjne A, alarm_hours, do_nothing
	mov a, minutes
	cjne A, alarm_minutes, do_nothing
	mov a, seconds
	cjne A, alarm_seconds, do_nothing
	setb alarm
	
do_nothing:
	jnb SWA.2, timer1_ISR_return
	clr alarm
	mov alarm_seconds, #00H
    mov alarm_minutes, #00H
    mov alarm_hours, #00H
    clr alarm_ampm
	timer1_ISR_return:
	pop dph
	pop dpl
	pop acc
	pop psw
	
	reti

ISR_timer0:
	jnb alarm, alarm_off
	cpl P0.0
	alarm_off:
    mov TH0, #high(TIMER0_RELOAD)
    mov TL0, #low(TIMER0_RELOAD)
	reti

alarm_update_display:
	mov dptr, #myLUT

	jb alarm_ampm, alarm_display_pm
	mov HEX0, #10001000B
	sjmp alarm_display_time
	alarm_display_pm:
	mov HEX0, #10001100B

	alarm_display_time:
	mov a, alarm_seconds
	anl a, #0fH
	movc a, @a+dptr
	mov HEX2, a
	mov a, alarm_seconds
	swap a
	anl a, #0fH
	movc a, @a+dptr
	mov HEX3, a

	mov a, alarm_minutes
	anl a, #0fH
	movc a, @a+dptr
	mov HEX4, a
	mov a, alarm_minutes
	swap a
	anl a, #0fH
	movc a, @a+dptr
	mov HEX5, a

	mov a, alarm_hours
	anl a, #0fH
	movc a, @a+dptr
	mov HEX6, a
	mov a, alarm_hours
	jb acc.4, alarm_last_digit
	mov a, #0A0H		;turn off HEX7 instead of displaying zero
alarm_last_digit:
	swap a
	anl a, #0fH
	movc a, @a+dptr
	mov HEX7, a
ret

	
;For a 33.33MHz clock, one cycle takes 30ns
WaitHalfSec:
	mov R2, #90
L3: mov R1, #250
L2: mov R0, #250
L1: djnz R0, L1
	djnz R1, L2
	djnz R2, L3
	ret
	
setup:
	mov SP, #7FH
	mov LEDRA,#0
	mov LEDRB,#0
	mov LEDRC,#0
	mov LEDG,#0
	mov P0MOD, #00000001B ; P0.0 as output
	setb P0.0

    mov seconds, #00H
    mov minutes, #00H
    mov hours, #12H
    mov alarm_seconds, #00H
    mov alarm_minutes, #00H
    mov alarm_hours, #00H
    mov Cnt_10ms, #0
    clr ampm
    clr alarm_ampm


    mov TMOD,  #00010001B ; GATE=0, C/T*=0, M1=0, M0=1: 16-bit timer
	clr TR0 ; Disable timer 0
	clr TF0
    mov TH0, #high(TIMER0_RELOAD)
    mov TL0, #low(TIMER0_RELOAD)
    setb TR0 ; Enable timer 0
    setb ET0 ; Enable timer 0 interrupt
    
    clr TR1 ; Disable timer 0
	clr TF1
    mov TH1, #high(TIMER1_RELOAD)
    mov TL1, #low(TIMER1_RELOAD)
    setb TR1 ; Enable timer 0
    setb ET1 ; Enable timer 0 interrupt
     
    setb EA  ; Enable all interrupts

clock:
	jnb SWA.0, alarm_set
	jb KEY.3, KEY_2
	jnb KEY.3, $ 		; debounce
	mov a, hours
	add a, #1
	da a
	mov hours, a
	cjne A, #12H, clock_tod_continue
	cpl ampm
	clock_tod_continue:
	cjne A, #13H, KEY_2  ; rollover to 1 from 12
	mov hours, #1
	
	KEY_2:
	jb KEY.2, KEY_1
	jnb KEY.2, $
	mov a, minutes
	add a, #1
	da a
	mov minutes, a
	cjne A, #60H, KEY_1
	mov minutes, #1
	
	KEY_1:
	jb KEY.1, clock
	jnb KEY.1, $
	mov a, seconds
	add a, #1
	da a
	mov seconds, a
	cjne A, #60H, clock
	mov seconds, #1

alarm_set:
	jnb SWA.1, clock
	jb KEY.3, a_KEY_2
	jnb KEY.3, $ 		; debounce
	mov a, alarm_hours
	add a, #1
	da a
	mov alarm_hours, a
	cjne A, #12H, alarm_tod_continue
	cpl alarm_ampm
	alarm_tod_continue:
	cjne A, #13H, a_KEY_2  ; rollover to 1 from 12
	mov alarm_hours, #1
	
	a_KEY_2:
	jb KEY.2, a_KEY_1
	jnb KEY.2, $
	mov a, alarm_minutes
	add a, #1
	da a
	mov alarm_minutes, a
	cjne A, #60H, a_KEY_1
	mov alarm_minutes, #1
	
	a_KEY_1:
	jb KEY.1, clock
	jnb KEY.1, $
	mov a, alarm_seconds
	add a, #1
	da a
	mov alarm_seconds, a
	cjne A, #60H, jump_to_clock
	mov alarm_seconds, #1
	
	jump_to_clock:
	ljmp clock
END
