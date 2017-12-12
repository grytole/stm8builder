;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:55 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_getitstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_GetITStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 54: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_GetITStatus
;	-----------------------------------------
_CLK_GetITStatus:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 59: assert_param(IS_CLK_IT_OK(CLK_IT));
	ld	a, (0x04, sp)
	cp	a, #0x1c
	jrne	00138$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00139$
00138$:
	clr	(0x01, sp)
00139$:
	ld	a, (0x04, sp)
	cp	a, #0x0c
	jreq	00113$
	tnz	(0x01, sp)
	jrne	00113$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 61: if (CLK_IT == CLK_IT_SWIF)
	tnz	(0x01, sp)
	jreq	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 64: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, (0x04, sp)
	cp	a, #0x0c
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 66: bitstatus = SET;
	ld	a, #0x01
	jra	00109$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 70: bitstatus = RESET;
	clr	a
	jra	00109$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 76: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ldw	x, #0x50c8
	ld	a, (x)
	and	a, (0x04, sp)
	cp	a, #0x0c
	jrne	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 78: bitstatus = SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 82: bitstatus = RESET;
	.byte 0x21
00105$:
	clr	a
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getitstatus.c: 87: return bitstatus;
	addw	sp, #1
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_clk.clk_getitstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
