;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:12 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_itconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_ITConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_itconfig.c: 56: void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ITConfig
;	-----------------------------------------
_ADC1_ITConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_itconfig.c: 59: assert_param(IS_ADC1_IT_OK(ADC1_IT));
	ldw	x, (0x04, sp)
	cpw	x, #0x0020
	jreq	00107$
	ldw	x, (0x04, sp)
	cpw	x, #0x0010
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_itconfig.c: 60: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x06, sp)
	jreq	00112$
	ld	a, (0x06, sp)
	cp	a, #0x01
	jreq	00112$
	ldw	y, #___str_0+0
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_itconfig.c: 62: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_itconfig.c: 65: ADC1->CSR |= (uint8_t)ADC1_IT;
	ldw	x, #0x5400
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5400
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_itconfig.c: 70: ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
	ldw	x, #0x5400
	ld	a, (x)
	ldw	x, (0x04, sp)
	cplw	x
	pushw	x
	and	a, (2, sp)
	popw	x
	ldw	x, #0x5400
	ld	(x), a
00104$:
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_itconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
