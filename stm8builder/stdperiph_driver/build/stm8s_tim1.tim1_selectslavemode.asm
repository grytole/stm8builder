;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:07 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_selectslavemode
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_SelectSlaveMode
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectslavemode.c: 55: void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
;	-----------------------------------------
;	 function TIM1_SelectSlaveMode
;	-----------------------------------------
_TIM1_SelectSlaveMode:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectslavemode.c: 58: assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x05
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x06
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x07
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x3a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectslavemode.c: 61: TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
	ldw	x, #0x5252
	ld	a, (x)
	and	a, #0xf8
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectslavemode.c: 62: (uint8_t)TIM1_SlaveMode);
	or	a, (0x03, sp)
	ldw	x, #0x5252
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_selectslavemode.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
