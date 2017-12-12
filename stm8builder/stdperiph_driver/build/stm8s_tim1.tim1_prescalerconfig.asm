;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:08 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_prescalerconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_PrescalerConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_prescalerconfig.c: 55: void TIM1_PrescalerConfig(uint16_t Prescaler,
;	-----------------------------------------
;	 function TIM1_PrescalerConfig
;	-----------------------------------------
_TIM1_PrescalerConfig:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_prescalerconfig.c: 59: assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
	tnz	(0x07, sp)
	jreq	00104$
	ld	a, (0x07, sp)
	cp	a, #0x01
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_prescalerconfig.c: 62: TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ldw	x, #0x5260
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_prescalerconfig.c: 63: TIM1->PSCRL = (uint8_t)(Prescaler);
	ld	a, (0x06, sp)
	ldw	x, #0x5261
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_prescalerconfig.c: 66: TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
	ldw	x, #0x5257
	ld	a, (0x07, sp)
	ld	(x), a
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_prescalerconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
