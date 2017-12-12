;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:56 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_itconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_ITConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 56: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_ITConfig
;	-----------------------------------------
_CLK_ITConfig:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 59: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x06, sp)
	jreq	00115$
	ld	a, (0x06, sp)
	cp	a, #0x01
	jreq	00115$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00115$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 60: assert_param(IS_CLK_IT_OK(CLK_IT));
	ld	a, (0x05, sp)
	cp	a, #0x0c
	jrne	00165$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00166$
00165$:
	clr	(0x01, sp)
00166$:
	ld	a, (0x05, sp)
	cp	a, #0x1c
	jrne	00168$
	ld	a, #0x01
	ld	(0x02, sp), a
	jra	00169$
00168$:
	clr	(0x02, sp)
00169$:
	tnz	(0x01, sp)
	jrne	00120$
	tnz	(0x02, sp)
	jrne	00120$
	ldw	y, #___str_0+0
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00120$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 62: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00110$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 64: switch (CLK_IT)
	tnz	(0x01, sp)
	jrne	00102$
	tnz	(0x02, sp)
	jreq	00112$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 67: CLK->SWCR |= CLK_SWCR_SWIEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 68: break;
	jra	00112$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 69: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 70: CLK->CSSR |= CLK_CSSR_CSSDIE;
	ldw	x, #0x50c8
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 71: break;
	jra	00112$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 74: }
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 78: switch (CLK_IT)
	tnz	(0x01, sp)
	jrne	00106$
	tnz	(0x02, sp)
	jreq	00112$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 81: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 82: break;
	jra	00112$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 83: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 84: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
	ldw	x, #0x50c8
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_itconfig.c: 88: }
00112$:
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_clk.clk_itconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
