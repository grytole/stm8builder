;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:04 2017
;--------------------------------------------------------
	.module stm8s_spi_spi_itconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _SPI_ITConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_itconfig.c: 52: void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function SPI_ITConfig
;	-----------------------------------------
_SPI_ITConfig:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_itconfig.c: 56: assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
	ld	a, (0x05, sp)
	cp	a, #0x17
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x06
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x05
	jreq	00107$
	ld	a, (0x05, sp)
	cp	a, #0x34
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x38
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_itconfig.c: 57: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x06, sp)
	jreq	00118$
	ld	a, (0x06, sp)
	cp	a, #0x01
	jreq	00118$
	ldw	y, #___str_0+0
	push	#0x39
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00118$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_itconfig.c: 60: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
	ld	a, (0x05, sp)
	and	a, #0x0f
	ld	xh, a
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00167$
00166$:
	sll	(1, sp)
	dec	a
	jrne	00166$
00167$:
	pop	a
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_itconfig.c: 62: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_itconfig.c: 64: SPI->ICR |= itpos; /* Enable interrupt*/
	ldw	x, #0x5202
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5202
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_spi.spi_itconfig.c: 68: SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
	ldw	x, #0x5202
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x01, sp)
	cpl	a
	and	a, (0x02, sp)
	ldw	x, #0x5202
	ld	(x), a
00104$:
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_spi.spi_itconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
