;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:09 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_getprescaler
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_GetPrescaler
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getprescaler.c: 50: uint16_t TIM1_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM1_GetPrescaler
;	-----------------------------------------
_TIM1_GetPrescaler:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getprescaler.c: 54: temp = ((uint16_t)TIM1->PSCRH << 8);
	ldw	x, #0x5260
	ld	a, (x)
	ld	xh, a
	clr	a
	clr	a
	ld	xl, a
	ldw	(0x01, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getprescaler.c: 57: return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
	ldw	x, #0x5261
	ld	a, (x)
	clrw	x
	ld	xl, a
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	ld	xh, a
	addw	sp, #2
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
