;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:01 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_getitstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_GetITStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 78: ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
;	-----------------------------------------
;	 function I2C_GetITStatus
;	-----------------------------------------
_I2C_GetITStatus:
	sub	sp, #4
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 81: __IO uint8_t enablestatus = 0;
	clr	(0x01, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 85: assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
	ldw	x, (0x07, sp)
	cpw	x, #0x1680
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x1640
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x1210
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x1208
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x1204
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x1202
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x1201
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x2220
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x2108
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x2104
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x2102
	jreq	00115$
	ldw	x, (0x07, sp)
	cpw	x, #0x2101
	jreq	00115$
	ldw	y, #___str_0+0
	push	#0x55
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00115$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 87: tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
	clr	(0x03, sp)
	ld	a, (0x07, sp)
	and	a, #0x07
	ld	xh, a
	clr	a
	clr	a
	ld	xl, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 90: enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
	ldw	y, #0x521a
	ld	a, (y)
	pushw	x
	and	a, (1, sp)
	popw	x
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 92: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
	clr	a
	ld	xl, a
	ld	a, (0x07, sp)
	and	a, #0x30
	ld	xh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 95: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
	ld	a, (0x08, sp)
	ld	(0x04, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 92: if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
	cpw	x, #0x0100
	jrne	00110$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 95: if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
	ldw	x, #0x5217
	ld	a, (x)
	and	a, (0x04, sp)
	tnz	a
	jreq	00102$
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 98: bitstatus = SET;
	ld	a, #0x01
	jra	00111$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 103: bitstatus = RESET;
	clr	a
	jra	00111$
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 109: if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
	ldw	x, #0x5218
	ld	a, (x)
	and	a, (0x04, sp)
	tnz	a
	jreq	00106$
	tnz	(0x01, sp)
	jreq	00106$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 112: bitstatus = SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 117: bitstatus = RESET;
	.byte 0x21
00106$:
	clr	a
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getitstatus.c: 121: return  bitstatus;
	addw	sp, #4
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_getitstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
