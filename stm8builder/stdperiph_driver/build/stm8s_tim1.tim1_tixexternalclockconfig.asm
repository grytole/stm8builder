;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:10 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_tixexternalclockconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___TI2_Config
	.globl ___TI1_Config
	.globl _TIM1_SelectInputTrigger
	.globl _assert_failed
	.globl _TIM1_TIxExternalClockConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_tixexternalclockconfig.c: 60: void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
;	-----------------------------------------
;	 function TIM1_TIxExternalClockConfig
;	-----------------------------------------
_TIM1_TIxExternalClockConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_tixexternalclockconfig.c: 65: assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
	ld	a, (0x04, sp)
	cp	a, #0x60
	jrne	00150$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00151$
00150$:
	clr	(0x01, sp)
00151$:
	ld	a, (0x04, sp)
	cp	a, #0x40
	jreq	00107$
	tnz	(0x01, sp)
	jrne	00107$
	ld	a, (0x04, sp)
	cp	a, #0x50
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x41
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_tixexternalclockconfig.c: 66: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
	tnz	(0x05, sp)
	jreq	00115$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00115$
	ldw	y, #___str_0+0
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00115$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_tixexternalclockconfig.c: 67: assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
	ld	a, (0x06, sp)
	cp	a, #0x0f
	jrule	00120$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00120$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_tixexternalclockconfig.c: 70: if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_tixexternalclockconfig.c: 72: __TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
	ld	a, (0x06, sp)
	push	a
	push	#0x01
	ld	a, (0x07, sp)
	push	a
	call	___TI2_Config
	addw	sp, #3
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_tixexternalclockconfig.c: 76: __TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
	ld	a, (0x06, sp)
	push	a
	push	#0x01
	ld	a, (0x07, sp)
	push	a
	call	___TI1_Config
	addw	sp, #3
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_tixexternalclockconfig.c: 80: TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
	ld	a, (0x04, sp)
	push	a
	call	_TIM1_SelectInputTrigger
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_tixexternalclockconfig.c: 83: TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
	ldw	x, #0x5252
	ld	a, (x)
	or	a, #0x07
	ld	(x), a
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_tixexternalclockconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
