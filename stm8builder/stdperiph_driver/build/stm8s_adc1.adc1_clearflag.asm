;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:11 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_clearflag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_ClearFlag
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 53: void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
;	-----------------------------------------
;	 function ADC1_ClearFlag
;	-----------------------------------------
_ADC1_ClearFlag:
	sub	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 58: assert_param(IS_ADC1_FLAG_OK(Flag));
	ld	a, (0x06, sp)
	cp	a, #0x80
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x41
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x40
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x10
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x11
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x12
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x13
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x14
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x15
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x16
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x17
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x18
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x19
	jreq	00113$
	ldw	y, #___str_0+0
	push	#0x3a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 60: if ((Flag & 0x0F) == 0x01)
	ld	a, (0x06, sp)
	and	a, #0x0f
	ld	xh, a
	cp	a, #0x01
	jrne	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 63: ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
	ldw	x, #0x5403
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
	jra	00110$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 65: else if ((Flag & 0xF0) == 0x10)
	ld	a, (0x06, sp)
	and	a, #0xf0
	cp	a, #0x10
	jrne	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 68: temp = (uint8_t)(Flag & (uint8_t)0x0F);
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 69: if (temp < 8)
	ld	a, xh
	cp	a, #0x08
	jrnc	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 71: ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
	ldw	y, #0x540d
	ld	a, (y)
	ld	(0x01, sp), a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00261$
00260$:
	sll	(1, sp)
	dec	a
	jrne	00260$
00261$:
	pop	a
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x540d
	ld	(x), a
	jra	00110$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 75: ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
	ldw	y, #0x540c
	ld	a, (y)
	ld	(0x03, sp), a
	subw	x, #2048
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00263$
00262$:
	sll	(1, sp)
	dec	a
	jrne	00262$
00263$:
	pop	a
	cpl	a
	and	a, (0x03, sp)
	ldw	x, #0x540c
	ld	(x), a
	jra	00110$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_clearflag.c: 80: ADC1->CSR &= (uint8_t) (~Flag);
	ldw	x, #0x5400
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x02, sp)
	ldw	x, #0x5400
	ld	(x), a
00110$:
	addw	sp, #3
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_clearflag.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
