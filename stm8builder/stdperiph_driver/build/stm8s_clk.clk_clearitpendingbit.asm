;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:57 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_clearitpendingbit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_ClearITPendingBit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clearitpendingbit.c: 54: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_ClearITPendingBit
;	-----------------------------------------
_CLK_ClearITPendingBit:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clearitpendingbit.c: 57: assert_param(IS_CLK_IT_OK(CLK_IT));
	ld	a, (0x04, sp)
	cp	a, #0x0c
	jrne	00124$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00125$
00124$:
	clr	(0x01, sp)
00125$:
	tnz	(0x01, sp)
	jrne	00107$
	ld	a, (0x04, sp)
	cp	a, #0x1c
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x39
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clearitpendingbit.c: 59: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clearitpendingbit.c: 62: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
	ldw	x, #0x50c8
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clearitpendingbit.c: 67: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_clk.clk_clearitpendingbit.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
