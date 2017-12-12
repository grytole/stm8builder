;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:13 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_setlowthreshold
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_SetLowThreshold
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_setlowthreshold.c: 53: void ADC1_SetLowThreshold(uint16_t Threshold)
;	-----------------------------------------
;	 function ADC1_SetLowThreshold
;	-----------------------------------------
_ADC1_SetLowThreshold:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_setlowthreshold.c: 55: ADC1->LTRL = (uint8_t)Threshold;
	ld	a, (0x04, sp)
	ldw	x, #0x540b
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_setlowthreshold.c: 56: ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
	ldw	x, (0x03, sp)
	srlw	x
	srlw	x
	ld	a, xl
	ldw	x, #0x540a
	ld	(x), a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
