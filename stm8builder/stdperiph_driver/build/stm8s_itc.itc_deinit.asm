;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:02 2017
;--------------------------------------------------------
	.module stm8s_itc_itc_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_deinit.c: 52: void ITC_DeInit(void)
;	-----------------------------------------
;	 function ITC_DeInit
;	-----------------------------------------
_ITC_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_deinit.c: 54: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
	mov	0x7f70+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_deinit.c: 55: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
	mov	0x7f71+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_deinit.c: 56: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
	mov	0x7f72+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_deinit.c: 57: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
	mov	0x7f73+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_deinit.c: 58: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
	mov	0x7f74+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_deinit.c: 59: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
	mov	0x7f75+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_deinit.c: 60: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
	mov	0x7f76+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_deinit.c: 61: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
	mov	0x7f77+0, #0xff
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
