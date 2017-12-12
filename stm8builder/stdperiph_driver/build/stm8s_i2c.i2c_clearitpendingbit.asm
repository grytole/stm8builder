;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:00 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_clearitpendingbit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_ClearITPendingBit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_clearitpendingbit.c: 89: void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
;	-----------------------------------------
;	 function I2C_ClearITPendingBit
;	-----------------------------------------
_I2C_ClearITPendingBit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_clearitpendingbit.c: 94: assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
	ldw	x, (0x03, sp)
	cpw	x, #0x2220
	jreq	00104$
	ldw	x, (0x03, sp)
	cpw	x, #0x2108
	jreq	00104$
	ldw	x, (0x03, sp)
	cpw	x, #0x2104
	jreq	00104$
	ldw	x, (0x03, sp)
	cpw	x, #0x2102
	jreq	00104$
	ldw	x, (0x03, sp)
	cpw	x, #0x2101
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x5e
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_clearitpendingbit.c: 97: flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
	ld	a, (0x04, sp)
	ld	xl, a
	clr	a
	ld	xh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_clearitpendingbit.c: 100: I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
	cplw	x
	ld	a, xl
	ldw	x, #0x5218
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_clearitpendingbit.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
