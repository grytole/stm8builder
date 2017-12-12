;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:06 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_encoderinterfaceconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_EncoderInterfaceConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 65: void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
;	-----------------------------------------
;	 function TIM1_EncoderInterfaceConfig
;	-----------------------------------------
_TIM1_EncoderInterfaceConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 70: assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00110$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00110$
	ld	a, (0x03, sp)
	cp	a, #0x03
	jreq	00110$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 71: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
	tnz	(0x04, sp)
	jreq	00118$
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00118$
	ldw	y, #___str_0+0
	push	#0x47
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00118$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 72: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
	tnz	(0x05, sp)
	jreq	00123$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00123$
	ldw	y, #___str_0+0
	push	#0x48
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00123$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 75: if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 77: TIM1->CCER1 |= TIM1_CCER1_CC1P;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 81: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 84: if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x05, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 86: TIM1->CCER1 |= TIM1_CCER1_CC2P;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00106$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 90: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 93: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
	ldw	x, #0x5252
	ld	a, (x)
	and	a, #0xf0
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 94: | (uint8_t) TIM1_EncoderMode);
	or	a, (0x03, sp)
	ldw	x, #0x5252
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 97: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0xfc
	or	a, #0x01
	ldw	x, #0x5258
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_encoderinterfaceconfig.c: 99: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0xfc
	or	a, #0x01
	ldw	x, #0x5259
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_encoderinterfaceconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
