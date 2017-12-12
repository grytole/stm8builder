;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:01 2017
;--------------------------------------------------------
	.module stm8s_i2c_i2c_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2C_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 50: void I2C_DeInit(void)
;	-----------------------------------------
;	 function I2C_DeInit
;	-----------------------------------------
_I2C_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 52: I2C->CR1 = I2C_CR1_RESET_VALUE;
	mov	0x5210+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 53: I2C->CR2 = I2C_CR2_RESET_VALUE;
	mov	0x5211+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 54: I2C->FREQR = I2C_FREQR_RESET_VALUE;
	mov	0x5212+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 55: I2C->OARL = I2C_OARL_RESET_VALUE;
	mov	0x5213+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 56: I2C->OARH = I2C_OARH_RESET_VALUE;
	mov	0x5214+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 57: I2C->ITR = I2C_ITR_RESET_VALUE;
	mov	0x521a+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 58: I2C->CCRL = I2C_CCRL_RESET_VALUE;
	mov	0x521b+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 59: I2C->CCRH = I2C_CCRH_RESET_VALUE;
	mov	0x521c+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_i2c.i2c_deinit.c: 60: I2C->TRISER = I2C_TRISER_RESET_VALUE;
	mov	0x521d+0, #0x02
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
