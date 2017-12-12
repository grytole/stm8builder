;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:56 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_hsiprescalerconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_HSIPrescalerConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_hsiprescalerconfig.c: 54: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
;	-----------------------------------------
;	 function CLK_HSIPrescalerConfig
;	-----------------------------------------
_CLK_HSIPrescalerConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_hsiprescalerconfig.c: 57: assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x18
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x39
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_hsiprescalerconfig.c: 60: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	and	a, #0xe7
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_hsiprescalerconfig.c: 63: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
	ldw	x, #0x50c6
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x50c6
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_clk.clk_hsiprescalerconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
