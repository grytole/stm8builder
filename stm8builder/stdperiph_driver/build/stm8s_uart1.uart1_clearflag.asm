;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:17 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_clearflag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _UART1_ClearFlag
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearflag.c: 74: void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
;	-----------------------------------------
;	 function UART1_ClearFlag
;	-----------------------------------------
_UART1_ClearFlag:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearflag.c: 76: assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
	ldw	x, (0x04, sp)
	cpw	x, #0x0020
	jrne	00124$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00125$
00124$:
	clr	(0x01, sp)
00125$:
	tnz	(0x01, sp)
	jrne	00107$
	ldw	x, (0x04, sp)
	cpw	x, #0x0210
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x4c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearflag.c: 79: if (UART1_FLAG == UART1_FLAG_RXNE)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearflag.c: 81: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
	mov	0x5230+0, #0xdf
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearflag.c: 86: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
	ldw	x, #0x5237
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00104$:
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_uart1.uart1_clearflag.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
