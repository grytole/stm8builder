;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:56 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_peripheralclockconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_PeripheralClockConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 56: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_PeripheralClockConfig
;	-----------------------------------------
_CLK_PeripheralClockConfig:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 59: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x06, sp)
	jreq	00113$
	ld	a, (0x06, sp)
	cp	a, #0x01
	jreq	00113$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 60: assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
	tnz	(0x05, sp)
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x03
	jrne	00243$
	ld	a, #0x01
	.byte 0x21
00243$:
	clr	a
00244$:
	tnz	a
	jrne	00118$
	tnz	a
	jrne	00118$
	tnz	a
	jrne	00118$
	ld	a, (0x05, sp)
	cp	a, #0x04
	jrne	00249$
	ld	a, #0x01
	ld	xh, a
	jra	00250$
00249$:
	clr	a
	ld	xh, a
00250$:
	ld	a, xh
	tnz	a
	jrne	00118$
	ld	a, (0x05, sp)
	cp	a, #0x05
	jrne	00253$
	ld	a, #0x01
	.byte 0x21
00253$:
	clr	a
00254$:
	tnz	a
	jrne	00118$
	tnz	a
	jrne	00118$
	ld	a, xh
	tnz	a
	jrne	00118$
	ld	a, (0x05, sp)
	cp	a, #0x06
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x07
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x17
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x13
	jreq	00118$
	ld	a, (0x05, sp)
	cp	a, #0x12
	jreq	00118$
	ldw	y, #___str_0+0
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00118$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 67: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	a, (0x05, sp)
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	ld	(0x01, sp), a
	ld	a, xh
	tnz	a
	jreq	00274$
00273$:
	sll	(0x01, sp)
	dec	a
	jrne	00273$
00274$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 72: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	ld	a, (0x01, sp)
	cpl	a
	ld	(0x02, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 62: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
	ld	a, (0x05, sp)
	bcp	a, #0x10
	jrne	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 64: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 67: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ldw	x, #0x50c7
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x50c7
	ld	(x), a
	jra	00110$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 72: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	ldw	x, #0x50c7
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x50c7
	ld	(x), a
	jra	00110$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 77: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 80: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ldw	x, #0x50ca
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x50ca
	ld	(x), a
	jra	00110$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_peripheralclockconfig.c: 85: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	ldw	x, #0x50ca
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x50ca
	ld	(x), a
00110$:
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_clk.clk_peripheralclockconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
