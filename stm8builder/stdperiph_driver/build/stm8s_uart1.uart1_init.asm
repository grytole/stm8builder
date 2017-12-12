;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:18 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_GetClockFreq
	.globl _UART1_Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 65: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
_UART1_Init:
	sub	sp, #33
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 72: assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
	ldw	x, #0x8968
	cpw	x, (0x26, sp)
	ld	a, #0x09
	sbc	a, (0x25, sp)
	clr	a
	sbc	a, (0x24, sp)
	jrnc	00113$
	ldw	y, #___str_0+0
	push	#0x48
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 73: assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
	tnz	(0x28, sp)
	jreq	00115$
	ld	a, (0x28, sp)
	cp	a, #0x10
	jreq	00115$
	ldw	y, #___str_0+0
	push	#0x49
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00115$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 74: assert_param(IS_UART1_STOPBITS_OK(StopBits));
	tnz	(0x29, sp)
	jreq	00120$
	ld	a, (0x29, sp)
	cp	a, #0x10
	jreq	00120$
	ld	a, (0x29, sp)
	cp	a, #0x20
	jreq	00120$
	ld	a, (0x29, sp)
	cp	a, #0x30
	jreq	00120$
	ldw	y, #___str_0+0
	push	#0x4a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00120$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 75: assert_param(IS_UART1_PARITY_OK(Parity));
	tnz	(0x2a, sp)
	jreq	00131$
	ld	a, (0x2a, sp)
	cp	a, #0x04
	jreq	00131$
	ld	a, (0x2a, sp)
	cp	a, #0x06
	jreq	00131$
	ldw	y, #___str_0+0
	push	#0x4b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00131$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 76: assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
	ld	a, (0x2c, sp)
	cp	a, #0x08
	jreq	00139$
	ld	a, (0x2c, sp)
	cp	a, #0x40
	jreq	00139$
	ld	a, (0x2c, sp)
	cp	a, #0x04
	jreq	00139$
	ld	a, (0x2c, sp)
	cp	a, #0x80
	jreq	00139$
	ld	a, (0x2c, sp)
	cp	a, #0x0c
	jrne	00314$
	ld	a, #0x01
	.byte 0x21
00314$:
	clr	a
00315$:
	tnz	a
	jrne	00139$
	tnz	a
	jrne	00139$
	ld	a, (0x2c, sp)
	cp	a, #0x44
	jreq	00139$
	ld	a, (0x2c, sp)
	cp	a, #0xc0
	jreq	00139$
	ld	a, (0x2c, sp)
	cp	a, #0x88
	jreq	00139$
	ldw	y, #___str_0+0
	push	#0x4c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00139$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 77: assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
	ld	a, (0x2b, sp)
	and	a, #0x88
	cp	a, #0x88
	jreq	00167$
	ld	a, (0x2b, sp)
	and	a, #0x44
	cp	a, #0x44
	jreq	00167$
	ld	a, (0x2b, sp)
	and	a, #0x22
	cp	a, #0x22
	jreq	00167$
	ld	a, (0x2b, sp)
	and	a, #0x11
	cp	a, #0x11
	jrne	00165$
00167$:
	ldw	y, #___str_0+0
	push	#0x4d
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00165$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 80: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
	ldw	x, #0x5234
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 83: UART1->CR1 |= (uint8_t)WordLength;
	ldw	x, #0x5234
	ld	a, (x)
	or	a, (0x28, sp)
	ldw	x, #0x5234
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 86: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
	ldw	x, #0x5236
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 88: UART1->CR3 |= (uint8_t)StopBits;  
	ldw	x, #0x5236
	ld	a, (x)
	or	a, (0x29, sp)
	ldw	x, #0x5236
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 91: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
	ldw	x, #0x5234
	ld	a, (x)
	and	a, #0xf9
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 93: UART1->CR1 |= (uint8_t)Parity;  
	ldw	x, #0x5234
	ld	a, (x)
	or	a, (0x2a, sp)
	ldw	x, #0x5234
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 96: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
	ldw	x, #0x5232
	ld	a, (x)
	mov	0x5232+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 98: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
	ldw	x, #0x5233
	ld	a, (x)
	and	a, #0x0f
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 100: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
	ldw	x, #0x5233
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 103: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
	call	_CLK_GetClockFreq
	ldw	(0x1a, sp), x
	ldw	x, (0x24, sp)
	ldw	(0x14, sp), x
	ldw	x, (0x26, sp)
	ld	a, #0x04
