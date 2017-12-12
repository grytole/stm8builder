;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:18 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_setaddress
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _UART1_SetAddress
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_setaddress.c: 53: void UART1_SetAddress(uint8_t UART1_Address)
;	-----------------------------------------
;	 function UART1_SetAddress
;	-----------------------------------------
_UART1_SetAddress:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_setaddress.c: 56: assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
	ld	a, (0x03, sp)
	cp	a, #0x10
	jrc	00104$
	ldw	y, #___str_0+0
	push	#0x38
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_setaddress.c: 59: UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
	ldw	x, #0x5237
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_setaddress.c: 61: UART1->CR4 |= UART1_Address;
	ldw	x, #0x5237
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5237
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_uart1.uart1_setaddress.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
