;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:10 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_selectinputtrigger
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_SelectInputTrigger
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectinputtrigger.c: 55: void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
;	-----------------------------------------
;	 function TIM1_SelectInputTrigger
;	-----------------------------------------
_TIM1_SelectInputTrigger:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectinputtrigger.c: 58: assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
	ld	a, (0x03, sp)
	cp	a, #0x40
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x50
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x60
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x70
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x30
	jreq	00104$
	tnz	(0x03, sp)
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x3a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectinputtrigger.c: 61: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
	ldw	x, #0x5252
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x03, sp)
	ldw	x, #0x5252
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_selectinputtrigger.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
