;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:01 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_getflagstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _I2C_GetFlagStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 152: FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
;	-----------------------------------------
;	 function I2C_GetFlagStatus
;	-----------------------------------------
_I2C_GetFlagStatus:
	sub	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 154: uint8_t tempreg = 0;
	clr	(0x03, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 159: assert_param(IS_I2C_FLAG_OK(I2C_Flag));
	ldw	x, (0x06, sp)
	cpw	x, #0x0180
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0140
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0110
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0108
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0104
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0102
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0101
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0220
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0208
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0204
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0202
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0201
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0310
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0304
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0302
	jreq	00112$
	ldw	x, (0x06, sp)
	cpw	x, #0x0301
	jreq	00112$
	ldw	y, #___str_0+0
	push	#0x9f
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 162: regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
	ld	a, (0x06, sp)
	clr	(0x01, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 164: switch (regindex)
	cp	a, #0x01
	jreq	00101$
	cp	a, #0x02
	jreq	00102$
	cp	a, #0x03
	jreq	00103$
	jra	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 167: case 0x01:
00101$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 168: tempreg = (uint8_t)I2C->SR1;
	ldw	x, #0x5217
	ld	a, (x)
	ld	(0x03, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 169: break;
	jra	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 172: case 0x02:
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 173: tempreg = (uint8_t)I2C->SR2;
	ldw	x, #0x5218
	ld	a, (x)
	ld	(0x03, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 174: break;
	jra	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 177: case 0x03:
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 178: tempreg = (uint8_t)I2C->SR3;
	ldw	x, #0x5219
	ld	a, (x)
	ld	(0x03, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 183: }
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 186: if ((tempreg & (uint8_t)I2C_Flag ) != 0)
	ld	a, (0x07, sp)
	and	a, (0x03, sp)
	tnz	a
	jreq	00107$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 189: bitstatus = SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 194: bitstatus = RESET;
	.byte 0x21
00107$:
	clr	a
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_getflagstatus.c: 197: return bitstatus;
	addw	sp, #3
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_getflagstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
