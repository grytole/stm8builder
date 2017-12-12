;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:56 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_clocksecuritysystemenable
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_ClockSecuritySystemEnable
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clocksecuritysystemenable.c: 55: void CLK_ClockSecuritySystemEnable(void)
;	-----------------------------------------
;	 function CLK_ClockSecuritySystemEnable
;	-----------------------------------------
_CLK_ClockSecuritySystemEnable:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clocksecuritysystemenable.c: 58: CLK->CSSR |= CLK_CSSR_CSSEN;
	bset	0x50c8, #0
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
