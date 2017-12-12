;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:13 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_conversionconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_ConversionConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 57: void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
;	-----------------------------------------
;	 function ADC1_ConversionConfig
;	-----------------------------------------
_ADC1_ConversionConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 60: assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
	ld	a, (0x04, sp)
	cp	a, #0x01
	jrne	00213$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00214$
00213$:
	clr	(0x01, sp)
00214$:
	tnz	(0x04, sp)
	jreq	00107$
	tnz	(0x01, sp)
	jrne	00107$
	ldw	y, #___str_0+0
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 61: assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
	tnz	(0x05, sp)
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x02
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x03
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x04
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x05
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x06
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x07
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x08
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x0c
	jreq	00112$
	ld	a, (0x05, sp)
	cp	a, #0x09
	jreq	00112$
	ldw	y, #___str_0+0
	push	#0x3d
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 62: assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
	tnz	(0x06, sp)
	jreq	00144$
	ld	a, (0x06, sp)
	cp	a, #0x08
	jreq	00144$
	ldw	y, #___str_0+0
	push	#0x3e
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00144$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 65: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 67: ADC1->CR2 |= (uint8_t)(ADC1_Align);
	ldw	x, #0x5402
	ld	a, (x)
	or	a, (0x06, sp)
	ldw	x, #0x5402
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 69: if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 72: ADC1->CR1 |= ADC1_CR1_CONT;
	ldw	x, #0x5401
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 77: ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
	ldw	x, #0x5401
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 81: ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
	ldw	x, #0x5400
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_conversionconfig.c: 83: ADC1->CSR |= (uint8_t)(ADC1_Channel);
	ldw	x, #0x5400
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x5400
	ld	(x), a
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_conversionconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
