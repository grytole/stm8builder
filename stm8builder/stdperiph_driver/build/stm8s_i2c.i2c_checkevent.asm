;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:02 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_checkevent
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_CheckEvent
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 159: ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
;	-----------------------------------------
;	 function I2C_CheckEvent
;	-----------------------------------------
_I2C_CheckEvent:
	sub	sp, #5
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 161: __IO uint16_t lastevent = 0x00;
	clrw	x
	ldw	(0x01, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 167: assert_param(IS_I2C_EVENT_OK(I2C_Event));
	ldw	x, (0x08, sp)
	cpw	x, #0x0004
	jrne	00229$
	ld	a, #0x01
	ld	(0x03, sp), a
	jra	00230$
00229$:
	clr	(0x03, sp)
00230$:
	ldw	x, (0x08, sp)
	cpw	x, #0x0682
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0202
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x1200
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0240
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0350
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0684
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0794
	jreq	00110$
	tnz	(0x03, sp)
	jrne	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0010
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0301
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0782
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0302
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0340
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0784
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0780
	jreq	00110$
	ldw	x, (0x08, sp)
	cpw	x, #0x0308
	jreq	00110$
	ldw	y, #___str_0+0
	push	#0xa7
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 169: if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 171: lastevent = I2C->SR2 & I2C_SR2_AF;
	ldw	x, #0x5218
	ld	a, (x)
	and	a, #0x04
	clrw	x
	ld	xl, a
	ldw	(0x01, sp), x
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 175: flag1 = I2C->SR1;
	ldw	x, #0x5217
	ld	a, (x)
	ld	yh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 176: flag2 = I2C->SR3;
	ldw	x, #0x5219
	ld	a, (x)
	ld	xh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 177: lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
	clr	a
	clr	a
	clr	(0x04, sp)
	pushw	y
	or	a, (1, sp)
	popw	y
	rlwa	x
	or	a, (0x04, sp)
	ld	xh, a
	ldw	(0x01, sp), x
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 180: if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
	ld	a, (0x02, sp)
	and	a, (0x09, sp)
	ld	xl, a
	ld	a, (0x01, sp)
	and	a, (0x08, sp)
	ld	xh, a
	cpw	x, (0x08, sp)
	jrne	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 183: status = SUCCESS;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 188: status = ERROR;
	.byte 0x21
00105$:
	clr	a
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_checkevent.c: 192: return status;
	addw	sp, #5
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_checkevent.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
