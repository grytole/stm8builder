;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:02 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_AcknowledgeConfig
	.globl _assert_failed
	.globl _I2C_Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 61: void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
;	-----------------------------------------
;	 function I2C_Init
;	-----------------------------------------
_I2C_Init:
	sub	sp, #10
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 67: uint8_t tmpccrh = 0;
	clr	(0x01, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 70: assert_param(IS_I2C_ACK_OK(Ack));
	tnz	(0x14, sp)
	jreq	00114$
	ld	a, (0x14, sp)
	cp	a, #0x01
	jreq	00114$
	ld	a, (0x14, sp)
	cp	a, #0x02
	jreq	00114$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 71: assert_param(IS_I2C_ADDMODE_OK(AddMode));
	tnz	(0x15, sp)
	jreq	00122$
	ld	a, (0x15, sp)
	cp	a, #0x80
	jreq	00122$
	ldw	y, #___str_0+0
	push	#0x47
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00122$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 72: assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
	ldw	x, (0x11, sp)
	cpw	x, #0x03ff
	jrule	00127$
	ldw	y, #___str_0+0
	push	#0x48
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00127$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 73: assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
	tnz	(0x13, sp)
	jreq	00129$
	ld	a, (0x13, sp)
	cp	a, #0x40
	jreq	00129$
	ldw	y, #___str_0+0
	push	#0x49
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00129$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 74: assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
	ld	a, (0x16, sp)
	cp	a, #0x01
	jrc	00133$
	ld	a, (0x16, sp)
	cp	a, #0x10
	jrule	00134$
00133$:
	ldw	y, #___str_0+0
	push	#0x4a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00134$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 75: assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
	ldw	x, (0x0f, sp)
	cpw	x, #0x0001
	ld	a, (0x0e, sp)
	sbc	a, #0x00
	ld	a, (0x0d, sp)
	sbc	a, #0x00
	jrc	00138$
	ldw	x, #0x1a80
	cpw	x, (0x0f, sp)
	ld	a, #0x06
	sbc	a, (0x0e, sp)
	clr	a
	sbc	a, (0x0d, sp)
	jrnc	00139$
00138$:
	ldw	y, #___str_0+0
	push	#0x4b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00139$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 80: I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
	ldw	x, #0x5212
	ld	a, (x)
	and	a, #0xc0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 82: I2C->FREQR |= InputClockFrequencyMHz;
	ldw	x, #0x5212
	ld	a, (x)
	or	a, (0x16, sp)
	ldw	x, #0x5212
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 86: I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
	bres	0x5210, #0
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 89: I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
	ldw	x, #0x521c
	ld	a, (x)
	and	a, #0x30
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 90: I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
	ldw	x, #0x521b
	ld	a, (x)
	mov	0x521b+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 101: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
	clrw	x
	ld	a, (0x16, sp)
	ld	xl, a
	clrw	y
	pushw	x
	pushw	y
	push	#0x40
	push	#0x42
	push	#0x0f
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x06, sp), x
	ldw	(0x04, sp), y
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 93: if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
	ldw	x, #0x86a0
	cpw	x, (0x0f, sp)
	ld	a, #0x01
	sbc	a, (0x0e, sp)
	clr	a
	sbc	a, (0x0d, sp)
	jrnc	00109$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 96: tmpccrh = I2C_CCRH_FS;
	ld	a, #0x80
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 98: if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
	tnz	(0x13, sp)
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 101: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	push	#0x03
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x0a, sp)
	pushw	x
	ldw	x, (0x0a, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x02, sp), x
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 106: result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	push	#0x19
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ld	a, xl
	push	a
	ld	a, xh
	push	a
	pushw	y
	ldw	x, (0x0a, sp)
	pushw	x
	ldw	x, (0x0a, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x02, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 108: tmpccrh |= I2C_CCRH_DUTY;
	ld	a, #0xc0
	ld	(0x01, sp), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 112: if (result < (uint16_t)0x01)
	ldw	x, (0x02, sp)
	cpw	x, #0x0001
	jrnc	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 115: result = (uint16_t)0x0001;
	ldw	x, #0x0001
	ldw	(0x02, sp), x
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 121: tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
	ld	a, (0x16, sp)
	ld	xl, a
	ld	a, #0x03
	mul	x, a
	push	#0x0a
	push	#0x00
	pushw	x
	call	__divsint
	addw	sp, #4
	incw	x
	ld	a, xl
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 122: I2C->TRISER = (uint8_t)tmpval;
	ldw	x, #0x521d
	ld	(x), a
	jra	00110$
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 129: result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
	ldw	y, (0x0f, sp)
	ldw	x, (0x0d, sp)
	sllw	y
	rlcw	x
	pushw	y
	pushw	x
	ldw	x, (0x0a, sp)
	pushw	x
	ldw	x, (0x0a, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x02, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 132: if (result < (uint16_t)0x0004)
	ldw	x, (0x02, sp)
	cpw	x, #0x0004
	jrnc	00107$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 135: result = (uint16_t)0x0004;
	ldw	x, #0x0004
	ldw	(0x02, sp), x
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 141: I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
	ld	a, (0x16, sp)
	inc	a
	ldw	x, #0x521d
	ld	(x), a
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 146: I2C->CCRL = (uint8_t)result;
	ld	a, (0x03, sp)
	ldw	x, #0x521b
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 147: I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
	ld	a, (0x02, sp)
	clr	(0x08, sp)
	and	a, #0x0f
	or	a, (0x01, sp)
	ldw	x, #0x521c
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 150: I2C->CR1 |= I2C_CR1_PE;
	bset	0x5210, #0
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 153: I2C_AcknowledgeConfig(Ack);
	ld	a, (0x14, sp)
	push	a
	call	_I2C_AcknowledgeConfig
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 156: I2C->OARL = (uint8_t)(OwnAddress);
	ld	a, (0x12, sp)
	ldw	x, #0x5213
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 157: I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
	ld	a, (0x15, sp)
	or	a, #0x40
	ld	(0x0a, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_init.c: 158: (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
	clr	a
	ld	xl, a
	ld	a, (0x11, sp)
	and	a, #0x03
	ld	xh, a
	ld	a, #0x80
	div	x, a
	ld	a, xl
	or	a, (0x0a, sp)
	ldw	x, #0x5214
	ld	(x), a
	addw	sp, #10
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_i2c.i2c_init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
