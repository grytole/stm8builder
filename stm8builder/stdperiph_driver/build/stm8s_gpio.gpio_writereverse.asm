;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:00 2017
;--------------------------------------------------------
	.module stm8s_gpio_gpio_writereverse
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_WriteReverse
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_writereverse.c: 56: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
;	-----------------------------------------
;	 function GPIO_WriteReverse
;	-----------------------------------------
_GPIO_WriteReverse:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_writereverse.c: 58: GPIOx->ODR ^= (uint8_t)PortPins;
	ldw	x, (0x03, sp)
	ld	a, (x)
	xor	a, (0x05, sp)
	ld	(x), a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
