;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:54 2017
;--------------------------------------------------------
	.module stm8s_beep_beep_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BEEP_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_deinit.c: 54: void BEEP_DeInit(void)
;	-----------------------------------------
;	 function BEEP_DeInit
;	-----------------------------------------
_BEEP_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_deinit.c: 56: BEEP->CSR = BEEP_CSR_RESET_VALUE;
	mov	0x50f3+0, #0x1f
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
