;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:12 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_getconversionvalue
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_GetConversionValue
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getconversionvalue.c: 54: uint16_t ADC1_GetConversionValue(void)
;	-----------------------------------------
;	 function ADC1_GetConversionValue
;	-----------------------------------------
_ADC1_GetConversionValue:
	sub	sp, #6
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getconversionvalue.c: 59: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ldw	x, #0x5402
	ld	a, (x)
	bcp	a, #0x08
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getconversionvalue.c: 62: templ = ADC1->DRL;
	ldw	x, #0x5405
	ld	a, (x)
	ld	yh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getconversionvalue.c: 64: temph = ADC1->DRH;
	ldw	x, #0x5404
	ld	a, (x)
	ld	xh, a
	clr	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getconversionvalue.c: 66: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
	clr	(0x04, sp)
	clr	a
	pushw	x
	or	a, (1, sp)
	popw	x
	ld	xh, a
	ld	a, yh
	or	a, (0x04, sp)
	ld	xl, a
	ldw	(0x01, sp), x
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getconversionvalue.c: 71: temph = ADC1->DRH;
	ldw	x, #0x5404
	ld	a, (x)
	clrw	y
	ld	yl, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getconversionvalue.c: 73: templ = ADC1->DRL;
	ldw	x, #0x5405
	ld	a, (x)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getconversionvalue.c: 75: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
	clrw	x
	ld	xl, a
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x05, sp), x
	clr	a
	or	a, (0x06, sp)
	ld	xl, a
	ld	a, yl
	or	a, (0x05, sp)
	ld	xh, a
	ldw	(0x01, sp), x
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getconversionvalue.c: 78: return ((uint16_t)temph);
	ldw	x, (0x01, sp)
	addw	sp, #6
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
