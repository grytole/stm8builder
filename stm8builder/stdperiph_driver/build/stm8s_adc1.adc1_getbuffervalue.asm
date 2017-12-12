;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:12 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_getbuffervalue
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_GetBufferValue
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 54: uint16_t ADC1_GetBufferValue(uint8_t Buffer)
;	-----------------------------------------
;	 function ADC1_GetBufferValue
;	-----------------------------------------
_ADC1_GetBufferValue:
	sub	sp, #11
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 60: assert_param(IS_ADC1_BUFFER_OK(Buffer));
	ld	a, (0x0e, sp)
	cp	a, #0x09
	jrule	00107$
	ldw	y, #___str_0+0
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 62: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ldw	x, #0x5402
	ld	a, (x)
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 65: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	ld	a, (0x0e, sp)
	sll	a
	clrw	x
	ld	xl, a
	ldw	(0x03, sp), x
	ldw	x, (0x03, sp)
	addw	x, #0x53e1
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 67: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	ldw	y, (0x03, sp)
	addw	y, #0x53e0
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 65: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 67: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 65: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
	ld	a, (x)
	ld	xl, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 67: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	ld	a, (y)
	ld	xh, a
	clr	(0x01, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 62: if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
	ld	a, (0x05, sp)
	bcp	a, #0x08
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 65: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 67: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	ld	a, (0x01, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 69: temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
	clr	(0x0b, sp)
	clr	a
	pushw	x
	or	a, (1, sp)
	popw	x
	rrwa	x
	or	a, (0x0b, sp)
	ld	xl, a
	ldw	(0x08, sp), x
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 74: temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
	exg	a, yl
	ld	a, xh
	exg	a, yl
	ld	a, (0x01, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 76: templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 78: temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
	rlwa	x
	clr	a
	rrwa	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x06, sp), x
	clr	a
	or	a, (0x07, sp)
	ld	xl, a
	ld	a, yl
	or	a, (0x06, sp)
	ld	xh, a
	ldw	(0x08, sp), x
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getbuffervalue.c: 81: return ((uint16_t)temph);
	ldw	x, (0x08, sp)
	addw	sp, #11
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_getbuffervalue.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
