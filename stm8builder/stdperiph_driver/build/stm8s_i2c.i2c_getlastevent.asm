;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:01 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_getlastevent
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_GetLastEvent
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getlastevent.c: 138: I2C_Event_TypeDef I2C_GetLastEvent(void)
;	-----------------------------------------
;	 function I2C_GetLastEvent
;	-----------------------------------------
_I2C_GetLastEvent:
	sub	sp, #4
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getlastevent.c: 140: __IO uint16_t lastevent = 0;
	clrw	x
	ldw	(0x03, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getlastevent.c: 144: if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
	ldw	x, #0x5218
	ld	a, (x)
	bcp	a, #0x04
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getlastevent.c: 146: lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
	ldw	x, #0x0004
	ldw	(0x03, sp), x
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getlastevent.c: 151: flag1 = I2C->SR1;
	ldw	x, #0x5217
	ld	a, (x)
	clrw	x
	ld	xl, a
	ldw	(0x01, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getlastevent.c: 152: flag2 = I2C->SR3;
	ldw	x, #0x5219
	ld	a, (x)
	ld	xh, a
	clr	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getlastevent.c: 155: lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
	clr	a
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x01, sp)
	ld	xh, a
	ldw	(0x03, sp), x
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getlastevent.c: 158: return (I2C_Event_TypeDef)lastevent;
	ldw	x, (0x03, sp)
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
