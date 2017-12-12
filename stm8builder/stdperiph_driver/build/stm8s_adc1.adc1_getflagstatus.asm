;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:11 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_getflagstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_GetFlagStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 53: FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
;	-----------------------------------------
;	 function ADC1_GetFlagStatus
;	-----------------------------------------
_ADC1_GetFlagStatus:
	sub	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 59: assert_param(IS_ADC1_FLAG_OK(Flag));
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
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 61: if ((Flag & 0x0F) == 0x01)
	ld	a, (0x06, sp)
	and	a, #0x0f
	ld	(0x01, sp), a
	ld	a, (0x01, sp)
	cp	a, #0x01
	jrne	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 64: flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
	ldw	x, #0x5403
	ld	a, (x)
	and	a, #0x40
	jra	00109$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 66: else if ((Flag & 0xF0) == 0x10)
	ld	a, (0x06, sp)
	and	a, #0xf0
	cp	a, #0x10
	jrne	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 69: temp = (uint8_t)(Flag & (uint8_t)0x0F);
	ld	a, (0x01, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 70: if (temp < 8)
	cp	a, #0x08
	jrnc	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 72: flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
	ldw	x, #0x540d
	push	a
	ld	a, (x)
	ld	xh, a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00261$
00260$:
	sll	(0x02, sp)
	dec	a
	jrne	00260$
00261$:
	ld	a, xh
	and	a, (0x02, sp)
	jra	00109$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 76: flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
	ldw	x, #0x540c
	push	a
	ld	a, (x)
	ld	xh, a
	pop	a
	sub	a, #0x08
	ld	xl, a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, xl
	tnz	a
	jreq	00263$
00262$:
	sll	(0x03, sp)
	dec	a
	jrne	00262$
00263$:
	ld	a, xh
	and	a, (0x03, sp)
	jra	00109$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 81: flagstatus = (uint8_t)(ADC1->CSR & Flag);
	ldw	x, #0x5400
	ld	a, (x)
	and	a, (0x06, sp)
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getflagstatus.c: 83: return ((FlagStatus)flagstatus);
	addw	sp, #3
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_getflagstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
