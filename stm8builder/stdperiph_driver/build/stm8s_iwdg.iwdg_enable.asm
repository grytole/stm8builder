;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:04 2017
;--------------------------------------------------------
	.module stm8s_iwdg_iwdg_enable
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _IWDG_Enable
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_enable.c: 47: void IWDG_Enable(void)
;	-----------------------------------------
;	 function IWDG_Enable
;	-----------------------------------------
_IWDG_Enable:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_enable.c: 49: IWDG->KR = IWDG_KEY_ENABLE;
	mov	0x50e0+0, #0xcc
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
