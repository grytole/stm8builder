;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:16 2017
;--------------------------------------------------------
	.module stm8s_tim4_tim4_timebaseinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM4_TimeBaseInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_timebaseinit.c: 50: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
;	-----------------------------------------
;	 function TIM4_TimeBaseInit
;	-----------------------------------------
_TIM4_TimeBaseInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_timebaseinit.c: 53: assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
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
	ld	a, (0x03, sp)
	cp	a, #0x07
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x35
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_timebaseinit.c: 55: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
	ldw	x, #0x5347
	ld	a, (0x03, sp)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_timebaseinit.c: 57: TIM4->ARR = (uint8_t)(TIM4_Period);
	ldw	x, #0x5348
	ld	a, (0x04, sp)
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim4.tim4_timebaseinit.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
