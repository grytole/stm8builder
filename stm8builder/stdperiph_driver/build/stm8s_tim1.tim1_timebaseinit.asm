;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:09 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_timebaseinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_TimeBaseInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_timebaseinit.c: 53: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
;	-----------------------------------------
;	 function TIM1_TimeBaseInit
;	-----------------------------------------
_TIM1_TimeBaseInit:
	sub	sp, #4
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_timebaseinit.c: 59: assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
	tnz	(0x09, sp)
	jreq	00104$
	ld	a, (0x09, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x09, sp)
	cp	a, #0x20
	jreq	00104$
	ld	a, (0x09, sp)
	cp	a, #0x40
	jreq	00104$
	ld	a, (0x09, sp)
	cp	a, #0x60
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_timebaseinit.c: 62: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
	ld	a, (0x0a, sp)
	clr	(0x01, sp)
	ldw	x, #0x5262
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_timebaseinit.c: 63: TIM1->ARRL = (uint8_t)(TIM1_Period);
	ld	a, (0x0b, sp)
	ldw	x, #0x5263
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_timebaseinit.c: 66: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
	ld	a, (0x07, sp)
	clr	(0x03, sp)
	ldw	x, #0x5260
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_timebaseinit.c: 67: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
	ld	a, (0x08, sp)
	ldw	x, #0x5261
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_timebaseinit.c: 70: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
	ldw	x, #0x5250
	ld	a, (x)
	and	a, #0x8f
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_timebaseinit.c: 71: | (uint8_t)(TIM1_CounterMode));
	or	a, (0x09, sp)
	ldw	x, #0x5250
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_timebaseinit.c: 74: TIM1->RCR = TIM1_RepetitionCounter;
	ldw	x, #0x5264
	ld	a, (0x0c, sp)
	ld	(x), a
	addw	sp, #4
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_timebaseinit.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
