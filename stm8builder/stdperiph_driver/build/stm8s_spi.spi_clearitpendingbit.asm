;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:05 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_clearitpendingbit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _SPI_ClearITPendingBit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_clearitpendingbit.c: 59: void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
;	-----------------------------------------
;	 function SPI_ClearITPendingBit
;	-----------------------------------------
_SPI_ClearITPendingBit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_clearitpendingbit.c: 62: assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
	ld	a, (0x03, sp)
	cp	a, #0x45
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x34
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x3e
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_clearitpendingbit.c: 67: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
	ld	a, (0x03, sp)
	and	a, #0xf0
	swap	a
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00123$
00122$:
	sll	(1, sp)
	dec	a
	jrne	00122$
00123$:
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_clearitpendingbit.c: 69: SPI->SR = (uint8_t)(~itpos);
	cpl	a
	ldw	x, #0x5203
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_spi.spi_clearitpendingbit.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
