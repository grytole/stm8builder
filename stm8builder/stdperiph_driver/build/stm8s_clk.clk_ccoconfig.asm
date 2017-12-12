;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:55 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_ccoconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_CCOConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_ccoconfig.c: 57: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
;	-----------------------------------------
;	 function CLK_CCOConfig
;	-----------------------------------------
_CLK_CCOConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_ccoconfig.c: 60: assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x0a
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x0c
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x0e
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x12
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x14
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x16
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x18
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x1a
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_ccoconfig.c: 63: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
	ldw	x, #0x50c9
	ld	a, (x)
	and	a, #0xe1
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_ccoconfig.c: 66: CLK->CCOR |= (uint8_t)CLK_CCO;
	ldw	x, #0x50c9
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x50c9
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_ccoconfig.c: 69: CLK->CCOR |= CLK_CCOR_CCOEN;
	bset	0x50c9, #0
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_clk.clk_ccoconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
