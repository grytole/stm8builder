;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:04 2017
;--------------------------------------------------------
	.module stm8s_iwdg_iwdg_setreload
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _IWDG_SetReload
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_setreload.c: 49: void IWDG_SetReload(uint8_t IWDG_Reload)
;	-----------------------------------------
;	 function IWDG_SetReload
;	-----------------------------------------
_IWDG_SetReload:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_setreload.c: 51: IWDG->RLR = IWDG_Reload;
	ldw	x, #0x50e2
	ld	a, (0x03, sp)
	ld	(x), a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
