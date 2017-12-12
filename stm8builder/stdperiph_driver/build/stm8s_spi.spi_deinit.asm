;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:05 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_deinit.c: 50: void SPI_DeInit(void)
;	-----------------------------------------
;	 function SPI_DeInit
;	-----------------------------------------
_SPI_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_deinit.c: 52: SPI->CR1    = SPI_CR1_RESET_VALUE;
	mov	0x5200+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_deinit.c: 53: SPI->CR2    = SPI_CR2_RESET_VALUE;
	mov	0x5201+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_deinit.c: 54: SPI->ICR    = SPI_ICR_RESET_VALUE;
	mov	0x5202+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_deinit.c: 55: SPI->SR     = SPI_SR_RESET_VALUE;
	mov	0x5203+0, #0x02
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_deinit.c: 56: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
	mov	0x5205+0, #0x07
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
