;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:11 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_prescalerconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_PrescalerConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_prescalerconfig.c: 53: void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
;	-----------------------------------------
;	 function ADC1_PrescalerConfig
;	-----------------------------------------
_ADC1_PrescalerConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_prescalerconfig.c: 56: assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x20
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x30
	jreq	00104$
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
	ldw	y, #___str_0+0
	push	#0x38
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_prescalerconfig.c: 59: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
	ldw	x, #0x5401
	ld	a, (x)
	and	a, #0x8f
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_prescalerconfig.c: 61: ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
	ldw	x, #0x5401
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5401
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_prescalerconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
