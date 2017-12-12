;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:54 2017
;--------------------------------------------------------
	.module stm8s_awu_awu_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_deinit.c: 54: void AWU_DeInit(void)
;	-----------------------------------------
;	 function AWU_DeInit
;	-----------------------------------------
_AWU_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_deinit.c: 56: AWU->CSR = AWU_CSR_RESET_VALUE;
	mov	0x50f0+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_deinit.c: 57: AWU->APR = AWU_APR_RESET_VALUE;
	mov	0x50f1+0, #0x3f
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_deinit.c: 58: AWU->TBR = AWU_TBR_RESET_VALUE;
	mov	0x50f2+0, #0x00
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
