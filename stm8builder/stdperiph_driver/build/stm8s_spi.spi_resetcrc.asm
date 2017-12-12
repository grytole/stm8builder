;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:04 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_resetcrc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_CalculateCRCCmd
	.globl _SPI_Cmd
	.globl _SPI_ResetCRC
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_resetcrc.c: 50: void SPI_ResetCRC(void)
;	-----------------------------------------
;	 function SPI_ResetCRC
;	-----------------------------------------
_SPI_ResetCRC:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_resetcrc.c: 54: SPI_CalculateCRCCmd(ENABLE);
	push	#0x01
	call	_SPI_CalculateCRCCmd
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_resetcrc.c: 57: SPI_Cmd(ENABLE);
	push	#0x01
	call	_SPI_Cmd
	pop	a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
