;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:17 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_linbreakdetectionconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _UART1_LINBreakDetectionConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_linbreakdetectionconfig.c: 55: void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
;	-----------------------------------------
;	 function UART1_LINBreakDetectionConfig
;	-----------------------------------------
_UART1_LINBreakDetectionConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_linbreakdetectionconfig.c: 57: assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x01
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_linbreakdetectionconfig.c: 59: if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_linbreakdetectionconfig.c: 61: UART1->CR4 |= UART1_CR4_LBDL;
	ldw	x, #0x5237
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_linbreakdetectionconfig.c: 65: UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
	ldw	x, #0x5237
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_uart1.uart1_linbreakdetectionconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
