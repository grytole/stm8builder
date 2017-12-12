;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:55 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_getflagstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_GetFlagStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 55: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
;	-----------------------------------------
;	 function CLK_GetFlagStatus
;	-----------------------------------------
_CLK_GetFlagStatus:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 62: assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
	ldw	x, (0x03, sp)
	cpw	x, #0x0110
	jreq	00119$
	ldw	x, (0x03, sp)
	cpw	x, #0x0102
	jreq	00119$
	ldw	x, (0x03, sp)
	cpw	x, #0x0202
	jreq	00119$
	ldw	x, (0x03, sp)
	cpw	x, #0x0308
	jreq	00119$
	ldw	x, (0x03, sp)
	cpw	x, #0x0301
	jreq	00119$
	ldw	x, (0x03, sp)
	cpw	x, #0x0408
	jreq	00119$
	ldw	x, (0x03, sp)
	cpw	x, #0x0402
	jreq	00119$
	ldw	x, (0x03, sp)
	cpw	x, #0x0504
	jreq	00119$
	ldw	x, (0x03, sp)
	cpw	x, #0x0502
	jreq	00119$
	ldw	y, #___str_0+0
	push	#0x3e
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00119$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 65: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
	clr	a
	ld	xl, a
	ld	a, (0x03, sp)
	ld	xh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 68: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
	cpw	x, #0x0100
	jrne	00111$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 70: tmpreg = CLK->ICKR;
	ldw	x, #0x50c0
	ld	a, (x)
	jra	00112$
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 72: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
	cpw	x, #0x0200
	jrne	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 74: tmpreg = CLK->ECKR;
	ldw	x, #0x50c1
	ld	a, (x)
	jra	00112$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 76: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
	cpw	x, #0x0300
	jrne	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 78: tmpreg = CLK->SWCR;
	ldw	x, #0x50c5
	ld	a, (x)
	jra	00112$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 80: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
	cpw	x, #0x0400
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 82: tmpreg = CLK->CSSR;
	ldw	x, #0x50c8
	ld	a, (x)
	jra	00112$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 86: tmpreg = CLK->CCOR;
	ldw	x, #0x50c9
	ld	a, (x)
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 89: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
	rlwa	x
	ld	a, (0x04, sp)
	rrwa	x
	pushw	x
	and	a, (1, sp)
	popw	x
	tnz	a
	jreq	00114$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 91: bitstatus = SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 95: bitstatus = RESET;
	.byte 0x21
00114$:
	clr	a
00115$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_getflagstatus.c: 99: return((FlagStatus)bitstatus);
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_clk.clk_getflagstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
