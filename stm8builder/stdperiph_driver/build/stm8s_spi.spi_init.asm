;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:04 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _SPI_Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 64: void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 67: assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
	tnz	(0x05, sp)
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x80
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 68: assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
	tnz	(0x06, sp)
	jreq	00112$
	ld	a, (0x06, sp)
	cp	a, #0x08
	jreq	00112$
	ld	a, (0x06, sp)
	cp	a, #0x10
	jreq	00112$
	ld	a, (0x06, sp)
	cp	a, #0x18
	jreq	00112$
	ld	a, (0x06, sp)
	cp	a, #0x20
	jreq	00112$
	ld	a, (0x06, sp)
	cp	a, #0x28
	jreq	00112$
	ld	a, (0x06, sp)
	cp	a, #0x30
	jreq	00112$
	ld	a, (0x06, sp)
	cp	a, #0x38
	jreq	00112$
	ldw	y, #___str_0+0
	push	#0x44
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 69: assert_param(IS_SPI_MODE_OK(Mode));
	ld	a, (0x07, sp)
	cp	a, #0x04
	jrne	00290$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00291$
00290$:
	clr	(0x01, sp)
00291$:
	tnz	(0x01, sp)
	jrne	00135$
	tnz	(0x07, sp)
	jreq	00135$
	ldw	y, #___str_0+0
	push	#0x45
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00135$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 70: assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
	tnz	(0x08, sp)
	jreq	00140$
	ld	a, (0x08, sp)
	cp	a, #0x02
	jreq	00140$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00140$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 71: assert_param(IS_SPI_PHASE_OK(ClockPhase));
	tnz	(0x09, sp)
	jreq	00145$
	ld	a, (0x09, sp)
	cp	a, #0x01
	jreq	00145$
	ldw	y, #___str_0+0
	push	#0x47
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00145$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 72: assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
	tnz	(0x0a, sp)
	jreq	00150$
	ld	a, (0x0a, sp)
	cp	a, #0x04
	jreq	00150$
	ld	a, (0x0a, sp)
	cp	a, #0x80
	jreq	00150$
	ld	a, (0x0a, sp)
	cp	a, #0xc0
	jreq	00150$
	ldw	y, #___str_0+0
	push	#0x48
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00150$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 73: assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
	ld	a, (0x0b, sp)
	cp	a, #0x02
	jreq	00161$
	tnz	(0x0b, sp)
	jreq	00161$
	ldw	y, #___str_0+0
	push	#0x49
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00161$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 74: assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
	tnz	(0x0c, sp)
	jrne	00166$
	ldw	y, #___str_0+0
	push	#0x4a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00166$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 77: SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
	ld	a, (0x05, sp)
	or	a, (0x06, sp)
	ld	(0x02, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 78: (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
	ld	a, (0x08, sp)
	or	a, (0x09, sp)
	or	a, (0x02, sp)
	ldw	x, #0x5200
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 81: SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
	ld	a, (0x0a, sp)
	or	a, (0x0b, sp)
	ldw	x, #0x5201
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 83: if (Mode == SPI_MODE_MASTER)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 85: SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
	bset	0x5201, #0
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 89: SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
	bres	0x5201, #0
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 93: SPI->CR1 |= (uint8_t)(Mode);
	ldw	x, #0x5200
	ld	a, (x)
	or	a, (0x07, sp)
	ldw	x, #0x5200
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_init.c: 96: SPI->CRCPR = (uint8_t)CRCPolynomial;
	ldw	x, #0x5205
	ld	a, (0x0c, sp)
	ld	(x), a
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_spi.spi_init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
