;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:02 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_itconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_ITConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_itconfig.c: 53: void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function I2C_ITConfig
;	-----------------------------------------
_I2C_ITConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_itconfig.c: 56: assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00107$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00107$
	ld	a, (0x04, sp)
	cp	a, #0x04
	jreq	00107$
	ld	a, (0x04, sp)
	cp	a, #0x03
	jreq	00107$
	ld	a, (0x04, sp)
	cp	a, #0x05
	jreq	00107$
	ld	a, (0x04, sp)
	cp	a, #0x06
	jreq	00107$
	ld	a, (0x04, sp)
	cp	a, #0x07
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_itconfig.c: 57: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x05, sp)
	jreq	00127$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00127$
	ldw	y, #___str_0+0
	push	#0x39
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00127$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_itconfig.c: 59: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_itconfig.c: 62: I2C->ITR |= (uint8_t)I2C_IT;
	ldw	x, #0x521a
	ld	a, (x)
	or	a, (0x04, sp)
	ldw	x, #0x521a
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_itconfig.c: 67: I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
	ldw	x, #0x521a
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x04, sp)
	cpl	a
	and	a, (0x01, sp)
	ldw	x, #0x521a
	ld	(x), a
00104$:
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_itconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
