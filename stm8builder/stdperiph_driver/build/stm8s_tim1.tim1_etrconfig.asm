;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:05 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_etrconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_ETRConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_etrconfig.c: 61: void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
;	-----------------------------------------
;	 function TIM1_ETRConfig
;	-----------------------------------------
_TIM1_ETRConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_etrconfig.c: 66: assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
	ld	a, (0x06, sp)
	cp	a, #0x0f
	jrule	00104$
	ldw	y, #___str_0+0
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_etrconfig.c: 68: TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
	ldw	x, #0x5253
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x04, sp)
	or	a, (0x05, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_etrconfig.c: 69: (uint8_t)ExtTRGFilter );
	or	a, (0x06, sp)
	or	a, (0x01, sp)
	ldw	x, #0x5253
	ld	(x), a
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_etrconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
