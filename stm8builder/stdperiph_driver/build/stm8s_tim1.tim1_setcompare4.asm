;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:07 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_setcompare4
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_SetCompare4
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_setcompare4.c: 51: void TIM1_SetCompare4(uint16_t Compare4)
;	-----------------------------------------
;	 function TIM1_SetCompare4
;	-----------------------------------------
_TIM1_SetCompare4:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_setcompare4.c: 54: TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ldw	x, #0x526b
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_setcompare4.c: 55: TIM1->CCR4L = (uint8_t)(Compare4);
	ld	a, (0x06, sp)
	ldw	x, #0x526c
	ld	(x), a
	popw	x
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
