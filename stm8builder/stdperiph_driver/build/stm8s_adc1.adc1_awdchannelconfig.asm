;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:11 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_awdchannelconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_AWDChannelConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 55: void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_AWDChannelConfig
;	-----------------------------------------
_ADC1_AWDChannelConfig:
	sub	sp, #4
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 58: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x08, sp)
	jreq	00113$
	ld	a, (0x08, sp)
	cp	a, #0x01
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 59: assert_param(IS_ADC1_CHANNEL_OK(Channel));
	tnz	(0x07, sp)
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x01
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x02
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x03
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x04
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x05
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x06
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x07
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x08
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x0c
	jreq	00118$
	ld	a, (0x07, sp)
	cp	a, #0x09
	jreq	00118$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00118$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 61: if (Channel < (uint8_t)8)
	ld	a, (0x07, sp)
	cp	a, #0x08
	jrnc	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 65: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
	ld	a, #0x01
	ld	(0x01, sp), a
	ld	a, (0x07, sp)
	jreq	00250$
00249$:
	sll	(0x01, sp)
	dec	a
	jrne	00249$
00250$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 63: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 65: ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
	ldw	x, #0x540f
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x540f
	ld	(x), a
	jra	00110$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 69: ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
	ldw	x, #0x540f
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x01, sp)
	cpl	a
	and	a, (0x04, sp)
	ldw	x, #0x540f
	ld	(x), a
	jra	00110$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 76: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
	ld	a, (0x07, sp)
	sub	a, #0x08
	ld	xh, a
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, xh
	tnz	a
	jreq	00253$
00252$:
	sll	(0x03, sp)
	dec	a
	jrne	00252$
00253$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 74: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 76: ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
	ldw	x, #0x540e
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x540e
	ld	(x), a
	jra	00110$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_awdchannelconfig.c: 80: ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
	ldw	x, #0x540e
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x03, sp)
	cpl	a
	and	a, (0x02, sp)
	ldw	x, #0x540e
	ld	(x), a
00110$:
	addw	sp, #4
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_awdchannelconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
