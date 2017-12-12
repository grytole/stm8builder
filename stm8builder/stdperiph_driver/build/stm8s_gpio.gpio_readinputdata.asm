;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:00 2017
;--------------------------------------------------------
	.module stm8s_gpio_gpio_readinputdata
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_ReadInputData
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_readinputdata.c: 54: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_ReadInputData
;	-----------------------------------------
_GPIO_ReadInputData:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_readinputdata.c: 56: return ((uint8_t)GPIOx->IDR);
	ldw	x, (0x03, sp)
	ld	a, (0x1, x)
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
