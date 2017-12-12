;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:55 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_getclockfreq
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _HSIDivFactor
	.globl _CLK_GetClockFreq
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 65: uint32_t CLK_GetClockFreq(void)
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
_CLK_GetClockFreq:
	sub	sp, #7
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 72: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
	ldw	x, #0x50c3
	ld	a, (x)
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 74: if (clocksource == CLK_SOURCE_HSI)
	ld	a, (0x01, sp)
	cp	a, #0xe1
	jrne	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 76: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	and	a, #0x18
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 77: tmp = (uint8_t)(tmp >> 3);
	srl	a
	srl	a
	srl	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 78: presc = HSIDivFactor[tmp];
	ldw	x, #_HSIDivFactor+0
	ldw	(0x06, sp), x
	clrw	x
	ld	xl, a
	addw	x, (0x06, sp)
	ld	a, (x)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 79: clockfrequency = HSI_VALUE / presc;
	clrw	x
	ld	xl, a
	clrw	y
	pushw	x
	pushw	y
	push	#0x00
	push	#0x24
	push	#0xf4
	push	#0x00
	call	__divulong
	addw	sp, #8
	ldw	(0x04, sp), x
	jra	00106$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 81: else if ( clocksource == CLK_SOURCE_LSI)
	ld	a, (0x01, sp)
	cp	a, #0xd2
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 83: clockfrequency = LSI_VALUE;
	ldw	x, #0xf400
	ldw	(0x04, sp), x
	ldw	y, #0x0001
	jra	00106$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 87: clockfrequency = HSE_VALUE;
	ldw	x, #0x2400
	ldw	(0x04, sp), x
	ldw	y, #0x00f4
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getclockfreq.c: 90: return((uint32_t)clockfrequency);
	ldw	x, (0x04, sp)
	addw	sp, #7
	ret
	.area CODE
_HSIDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.area INITIALIZER
	.area CABS (ABS)
