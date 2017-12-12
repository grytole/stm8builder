;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:12 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_getawdchannelstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_GetAWDChannelStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getawdchannelstatus.c: 53: FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
;	-----------------------------------------
;	 function ADC1_GetAWDChannelStatus
;	-----------------------------------------
_ADC1_GetAWDChannelStatus:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getawdchannelstatus.c: 58: assert_param(IS_ADC1_CHANNEL_OK(Channel));
	tnz	(0x05, sp)
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x02
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x03
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x04
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x05
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x06
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x07
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x08
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x0c
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x09
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x3a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getawdchannelstatus.c: 60: if (Channel < (uint8_t)8)
	ld	a, (0x05, sp)
	cp	a, #0x08
	jrnc	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getawdchannelstatus.c: 62: status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
	ldw	x, #0x540d
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, #0x01
	push	a
	ld	a, (0x06, sp)
	jreq	00219$
00218$:
	sll	(1, sp)
	dec	a
	jrne	00218$
00219$:
	pop	a
	and	a, (0x02, sp)
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getawdchannelstatus.c: 66: status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
	ldw	x, #0x540c
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	sub	a, #0x08
	ld	xh, a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00221$
00220$:
	sll	(1, sp)
	dec	a
	jrne	00220$
00221$:
	pop	a
	and	a, (0x01, sp)
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getawdchannelstatus.c: 69: return ((FlagStatus)status);
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_getawdchannelstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
