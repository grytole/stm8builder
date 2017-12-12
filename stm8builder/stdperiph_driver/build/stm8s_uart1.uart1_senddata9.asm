;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:18 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_senddata9
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_SendData9
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_senddata9.c: 54: void UART1_SendData9(uint16_t Data)
;	-----------------------------------------
;	 function UART1_SendData9
;	-----------------------------------------
_UART1_SendData9:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_senddata9.c: 57: UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
	ldw	x, #0x5234
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_senddata9.c: 59: UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
	ldw	x, #0x5234
	ld	a, (x)
	ld	(0x01, sp), a
	ldw	x, (0x04, sp)
	srlw	x
	srlw	x
	ld	a, xl
	and	a, #0x40
	or	a, (0x01, sp)
	ldw	x, #0x5234
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_senddata9.c: 61: UART1->DR   = (uint8_t)(Data);
	ld	a, (0x05, sp)
	ldw	x, #0x5231
	ld	(x), a
	pop	a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