00339$:
	sllw	x
	rlc	(0x15, sp)
	rlc	(0x14, sp)
	dec	a
	jrne	00339$
	ldw	(0x16, sp), x
	ldw	x, (0x16, sp)
	pushw	x
	ldw	x, (0x16, sp)
	pushw	x
	ldw	x, (0x1e, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 104: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
	call	_CLK_GetClockFreq
	pushw	x
	pushw	y
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x12, sp), x
	ldw	x, (0x16, sp)
	pushw	x
	ldw	x, (0x16, sp)
	pushw	x
	ldw	x, (0x16, sp)
	pushw	x
	pushw	y
	call	__divulong
	addw	sp, #8
	exgw	x, y
	ldw	(0x03, sp), y
	rlwa	x
	ld	(0x01, sp), a
	rrwa	x
	ld	a, xl
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 106: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
	ldw	x, #0x5233
	push	a
	ld	a, (x)
	ld	(0x1e, sp), a
	pop	a
	push	a
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x0e, sp), x
	ldw	(0x0c, sp), y
	pop	a
	ldw	y, (0x03, sp)
	subw	y, (0x0d, sp)
	sbc	a, (0x0c, sp)
	ld	xl, a
	ld	a, (0x01, sp)
	sbc	a, (0x0b, sp)
	ld	xh, a
	ld	a, #0x04
00341$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00341$
	push	#0x64
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	y
	pushw	x
	call	__divulong
	addw	sp, #8
	ld	a, xl
	and	a, #0x0f
	or	a, (0x1d, sp)
	ldw	x, #0x5233
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 108: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
	ldw	x, #0x5233
	ld	a, (x)
	ld	(0x0a, sp), a
	ldw	x, (0x07, sp)
	ldw	y, (0x05, sp)
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	srlw	y
	rrcw	x
	ld	a, xl
	and	a, #0xf0
	push	a
	clr	(0x21, sp)
	clrw	x
	pop	a
	or	a, (0x0a, sp)
	ldw	x, #0x5233
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 110: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
	ldw	x, #0x5232
	ld	a, (x)
	ld	(0x1c, sp), a
	ld	a, (0x08, sp)
	or	a, (0x1c, sp)
	ldw	x, #0x5232
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 113: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
	ldw	x, #0x5235
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 115: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
	ldw	x, #0x5236
	ld	a, (x)
	and	a, #0xf8
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 117: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
	ldw	x, #0x5236
	ld	a, (x)
	ld	(0x09, sp), a
	ld	a, (0x2b, sp)
	and	a, #0x07
	or	a, (0x09, sp)
	ldw	x, #0x5236
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 120: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
	ld	a, (0x2c, sp)
	bcp	a, #0x04
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 123: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
	ldw	x, #0x5235
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 128: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
	ldw	x, #0x5235
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 130: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
	ld	a, (0x2c, sp)
	bcp	a, #0x08
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 133: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
	ldw	x, #0x5235
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00106$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 138: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
	ldw	x, #0x5235
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 142: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
	tnz	(0x2b, sp)
	jrpl	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 145: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
	ldw	x, #0x5236
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	jra	00110$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_init.c: 149: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
	ldw	x, #0x5236
	ld	a, (x)
	ld	(0x0f, sp), a
	ld	a, (0x2b, sp)
	and	a, #0x08
	or	a, (0x0f, sp)
	ldw	x, #0x5236
	ld	(x), a
00110$:
	addw	sp, #33
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_uart1.uart1_init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
