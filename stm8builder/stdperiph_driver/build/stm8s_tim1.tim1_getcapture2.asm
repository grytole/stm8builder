;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:08 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_getcapture2
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_GetCapture2
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture2.c: 50: uint16_t TIM1_GetCapture2(void)
;	-----------------------------------------
;	 function TIM1_GetCapture2
;	-----------------------------------------
_TIM1_GetCapture2:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture2.c: 57: tmpccr2h = TIM1->CCR2H;
	ldw	x, #0x5267
	ld	a, (x)
	ld	yh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture2.c: 58: tmpccr2l = TIM1->CCR2L;
	ldw	x, #0x5268
	ld	a, (x)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture2.c: 60: tmpccr2 = (uint16_t)(tmpccr2l);
	clrw	x
	ld	xl, a
	ldw	(0x01, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture2.c: 61: tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
	clr	a
	clr	a
	or	a, (0x02, sp)
	ld	xl, a
	ld	a, yh
	or	a, (0x01, sp)
	ld	xh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture2.c: 63: return (uint16_t)tmpccr2;
	addw	sp, #2
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
