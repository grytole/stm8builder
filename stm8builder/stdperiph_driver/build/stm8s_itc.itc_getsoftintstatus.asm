;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:03 2017
;--------------------------------------------------------
	.module stm8s_itc_itc_getsoftintstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetCPUCC
	.globl _ITC_GetSoftIntStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftintstatus.c: 50: uint8_t ITC_GetCPUCC(void)
;	-----------------------------------------
;	 function ITC_GetCPUCC
;	-----------------------------------------
_ITC_GetCPUCC:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftintstatus.c: 59: __asm__("push cc");
	push cc
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftintstatus.c: 60: __asm__("pop a");
	pop a
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftintstatus.c: 83: uint8_t ITC_GetSoftIntStatus(void)
;	-----------------------------------------
;	 function ITC_GetSoftIntStatus
;	-----------------------------------------
_ITC_GetSoftIntStatus:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftintstatus.c: 85: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
	call	_ITC_GetCPUCC
	and	a, #0x28
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
