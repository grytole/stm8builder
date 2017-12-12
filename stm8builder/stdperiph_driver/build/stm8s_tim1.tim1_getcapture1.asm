;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:09 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_getcapture1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_GetCapture1
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture1.c: 50: uint16_t TIM1_GetCapture1(void)
;	-----------------------------------------
;	 function TIM1_GetCapture1
;	-----------------------------------------
_TIM1_GetCapture1:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture1.c: 57: tmpccr1h = TIM1->CCR1H;
	ldw	x, #0x5265
	ld	a, (x)
	ld	yh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture1.c: 58: tmpccr1l = TIM1->CCR1L;
	ldw	x, #0x5266
	ld	a, (x)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture1.c: 60: tmpccr1 = (uint16_t)(tmpccr1l);
	clrw	x
	ld	xl, a
	ldw	(0x01, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture1.c: 61: tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
	clr	a
	clr	a
	or	a, (0x02, sp)
	ld	xl, a
	ld	a, yh
	or	a, (0x01, sp)
	ld	xh, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getcapture1.c: 63: return (uint16_t)tmpccr1;
	addw	sp, #2
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
