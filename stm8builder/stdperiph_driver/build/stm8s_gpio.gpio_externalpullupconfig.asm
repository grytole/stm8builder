;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:00 2017
;--------------------------------------------------------
	.module stm8s_gpio_gpio_externalpullupconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _GPIO_ExternalPullUpConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_externalpullupconfig.c: 55: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
;	-----------------------------------------
;	 function GPIO_ExternalPullUpConfig
;	-----------------------------------------
_GPIO_ExternalPullUpConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_externalpullupconfig.c: 58: assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
	tnz	(0x06, sp)
	jrne	00107$
	ldw	y, #___str_0+0
	push	#0x3a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_externalpullupconfig.c: 59: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x07, sp)
	jreq	00109$
	ld	a, (0x07, sp)
	cp	a, #0x01
	jreq	00109$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_externalpullupconfig.c: 63: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ldw	x, (0x04, sp)
	addw	x, #0x0003
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_externalpullupconfig.c: 61: if (NewState != DISABLE) /* External Pull-Up Set*/
	tnz	(0x07, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_externalpullupconfig.c: 63: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
	ld	a, (x)
	or	a, (0x06, sp)
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_externalpullupconfig.c: 66: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x06, sp)
	cpl	a
	and	a, (0x01, sp)
	ld	(x), a
00104$:
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_gpio.gpio_externalpullupconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
