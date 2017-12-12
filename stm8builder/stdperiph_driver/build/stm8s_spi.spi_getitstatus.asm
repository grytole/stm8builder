;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:05 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_getitstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _SPI_GetITStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 58: ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
;	-----------------------------------------
;	 function SPI_GetITStatus
;	-----------------------------------------
_SPI_GetITStatus:
	sub	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 65: assert_param(IS_SPI_GET_IT_OK(SPI_IT));
	ld	a, (0x06, sp)
	cp	a, #0x65
	jreq	00108$
	ld	a, (0x06, sp)
	cp	a, #0x55
	jreq	00108$
	ld	a, (0x06, sp)
	cp	a, #0x45
	jreq	00108$
	ld	a, (0x06, sp)
	cp	a, #0x34
	jreq	00108$
	ld	a, (0x06, sp)
	cp	a, #0x17
	jreq	00108$
	ld	a, (0x06, sp)
	cp	a, #0x06
	jreq	00108$
	ldw	y, #___str_0+0
	push	#0x41
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 67: itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
	ld	a, (0x06, sp)
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00175$
00174$:
	sll	(1, sp)
	dec	a
	jrne	00174$
00175$:
	pop	a
	ld	(0x03, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 70: itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
	ld	a, (0x06, sp)
	swap	a
	and	a, #0x0f
	ld	xh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 72: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00177$
00176$:
	sll	(1, sp)
	dec	a
	jrne	00176$
00177$:
	pop	a
	ld	(0x02, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 74: enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
	ldw	x, #0x5203
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 76: if (((SPI->ICR & itpos) != RESET) && enablestatus)
	ldw	x, #0x5202
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 79: pendingbitstatus = SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 84: pendingbitstatus = RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_getitstatus.c: 87: return  pendingbitstatus;
	addw	sp, #3
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_spi.spi_getitstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
