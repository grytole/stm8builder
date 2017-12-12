;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:57 2017
;--------------------------------------------------------
	.module stm8s_exti_exti_gettlisensitivity
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _EXTI_GetTLISensitivity
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_gettlisensitivity.c: 53: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
;	-----------------------------------------
;	 function EXTI_GetTLISensitivity
;	-----------------------------------------
_EXTI_GetTLISensitivity:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_gettlisensitivity.c: 58: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
	ldw	x, #0x50a1
	ld	a, (x)
	and	a, #0x04
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_gettlisensitivity.c: 60: return((EXTI_TLISensitivity_TypeDef)value);
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
