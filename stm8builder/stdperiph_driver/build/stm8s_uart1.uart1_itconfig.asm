;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:16 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_itconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _UART1_ITConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 61: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function UART1_ITConfig
;	-----------------------------------------
_UART1_ITConfig:
	sub	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 66: assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
	ldw	x, (0x06, sp)
	cpw	x, #0x0100
	jreq	00119$
	ldw	x, (0x06, sp)
	cpw	x, #0x0277
	jreq	00119$
	ldw	x, (0x06, sp)
	cpw	x, #0x0266
	jreq	00119$
	ldw	x, (0x06, sp)
	cpw	x, #0x0205
	jreq	00119$
	ldw	x, (0x06, sp)
	cpw	x, #0x0244
	jreq	00119$
	ldw	x, (0x06, sp)
	cpw	x, #0x0346
	jreq	00119$
	ldw	y, #___str_0+0
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00119$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 67: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x08, sp)
	jreq	00136$
	ld	a, (0x08, sp)
	cp	a, #0x01
	jreq	00136$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00136$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 70: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
	ld	a, (0x06, sp)
	ld	xh, a
	clr	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 72: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
	ld	a, (0x07, sp)
	and	a, #0x0f
	ld	xl, a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00215$
00214$:
	sll	(1, sp)
	dec	a
	jrne	00214$
00215$:
	pop	a
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 77: if (uartreg == 0x01)
	ld	a, xh
	cp	a, #0x01
	jrne	00217$
	ld	a, #0x01
	ld	(0x03, sp), a
	jra	00218$
00217$:
	clr	(0x03, sp)
00218$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 81: else if (uartreg == 0x02)
	ld	a, xh
	cp	a, #0x02
	jrne	00220$
	ld	a, #0x01
	.byte 0x21
00220$:
	clr	a
00221$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 74: if (NewState != DISABLE)
	tnz	(0x08, sp)
	jreq	00114$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 77: if (uartreg == 0x01)
	tnz	(0x03, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 79: UART1->CR1 |= itpos;
	ldw	x, #0x5234
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5234
	ld	(x), a
	jra	00116$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 81: else if (uartreg == 0x02)
	tnz	a
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 83: UART1->CR2 |= itpos;
	ldw	x, #0x5235
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5235
	ld	(x), a
	jra	00116$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 87: UART1->CR4 |= itpos;
	ldw	x, #0x5237
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x5237
	ld	(x), a
	jra	00116$
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 95: UART1->CR1 &= (uint8_t)(~itpos);
	push	a
	ld	a, (0x02, sp)
	cpl	a
	ld	(0x03, sp), a
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 93: if (uartreg == 0x01)
	tnz	(0x03, sp)
	jreq	00111$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 95: UART1->CR1 &= (uint8_t)(~itpos);
	ldw	x, #0x5234
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x5234
	ld	(x), a
	jra	00116$
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 97: else if (uartreg == 0x02)
	tnz	a
	jreq	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 99: UART1->CR2 &= (uint8_t)(~itpos);
	ldw	x, #0x5235
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x5235
	ld	(x), a
	jra	00116$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_itconfig.c: 103: UART1->CR4 &= (uint8_t)(~itpos);
	ldw	x, #0x5237
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x5237
	ld	(x), a
00116$:
	addw	sp, #3
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_uart1.uart1_itconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
