;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:12 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 52: void ADC1_DeInit(void)
;	-----------------------------------------
;	 function ADC1_DeInit
;	-----------------------------------------
_ADC1_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 54: ADC1->CSR  = ADC1_CSR_RESET_VALUE;
	mov	0x5400+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 55: ADC1->CR1  = ADC1_CR1_RESET_VALUE;
	mov	0x5401+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 56: ADC1->CR2  = ADC1_CR2_RESET_VALUE;
	mov	0x5402+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 57: ADC1->CR3  = ADC1_CR3_RESET_VALUE;
	mov	0x5403+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 58: ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
	mov	0x5406+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 59: ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
	mov	0x5407+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 60: ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
	mov	0x5408+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 61: ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
	mov	0x5409+0, #0x03
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 62: ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
	mov	0x540a+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 63: ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
	mov	0x540b+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 64: ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
	mov	0x540e+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_deinit.c: 65: ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
	mov	0x540f+0, #0x00
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
