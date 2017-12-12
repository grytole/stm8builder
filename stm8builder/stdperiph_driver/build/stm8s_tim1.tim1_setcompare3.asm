;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:10 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_setcompare3
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_SetCompare3
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_setcompare3.c: 51: void TIM1_SetCompare3(uint16_t Compare3)
;	-----------------------------------------
;	 function TIM1_SetCompare3
;	-----------------------------------------
_TIM1_SetCompare3:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_setcompare3.c: 54: TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	ldw	x, #0x5269
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_setcompare3.c: 55: TIM1->CCR3L = (uint8_t)(Compare3);
	ld	a, (0x06, sp)
	ldw	x, #0x526a
	ld	(x), a
	popw	x
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
