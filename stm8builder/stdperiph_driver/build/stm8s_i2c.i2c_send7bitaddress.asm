;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:02 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_send7bitaddress
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_Send7bitAddress
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_send7bitaddress.c: 52: void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
;	-----------------------------------------
;	 function I2C_Send7bitAddress
;	-----------------------------------------
_I2C_Send7bitAddress:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_send7bitaddress.c: 55: assert_param(IS_I2C_ADDRESS_OK(Address));
	ld	a, (0x03, sp)
	srl	a
	jrnc	00104$
	ldw	y, #___str_0+0
	push	#0x37
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_send7bitaddress.c: 56: assert_param(IS_I2C_DIRECTION_OK(Direction));
	tnz	(0x04, sp)
	jreq	00106$
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00106$
	ldw	y, #___str_0+0
	push	#0x38
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_send7bitaddress.c: 59: Address &= (uint8_t)0xFE;
	ld	a, (0x03, sp)
	and	a, #0xfe
	ld	(0x03, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_send7bitaddress.c: 62: I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
	ld	a, (0x03, sp)
	or	a, (0x04, sp)
	ldw	x, #0x5216
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_send7bitaddress.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
