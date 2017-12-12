;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:15 2017
;--------------------------------------------------------
	.module stm8s_tim4_tim4_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_deinit.c: 49: void TIM4_DeInit(void)
;	-----------------------------------------
;	 function TIM4_DeInit
;	-----------------------------------------
_TIM4_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_deinit.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
	mov	0x5340+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_deinit.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
	mov	0x5343+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_deinit.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
	mov	0x5346+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_deinit.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
	mov	0x5347+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_deinit.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
	mov	0x5348+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_deinit.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
	mov	0x5344+0, #0x00
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
