;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:11 2017
;--------------------------------------------------------
	.module stm8s_wwdg_wwdg_getcounter
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WWDG_GetCounter
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_getcounter.c: 51: uint8_t WWDG_GetCounter(void)
;	-----------------------------------------
;	 function WWDG_GetCounter
;	-----------------------------------------
_WWDG_GetCounter:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_getcounter.c: 53: return(WWDG->CR);
	ldw	x, #0x50d1
	ld	a, (x)
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
