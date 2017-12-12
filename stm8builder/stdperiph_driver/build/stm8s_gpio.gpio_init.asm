;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:00 2017
;--------------------------------------------------------
	.module stm8s_gpio_gpio_init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _GPIO_Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 58: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
;	-----------------------------------------
;	 function GPIO_Init
;	-----------------------------------------
_GPIO_Init:
	sub	sp, #5
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 64: assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
	tnz	(0x0b, sp)
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0x40
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0x20
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0x60
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0xa0
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0xe0
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0x80
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0xc0
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0xb0
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0xf0
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0x90
	jreq	00116$
	ld	a, (0x0b, sp)
	cp	a, #0xd0
	jreq	00116$
	ldw	y, #___str_0+0
	push	#0x40
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00116$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 65: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
	tnz	(0x0a, sp)
	jrne	00151$
	ldw	y, #___str_0+0
	push	#0x41
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00151$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 68: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	y, (0x08, sp)
	ldw	(0x01, sp), y
	ldw	x, (0x01, sp)
	addw	x, #0x0004
	ldw	(0x04, sp), x
	ldw	x, (0x04, sp)
	ld	a, (x)
	ld	xh, a
	ld	a, (0x0a, sp)
	cpl	a
	ld	(0x03, sp), a
	ld	a, xh
	and	a, (0x03, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 85: GPIOx->DDR |= (uint8_t)GPIO_Pin;
	ldw	x, (0x01, sp)
	incw	x
	incw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 74: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
	tnz	(0x0b, sp)
	jrpl	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 78: GPIOx->ODR |= (uint8_t)GPIO_Pin;
	ldw	y, (0x01, sp)
	ld	a, (y)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 76: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
	push	a
	ld	a, (0x0c, sp)
	bcp	a, #0x10
	pop	a
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 78: GPIOx->ODR |= (uint8_t)GPIO_Pin;
	or	a, (0x0a, sp)
	ldw	y, (0x01, sp)
	ld	(y), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 82: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
	and	a, (0x03, sp)
	ldw	y, (0x01, sp)
	ld	(y), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 85: GPIOx->DDR |= (uint8_t)GPIO_Pin;
	ld	a, (x)
	or	a, (0x0a, sp)
	ld	(x), a
	jra	00106$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 90: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
	ld	a, (x)
	and	a, (0x03, sp)
	ld	(x), a
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 99: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ldw	x, (0x01, sp)
	addw	x, #0x0003
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 97: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
	ld	a, (0x0b, sp)
	bcp	a, #0x40
	jreq	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 99: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ld	a, (x)
	or	a, (0x0a, sp)
	ld	(x), a
	jra	00109$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 103: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	ld	a, (x)
	and	a, (0x03, sp)
	ld	(x), a
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
	ld	a, (0x0b, sp)
	bcp	a, #0x20
	jreq	00111$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 112: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
	ldw	x, (0x04, sp)
	ld	a, (x)
	or	a, (0x0a, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
	jra	00113$
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_init.c: 116: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
	ldw	x, (0x04, sp)
	ld	a, (x)
	and	a, (0x03, sp)
	ldw	x, (0x04, sp)
	ld	(x), a
00113$:
	addw	sp, #5
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_gpio.gpio_init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
