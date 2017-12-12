;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:05 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_getcrc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _SPI_GetCRC
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getcrc.c: 50: uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
;	-----------------------------------------
;	 function SPI_GetCRC
;	-----------------------------------------
_SPI_GetCRC:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getcrc.c: 55: assert_param(IS_SPI_CRC_OK(SPI_CRC));
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00107$
	tnz	(0x03, sp)
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x37
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getcrc.c: 57: if (SPI_CRC != SPI_CRC_RX)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getcrc.c: 59: crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
	ldw	x, #0x5207
	ld	a, (x)
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getcrc.c: 63: crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
	ldw	x, #0x5206
	ld	a, (x)
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getcrc.c: 67: return crcreg;
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_spi.spi_getcrc.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
