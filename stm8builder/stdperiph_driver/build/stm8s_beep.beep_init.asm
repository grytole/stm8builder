;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:55 2017
;--------------------------------------------------------
	.module stm8s_beep_beep_init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _BEEP_Init
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_init.c: 56: void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
;	-----------------------------------------
;	 function BEEP_Init
;	-----------------------------------------
_BEEP_Init:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_init.c: 59: assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
	tnz	(0x03, sp)
	jreq	00106$
	ld	a, (0x03, sp)
	cp	a, #0x40
	jreq	00106$
	ld	a, (0x03, sp)
	cp	a, #0x80
	jreq	00106$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_init.c: 62: if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
	ldw	x, #0x50f3
	ld	a, (x)
	and	a, #0x1f
	cp	a, #0x1f
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_init.c: 64: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
	ldw	x, #0x50f3
	ld	a, (x)
	and	a, #0xe0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_init.c: 65: BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
	ldw	x, #0x50f3
	ld	a, (x)
	or	a, #0x0b
	ld	(x), a
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_init.c: 69: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
	ldw	x, #0x50f3
	ld	a, (x)
	and	a, #0x3f
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_init.c: 70: BEEP->CSR |= (uint8_t)(BEEP_Frequency);
	ldw	x, #0x50f3
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x50f3
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_beep.beep_init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
