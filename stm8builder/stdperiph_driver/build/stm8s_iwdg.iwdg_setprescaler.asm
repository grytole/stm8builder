;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:04 2017
;--------------------------------------------------------
	.module stm8s_iwdg_iwdg_setprescaler
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _IWDG_SetPrescaler
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_setprescaler.c: 49: void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
;	-----------------------------------------
;	 function IWDG_SetPrescaler
;	-----------------------------------------
_IWDG_SetPrescaler:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_setprescaler.c: 52: assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x03
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x05
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x06
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x34
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_setprescaler.c: 54: IWDG->PR = (uint8_t)IWDG_Prescaler;
	ldw	x, #0x50e1
	ld	a, (0x03, sp)
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_iwdg.iwdg_setprescaler.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
