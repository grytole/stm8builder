;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:18 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_receivedata9
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_ReceiveData9
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_receivedata9.c: 53: uint16_t UART1_ReceiveData9(void)
;	-----------------------------------------
;	 function UART1_ReceiveData9
;	-----------------------------------------
_UART1_ReceiveData9:
	sub	sp, #4
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_receivedata9.c: 57: temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
	ldw	x, #0x5234
	ld	a, (x)
	clr	(0x03, sp)
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
	sllw	x
	ldw	(0x01, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_receivedata9.c: 58: return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
	ldw	x, #0x5231
	ld	a, (x)
	clrw	x
	ld	xl, a
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	and	a, #0x01
	ld	xh, a
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
