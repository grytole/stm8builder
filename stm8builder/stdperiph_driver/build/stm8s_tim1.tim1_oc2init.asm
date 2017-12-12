;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:10 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_oc2init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_OC2Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 64: void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
;	-----------------------------------------
;	 function TIM1_OC2Init
;	-----------------------------------------
_TIM1_OC2Init:
	sub	sp, #8
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 74: assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 75: assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 76: assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 77: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 78: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 79: assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 80: assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 84: TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0x0f
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 89: TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
	ldw	x, #0x525c
	ld	a, (x)
	ld	(0x08, sp), a
	ld	a, (0x0c, sp)
	and	a, #0x10
	ld	(0x07, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 90: (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
	ld	a, (0x0d, sp)
	and	a, #0x40
	or	a, (0x07, sp)
	ld	(0x06, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 91: (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
	ld	a, (0x10, sp)
	and	a, #0x20
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 92: (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
	ld	a, (0x11, sp)
	and	a, #0x80
	or	a, (0x05, sp)
	or	a, (0x06, sp)
	or	a, (0x08, sp)
	ldw	x, #0x525c
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 95: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0x8f
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 96: (uint8_t)TIM1_OCMode);
	or	a, (0x0b, sp)
	ldw	x, #0x5259
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 99: TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
	ldw	x, #0x526f
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 101: TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
	ldw	x, #0x526f
	ld	a, (x)
	ld	(0x04, sp), a
	ld	a, (0x12, sp)
	and	a, #0x04
	ld	(0x03, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 102: (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
	ld	a, (0x13, sp)
	and	a, #0x08
	or	a, (0x03, sp)
	or	a, (0x04, sp)
	ldw	x, #0x526f
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 105: TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
	ld	a, (0x0e, sp)
	clr	(0x01, sp)
	ldw	x, #0x5267
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc2init.c: 106: TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
	ld	a, (0x0f, sp)
	ldw	x, #0x5268
	ld	(x), a
	addw	sp, #8
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_oc2init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
