;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:00 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_acknowledgeconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_AcknowledgeConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_acknowledgeconfig.c: 52: void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
;	-----------------------------------------
;	 function I2C_AcknowledgeConfig
;	-----------------------------------------
_I2C_AcknowledgeConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_acknowledgeconfig.c: 55: assert_param(IS_I2C_ACK_OK(Ack));
	ld	a, (0x04, sp)
	cp	a, #0x01
	jrne	00138$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00139$
00138$:
	clr	(0x01, sp)
00139$:
	tnz	(0x04, sp)
	jreq	00110$
	tnz	(0x01, sp)
	jrne	00110$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00110$
	ldw	y, #___str_0+0
	push	#0x37
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_acknowledgeconfig.c: 57: if (Ack == I2C_ACK_NONE)
	tnz	(0x04, sp)
	jrne	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_acknowledgeconfig.c: 60: I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
	ldw	x, #0x5211
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
	jra	00107$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_acknowledgeconfig.c: 65: I2C->CR2 |= I2C_CR2_ACK;
	ldw	x, #0x5211
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_acknowledgeconfig.c: 67: if (Ack == I2C_ACK_CURR)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_acknowledgeconfig.c: 70: I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
	ldw	x, #0x5211
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	jra	00107$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_acknowledgeconfig.c: 75: I2C->CR2 |= I2C_CR2_POS;
	ldw	x, #0x5211
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
00107$:
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_acknowledgeconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
