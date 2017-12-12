;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:12 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_schmitttriggerconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_SchmittTriggerConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 55: void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_SchmittTriggerConfig
;	-----------------------------------------
_ADC1_SchmittTriggerConfig:
	sub	sp, #5
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 58: assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
	ld	a, (0x08, sp)
	cp	a, #0xff
	jrne	00235$
	ld	a, #0x01
	ld	(0x03, sp), a
	jra	00236$
00235$:
	clr	(0x03, sp)
00236$:
	tnz	(0x08, sp)
	jreq	00119$
	ld	a, (0x08, sp)
	cp	a, #0x01
	jreq	00119$
	ld	a, (0x08, sp)
	cp	a, #0x02
	jreq	00119$
	ld	a, (0x08, sp)
	cp	a, #0x03
	jreq	00119$
	ld	a, (0x08, sp)
	cp	a, #0x04
	jreq	00119$
	ld	a, (0x08, sp)
	cp	a, #0x05
	jreq	00119$
	ld	a, (0x08, sp)
	cp	a, #0x06
	jreq	00119$
	ld	a, (0x08, sp)
	cp	a, #0x07
	jreq	00119$
	ld	a, (0x08, sp)
	cp	a, #0x08
	jreq	00119$
	ld	a, (0x08, sp)
	cp	a, #0x0c
	jreq	00119$
	tnz	(0x03, sp)
	jrne	00119$
	ld	a, (0x08, sp)
	cp	a, #0x09
	jreq	00119$
	ldw	y, #___str_0+0
	push	#0x3a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00119$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 59: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x09, sp)
	jreq	00154$
	ld	a, (0x09, sp)
	cp	a, #0x01
	jreq	00154$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00154$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 61: if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
	tnz	(0x03, sp)
	jreq	00114$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 63: if (NewState != DISABLE)
	tnz	(0x09, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 65: ADC1->TDRL &= (uint8_t)0x0;
	ldw	x, #0x5407
	ld	a, (x)
	mov	0x5407+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 66: ADC1->TDRH &= (uint8_t)0x0;
	ldw	x, #0x5406
	ld	a, (x)
	mov	0x5406+0, #0x00
	jra	00116$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 70: ADC1->TDRL |= (uint8_t)0xFF;
	ldw	x, #0x5407
	ld	a, (x)
	mov	0x5407+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 71: ADC1->TDRH |= (uint8_t)0xFF;
	ldw	x, #0x5406
	ld	a, (x)
	mov	0x5406+0, #0xff
	jra	00116$
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 74: else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
	ld	a, (0x08, sp)
	cp	a, #0x08
	jrnc	00111$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 78: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
	ld	a, #0x01
	ld	(0x05, sp), a
	ld	a, (0x08, sp)
	jreq	00277$
00276$:
	sll	(0x05, sp)
	dec	a
	jrne	00276$
00277$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 76: if (NewState != DISABLE)
	tnz	(0x09, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 78: ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
	ldw	x, #0x5407
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x05, sp)
	cpl	a
	and	a, (0x04, sp)
	ldw	x, #0x5407
	ld	(x), a
	jra	00116$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 82: ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
	ldw	x, #0x5407
	ld	a, (x)
	or	a, (0x05, sp)
	ldw	x, #0x5407
	ld	(x), a
	jra	00116$
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 89: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
	ld	a, (0x08, sp)
	sub	a, #0x08
	ld	xh, a
	ld	a, #0x01
	ld	(0x02, sp), a
	ld	a, xh
	tnz	a
	jreq	00280$
00279$:
	sll	(0x02, sp)
	dec	a
	jrne	00279$
00280$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 87: if (NewState != DISABLE)
	tnz	(0x09, sp)
	jreq	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 89: ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
	ldw	x, #0x5406
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x02, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x5406
	ld	(x), a
	jra	00116$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_schmitttriggerconfig.c: 93: ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
	ldw	x, #0x5406
	ld	a, (x)
	or	a, (0x02, sp)
	ldw	x, #0x5406
	ld	(x), a
00116$:
	addw	sp, #5
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_schmitttriggerconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
