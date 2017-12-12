;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:03 2017
;--------------------------------------------------------
	.module stm8s_iwdg_iwdg_reloadcounter
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _IWDG_ReloadCounter
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_reloadcounter.c: 48: void IWDG_ReloadCounter(void)
;	-----------------------------------------
;	 function IWDG_ReloadCounter
;	-----------------------------------------
_IWDG_ReloadCounter:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_reloadcounter.c: 50: IWDG->KR = IWDG_KEY_REFRESH;
	mov	0x50e0+0, #0xaa
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
