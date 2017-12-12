;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:15 2017
;--------------------------------------------------------
	.module stm8s_tim4_tim4_itconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM4_ITConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_itconfig.c: 54: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM4_ITConfig
;	-----------------------------------------
_TIM4_ITConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_itconfig.c: 57: assert_param(IS_TIM4_IT_OK(TIM4_IT));
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x39
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_itconfig.c: 58: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x05, sp)
	jreq	00109$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00109$
	ldw	y, #___str_0+0
	push	#0x3a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_itconfig.c: 60: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_itconfig.c: 63: TIM4->IER |= (uint8_t)TIM4_IT;
	ldw	x, #0x5343
	ld	a, (x)
	or	a, (0x04, sp)
	ldw	x, #0x5343
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_itconfig.c: 68: TIM4->IER &= (uint8_t)(~TIM4_IT);
	ldw	x, #0x5343
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x04, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x5343
	ld	(x), a
00104$:
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim4.tim4_itconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
