;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:02 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_fastmodedutycycleconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_FastModeDutyCycleConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_fastmodedutycycleconfig.c: 51: void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
;	-----------------------------------------
;	 function I2C_FastModeDutyCycleConfig
;	-----------------------------------------
_I2C_FastModeDutyCycleConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_fastmodedutycycleconfig.c: 54: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
	ld	a, (0x04, sp)
	cp	a, #0x40
	jrne	00124$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00125$
00124$:
	clr	(0x01, sp)
00125$:
	tnz	(0x04, sp)
	jreq	00107$
	tnz	(0x01, sp)
	jrne	00107$
	ldw	y, #___str_0+0
	push	#0x36
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_fastmodedutycycleconfig.c: 56: if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_fastmodedutycycleconfig.c: 59: I2C->CCRH |= I2C_CCRH_DUTY;
	ldw	x, #0x521c
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_fastmodedutycycleconfig.c: 64: I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
	ldw	x, #0x521c
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00104$:
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_fastmodedutycycleconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
