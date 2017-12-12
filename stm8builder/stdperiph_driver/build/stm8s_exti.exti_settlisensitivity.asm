;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:57 2017
;--------------------------------------------------------
	.module stm8s_exti_exti_settlisensitivity
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _EXTI_SetTLISensitivity
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_settlisensitivity.c: 55: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
;	-----------------------------------------
;	 function EXTI_SetTLISensitivity
;	-----------------------------------------
_EXTI_SetTLISensitivity:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_settlisensitivity.c: 58: assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_settlisensitivity.c: 61: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
	ldw	x, #0x50a1
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_settlisensitivity.c: 62: EXTI->CR2 |= (uint8_t)(SensitivityValue);
	ldw	x, #0x50a1
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x50a1
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_exti.exti_settlisensitivity.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
