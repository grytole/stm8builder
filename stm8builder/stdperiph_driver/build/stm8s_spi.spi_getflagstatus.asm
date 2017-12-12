;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:05 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_getflagstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _SPI_GetFlagStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getflagstatus.c: 53: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
;	-----------------------------------------
;	 function SPI_GetFlagStatus
;	-----------------------------------------
_SPI_GetFlagStatus:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getflagstatus.c: 57: assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
	ld	a, (0x03, sp)
	cp	a, #0x40
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x20
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x10
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x80
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x39
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getflagstatus.c: 60: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
	ldw	x, #0x5203
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getflagstatus.c: 62: status = SET; /* SPI_FLAG is set */
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getflagstatus.c: 66: status = RESET; /* SPI_FLAG is reset*/
	.byte 0x21
00102$:
	clr	a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getflagstatus.c: 70: return status;
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_spi.spi_getflagstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
