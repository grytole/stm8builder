;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:18 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_clearitpendingbit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _UART1_ClearITPendingBit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearitpendingbit.c: 73: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
;	-----------------------------------------
;	 function UART1_ClearITPendingBit
;	-----------------------------------------
_UART1_ClearITPendingBit:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearitpendingbit.c: 75: assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
	ldw	x, (0x04, sp)
	cpw	x, #0x0255
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
	cpw	x, #0x0346
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x4b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearitpendingbit.c: 78: if (UART1_IT == UART1_IT_RXNE)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearitpendingbit.c: 80: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
	mov	0x5230+0, #0xdf
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_clearitpendingbit.c: 85: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
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
	.ascii "er/src/stm8s_uart1.uart1_clearitpendingbit.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
