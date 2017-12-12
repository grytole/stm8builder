;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:04 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_transmitcrc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_TransmitCRC
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_transmitcrc.c: 50: void SPI_TransmitCRC(void)
;	-----------------------------------------
;	 function SPI_TransmitCRC
;	-----------------------------------------
_SPI_TransmitCRC:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_transmitcrc.c: 52: SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
	ldw	x, #0x5201
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
