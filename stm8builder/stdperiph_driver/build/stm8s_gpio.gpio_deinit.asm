;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:00 2017
;--------------------------------------------------------
	.module stm8s_gpio_gpio_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GPIO_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_deinit.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
;	-----------------------------------------
;	 function GPIO_DeInit
;	-----------------------------------------
_GPIO_DeInit:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_deinit.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
	ldw	y, (0x05, sp)
	ldw	(0x01, sp), y
	ldw	x, (0x01, sp)
	clr	(x)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_deinit.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
	ldw	x, (0x01, sp)
	incw	x
	incw	x
	clr	(x)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_deinit.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
	ldw	x, (0x01, sp)
	addw	x, #0x0003
	clr	(x)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_gpio.gpio_deinit.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
	ldw	x, (0x01, sp)
	addw	x, #0x0004
	clr	(x)
	popw	x
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
