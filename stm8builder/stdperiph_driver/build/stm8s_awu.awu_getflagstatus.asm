;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:54 2017
;--------------------------------------------------------
	.module stm8s_awu_awu_getflagstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_GetFlagStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_getflagstatus.c: 54: FlagStatus AWU_GetFlagStatus(void)
;	-----------------------------------------
;	 function AWU_GetFlagStatus
;	-----------------------------------------
_AWU_GetFlagStatus:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_getflagstatus.c: 56: return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
	ldw	x, #0x50f0
	ld	a, (x)
	bcp	a, #0x20
	jrne	00103$
	clr	a
	jra	00104$
00103$:
	ld	a, #0x01
00104$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
