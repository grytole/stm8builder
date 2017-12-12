;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:07 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_oc1init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_OC1Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 64: void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC1Init
;	-----------------------------------------
_TIM1_OC1Init:
	sub	sp, #8
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 74: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
	tnz	(0x0b, sp)
	jreq	00104$
	ld	a, (0x0b, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x0b, sp)
	cp	a, #0x20
	jreq	00104$
	ld	a, (0x0b, sp)
	cp	a, #0x30
	jreq	00104$
	ld	a, (0x0b, sp)
	cp	a, #0x60
	jreq	00104$
	ld	a, (0x0b, sp)
	cp	a, #0x70
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x4a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 75: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
	tnz	(0x0c, sp)
	jreq	00121$
	ld	a, (0x0c, sp)
	cp	a, #0x11
	jreq	00121$
	ldw	y, #___str_0+0
	push	#0x4b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00121$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 76: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
	tnz	(0x0d, sp)
	jreq	00126$
	ld	a, (0x0d, sp)
	cp	a, #0x44
	jreq	00126$
	ldw	y, #___str_0+0
	push	#0x4c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00126$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 77: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
	tnz	(0x10, sp)
	jreq	00131$
	ld	a, (0x10, sp)
	cp	a, #0x22
	jreq	00131$
	ldw	y, #___str_0+0
	push	#0x4d
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00131$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 78: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
	tnz	(0x11, sp)
	jreq	00136$
	ld	a, (0x11, sp)
	cp	a, #0x88
	jreq	00136$
	ldw	y, #___str_0+0
	push	#0x4e
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00136$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 79: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
	ld	a, (0x12, sp)
	cp	a, #0x55
	jreq	00141$
	tnz	(0x12, sp)
	jreq	00141$
	ldw	y, #___str_0+0
	push	#0x4f
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00141$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 80: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
	ld	a, (0x13, sp)
	cp	a, #0x2a
	jreq	00146$
	tnz	(0x13, sp)
	jreq	00146$
	ldw	y, #___str_0+0
	push	#0x50
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00146$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 84: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 88: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
	ldw	x, #0x525c
	ld	a, (x)
	ld	(0x08, sp), a
	ld	a, (0x0c, sp)
	and	a, #0x01
	ld	(0x07, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 89: | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
	ld	a, (0x0d, sp)
	and	a, #0x04
	or	a, (0x07, sp)
	ld	(0x06, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 90: | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
	ld	a, (0x10, sp)
	and	a, #0x02
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 91: | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
	ld	a, (0x11, sp)
	and	a, #0x08
	or	a, (0x05, sp)
	or	a, (0x06, sp)
	or	a, (0x08, sp)
	ldw	x, #0x525c
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 94: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0x8f
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 95: (uint8_t)TIM1_OCMode);
	or	a, (0x0b, sp)
	ldw	x, #0x5258
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 98: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
	ldw	x, #0x526f
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 100: TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
	ldw	x, #0x526f
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x12, sp)
	and	a, #0x01
	ld	(0x03, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 101: (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
	ld	a, (0x13, sp)
	and	a, #0x02
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	ldw	x, #0x526f
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 104: TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x0e, sp)
	clr	(0x01, sp)
	ldw	x, #0x5265
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1init.c: 105: TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x0f, sp)
	ldw	x, #0x5266
	ld	(x), a
	addw	sp, #8
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_oc1init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
