;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:07 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_etrclockmode1config
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_ETRConfig
	.globl _assert_failed
	.globl _TIM1_ETRClockMode1Config
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_etrclockmode1config.c: 61: void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
;	-----------------------------------------
;	 function TIM1_ETRClockMode1Config
;	-----------------------------------------
_TIM1_ETRClockMode1Config:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_etrclockmode1config.c: 66: assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x20
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x30
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_etrclockmode1config.c: 67: assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
	ld	a, (0x04, sp)
	cp	a, #0x80
	jreq	00115$
	tnz	(0x04, sp)
	jreq	00115$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00115$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_etrclockmode1config.c: 70: TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	call	_TIM1_ETRConfig
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_etrclockmode1config.c: 73: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
	ldw	x, #0x5252
	ld	a, (x)
	and	a, #0x88
	or	a, #0x77
	ldw	x, #0x5252
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_etrclockmode1config.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
