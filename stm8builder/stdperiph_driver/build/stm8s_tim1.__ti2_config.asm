;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:07 2017
;--------------------------------------------------------
	.module stm8s_tim1___ti2_config
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___TI2_Config
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.__ti2_config.c: 61: void __TI2_Config(uint8_t TIM1_ICPolarity,
;	-----------------------------------------
;	 function __TI2_Config
;	-----------------------------------------
___TI2_Config:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.__ti2_config.c: 66: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.__ti2_config.c: 69: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0x0c
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.__ti2_config.c: 70: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
	ld	a, (0x06, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x05, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5259
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.__ti2_config.c: 72: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
	tnz	(0x04, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.__ti2_config.c: 74: TIM1->CCER1 |= TIM1_CCER1_CC2P;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.__ti2_config.c: 78: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.__ti2_config.c: 81: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	pop	a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
