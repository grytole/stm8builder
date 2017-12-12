;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:15 2017
;--------------------------------------------------------
	.module stm8s_tim4_tim4_getcounter
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_GetCounter
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getcounter.c: 49: uint8_t TIM4_GetCounter(void)
;	-----------------------------------------
;	 function TIM4_GetCounter
;	-----------------------------------------
_TIM4_GetCounter:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getcounter.c: 52: return (uint8_t)(TIM4->CNTR);
	ldw	x, #0x5346
	ld	a, (x)
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
