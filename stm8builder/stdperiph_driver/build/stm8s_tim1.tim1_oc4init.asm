;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:08 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_oc4init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_OC4Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 58: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC4Init
;	-----------------------------------------
_TIM1_OC4Init:
	sub	sp, #4
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 65: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
	tnz	(0x07, sp)
	jreq	00107$
	ld	a, (0x07, sp)
	cp	a, #0x10
	jreq	00107$
	ld	a, (0x07, sp)
	cp	a, #0x20
	jreq	00107$
	ld	a, (0x07, sp)
	cp	a, #0x30
	jreq	00107$
	ld	a, (0x07, sp)
	cp	a, #0x60
	jreq	00107$
	ld	a, (0x07, sp)
	cp	a, #0x70
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x41
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 66: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
	tnz	(0x08, sp)
	jreq	00124$
	ld	a, (0x08, sp)
	cp	a, #0x11
	jreq	00124$
	ldw	y, #___str_0+0
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00124$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 67: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
	tnz	(0x0b, sp)
	jreq	00129$
	ld	a, (0x0b, sp)
	cp	a, #0x22
	jreq	00129$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00129$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 68: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
	ld	a, (0x0c, sp)
	cp	a, #0x55
	jreq	00134$
	tnz	(0x0c, sp)
	jreq	00134$
	ldw	y, #___str_0+0
	push	#0x44
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00134$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 71: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 73: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
	ldw	x, #0x525d
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x08, sp)
	and	a, #0x10
	ld	(0x03, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 74: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
	ld	a, (0x0b, sp)
	and	a, #0x20
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	ldw	x, #0x525d
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 77: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ldw	x, #0x525b
	ld	a, (x)
	and	a, #0x8f
	or	a, (0x07, sp)
	ldw	x, #0x525b
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 81: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
	tnz	(0x0c, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 83: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
	ldw	x, #0x526f
	ld	a, (x)
	or	a, #0xdf
	ld	(x), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 87: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
	ldw	x, #0x526f
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 91: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x09, sp)
	clr	(0x01, sp)
	ldw	x, #0x526b
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc4init.c: 92: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x0a, sp)
	ldw	x, #0x526c
	ld	(x), a
	addw	sp, #4
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_oc4init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
