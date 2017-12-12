;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:16 2017
;--------------------------------------------------------
	.module stm8s_tim4_tim4_prescalerconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM4_PrescalerConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_prescalerconfig.c: 64: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
;	-----------------------------------------
;	 function TIM4_PrescalerConfig
;	-----------------------------------------
_TIM4_PrescalerConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_prescalerconfig.c: 67: assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
	tnz	(0x04, sp)
	jreq	00104$
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_prescalerconfig.c: 68: assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
	tnz	(0x03, sp)
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x03
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x05
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x06
	jreq	00109$
	ld	a, (0x03, sp)
	cp	a, #0x07
	jreq	00109$
	ldw	y, #___str_0+0
	push	#0x44
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_prescalerconfig.c: 71: TIM4->PSCR = (uint8_t)Prescaler;
	ldw	x, #0x5347
	ld	a, (0x03, sp)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_prescalerconfig.c: 74: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
	ldw	x, #0x5345
	ld	a, (0x04, sp)
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim4.tim4_prescalerconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
