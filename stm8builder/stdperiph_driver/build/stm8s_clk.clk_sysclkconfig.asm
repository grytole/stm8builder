;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:56 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_sysclkconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_SYSCLKConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_sysclkconfig.c: 53: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
;	-----------------------------------------
;	 function CLK_SYSCLKConfig
;	-----------------------------------------
_CLK_SYSCLKConfig:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_sysclkconfig.c: 56: assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
	tnz	(0x05, sp)
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x08
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x10
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x18
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x80
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x81
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x82
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x83
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x84
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x85
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x86
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x87
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x38
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_sysclkconfig.c: 58: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
	tnz	(0x05, sp)
	jrmi	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_sysclkconfig.c: 60: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	and	a, #0xe7
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_sysclkconfig.c: 61: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x05, sp)
	and	a, #0x18
	or	a, (0x02, sp)
	ldw	x, #0x50c6
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_sysclkconfig.c: 65: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	and	a, #0xf8
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_sysclkconfig.c: 66: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
	ldw	x, #0x50c6
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x05, sp)
	and	a, #0x07
	or	a, (0x01, sp)
	ldw	x, #0x50c6
	ld	(x), a
00104$:
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_clk.clk_sysclkconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
