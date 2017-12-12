;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:02 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_clearflag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_ClearFlag
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_clearflag.c: 87: void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
;	-----------------------------------------
;	 function I2C_ClearFlag
;	-----------------------------------------
_I2C_ClearFlag:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_clearflag.c: 91: assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
	ld	a, (0x03, sp)
	bcp	a, #0xfd
	jrne	00103$
	ldw	x, (0x03, sp)
	jrne	00104$
00103$:
	ldw	y, #___str_0+0
	push	#0x5b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_clearflag.c: 94: flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
	ld	a, (0x04, sp)
	ld	xl, a
	clr	a
	ld	xh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_clearflag.c: 96: I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
	cplw	x
	ld	a, xl
	ldw	x, #0x5218
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_clearflag.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
