;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:05 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_generateevent
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_GenerateEvent
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_generateevent.c: 59: void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
;	-----------------------------------------
;	 function TIM1_GenerateEvent
;	-----------------------------------------
_TIM1_GenerateEvent:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_generateevent.c: 62: assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
	tnz	(0x03, sp)
	jrne	00104$
	ldw	y, #___str_0+0
	push	#0x3e
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_generateevent.c: 65: TIM1->EGR = (uint8_t)TIM1_EventSource;
	ldw	x, #0x5257
	ld	a, (0x03, sp)
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_generateevent.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
