;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:56 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 59: void CLK_DeInit(void)
;	-----------------------------------------
;	 function CLK_DeInit
;	-----------------------------------------
_CLK_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 61: CLK->ICKR = CLK_ICKR_RESET_VALUE;
	mov	0x50c0+0, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 62: CLK->ECKR = CLK_ECKR_RESET_VALUE;
	mov	0x50c1+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 63: CLK->SWR  = CLK_SWR_RESET_VALUE;
	mov	0x50c4+0, #0xe1
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 64: CLK->SWCR = CLK_SWCR_RESET_VALUE;
	mov	0x50c5+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 65: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
	mov	0x50c6+0, #0x18
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 66: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
	mov	0x50c7+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 67: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
	mov	0x50ca+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 68: CLK->CSSR = CLK_CSSR_RESET_VALUE;
	mov	0x50c8+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 69: CLK->CCOR = CLK_CCOR_RESET_VALUE;
	mov	0x50c9+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 70: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
00101$:
	ldw	x, #0x50c9
	ld	a, (x)
	srl	a
	jrc	00101$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 72: CLK->CCOR = CLK_CCOR_RESET_VALUE;
	mov	0x50c9+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 73: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
	mov	0x50cc+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_deinit.c: 74: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
	mov	0x50cd+0, #0x00
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
