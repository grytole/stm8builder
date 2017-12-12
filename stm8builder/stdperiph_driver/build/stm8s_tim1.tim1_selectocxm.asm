;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:08 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_selectocxm
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_SelectOCxM
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 66: void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
;	-----------------------------------------
;	 function TIM1_SelectOCxM
;	-----------------------------------------
_TIM1_SelectOCxM:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 69: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00207$
	ld	a, #0x01
	ld	(0x02, sp), a
	jra	00208$
00207$:
	clr	(0x02, sp)
00208$:
	ld	a, (0x05, sp)
	cp	a, #0x02
	jrne	00210$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00211$
00210$:
	clr	(0x01, sp)
00211$:
	tnz	(0x05, sp)
	jreq	00113$
	tnz	(0x02, sp)
	jrne	00113$
	tnz	(0x01, sp)
	jrne	00113$
	ld	a, (0x05, sp)
	cp	a, #0x03
	jreq	00113$
	ldw	y, #___str_0+0
	push	#0x45
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 70: assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
	tnz	(0x06, sp)
	jreq	00124$
	ld	a, (0x06, sp)
	cp	a, #0x10
	jreq	00124$
	ld	a, (0x06, sp)
	cp	a, #0x20
	jreq	00124$
	ld	a, (0x06, sp)
	cp	a, #0x30
	jreq	00124$
	ld	a, (0x06, sp)
	cp	a, #0x60
	jreq	00124$
	ld	a, (0x06, sp)
	cp	a, #0x70
	jreq	00124$
	ld	a, (0x06, sp)
	cp	a, #0x50
	jreq	00124$
	ld	a, (0x06, sp)
	cp	a, #0x40
	jreq	00124$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00124$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 72: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 75: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	bres	0x525c, #0
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 78: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0x8f
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 79: | (uint8_t)TIM1_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x5258
	ld	(x), a
	jra	00110$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 81: else if (TIM1_Channel == TIM1_CHANNEL_2)
	tnz	(0x02, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 84: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 87: TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
	ldw	x, #0x5259
	ld	a, (x)
	and	a, #0x8f
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 88: | (uint8_t)TIM1_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x5259
	ld	(x), a
	jra	00110$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 90: else if (TIM1_Channel == TIM1_CHANNEL_3)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 93: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
	bres	0x525d, #0
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 96: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ldw	x, #0x525a
	ld	a, (x)
	and	a, #0x8f
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 97: | (uint8_t)TIM1_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x525a
	ld	(x), a
	jra	00110$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 102: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 105: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
	ldw	x, #0x525b
	ld	a, (x)
	and	a, #0x8f
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_selectocxm.c: 106: | (uint8_t)TIM1_OCMode);
	or	a, (0x06, sp)
	ldw	x, #0x525b
	ld	(x), a
00110$:
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_selectocxm.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
