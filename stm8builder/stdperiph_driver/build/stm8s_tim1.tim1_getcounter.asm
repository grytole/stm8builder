;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:08 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_getcounter
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_GetCounter
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcounter.c: 50: uint16_t TIM1_GetCounter(void)
;	-----------------------------------------
;	 function TIM1_GetCounter
;	-----------------------------------------
_TIM1_GetCounter:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcounter.c: 54: tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
	ldw	x, #0x525e
	ld	a, (x)
	ld	xh, a
	clr	a
	clr	a
	ld	xl, a
	ldw	(0x01, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcounter.c: 57: return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
	ldw	x, #0x525f
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
