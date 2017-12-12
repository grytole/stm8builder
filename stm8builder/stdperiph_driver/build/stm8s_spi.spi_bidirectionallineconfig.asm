;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:05 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_bidirectionallineconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _SPI_BiDirectionalLineConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_bidirectionallineconfig.c: 50: void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
;	-----------------------------------------
;	 function SPI_BiDirectionalLineConfig
;	-----------------------------------------
_SPI_BiDirectionalLineConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_bidirectionallineconfig.c: 53: assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x35
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_bidirectionallineconfig.c: 55: if (SPI_Direction != SPI_DIRECTION_RX)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_bidirectionallineconfig.c: 57: SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_bidirectionallineconfig.c: 61: SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
	ldw	x, #0x5201
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_spi.spi_bidirectionallineconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
