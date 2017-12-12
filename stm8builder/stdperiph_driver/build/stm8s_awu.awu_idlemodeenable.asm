;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:54 2017
;--------------------------------------------------------
	.module stm8s_awu_awu_idlemodeenable
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_IdleModeEnable
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_idlemodeenable.c: 53: void AWU_IdleModeEnable(void)
;	-----------------------------------------
;	 function AWU_IdleModeEnable
;	-----------------------------------------
_AWU_IdleModeEnable:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_idlemodeenable.c: 56: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
	ldw	x, #0x50f0
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_idlemodeenable.c: 59: AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
	mov	0x50f2+0, #0xf0
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
