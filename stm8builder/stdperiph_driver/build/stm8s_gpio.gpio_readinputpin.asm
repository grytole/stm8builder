;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:59 2017
;--------------------------------------------------------
	.module stm8s_gpio_gpio_readinputpin
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_ReadInputPin
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_readinputpin.c: 54: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
;	-----------------------------------------
;	 function GPIO_ReadInputPin
;	-----------------------------------------
_GPIO_ReadInputPin:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_readinputpin.c: 56: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
	ldw	x, (0x03, sp)
	ld	a, (0x1, x)
	and	a, (0x05, sp)
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
