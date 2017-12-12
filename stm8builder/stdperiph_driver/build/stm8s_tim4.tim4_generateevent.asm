;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:15 2017
;--------------------------------------------------------
	.module stm8s_tim4_tim4_generateevent
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM4_GenerateEvent
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_generateevent.c: 51: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
;	-----------------------------------------
;	 function TIM4_GenerateEvent
;	-----------------------------------------
_TIM4_GenerateEvent:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_generateevent.c: 54: assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x36
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_generateevent.c: 57: TIM4->EGR = (uint8_t)(TIM4_EventSource);
	ldw	x, #0x5345
	ld	a, (0x03, sp)
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim4.tim4_generateevent.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
