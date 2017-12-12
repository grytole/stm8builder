;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:01 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_receivedata
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_ReceiveData
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_receivedata.c: 50: uint8_t I2C_ReceiveData(void)
;	-----------------------------------------
;	 function I2C_ReceiveData
;	-----------------------------------------
_I2C_ReceiveData:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_receivedata.c: 53: return ((uint8_t)I2C->DR);
	ldw	x, #0x5216
	ld	a, (x)
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
