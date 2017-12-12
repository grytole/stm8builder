;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:09 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_icinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___TI4_Config
	.globl ___TI3_Config
	.globl ___TI2_Config
	.globl ___TI1_Config
	.globl _TIM1_SetIC4Prescaler
	.globl _TIM1_SetIC3Prescaler
	.globl _TIM1_SetIC2Prescaler
	.globl _TIM1_SetIC1Prescaler
	.globl _assert_failed
	.globl _TIM1_ICInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 57: void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
;	-----------------------------------------
;	 function TIM1_ICInit
;	-----------------------------------------
_TIM1_ICInit:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 64: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00218$
	ld	a, #0x01
	ld	(0x02, sp), a
	jra	00219$
00218$:
	clr	(0x02, sp)
00219$:
	ld	a, (0x05, sp)
	cp	a, #0x02
	jrne	00221$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00222$
00221$:
	clr	(0x01, sp)
00222$:
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
	push	#0x40
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 65: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
	tnz	(0x06, sp)
	jreq	00124$
	ld	a, (0x06, sp)
	cp	a, #0x01
	jreq	00124$
	ldw	y, #___str_0+0
	push	#0x41
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00124$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 66: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
	ld	a, (0x07, sp)
	cp	a, #0x01
	jreq	00129$
	ld	a, (0x07, sp)
	cp	a, #0x02
	jreq	00129$
	ld	a, (0x07, sp)
	cp	a, #0x03
	jreq	00129$
	ldw	y, #___str_0+0
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00129$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 67: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
	tnz	(0x08, sp)
	jreq	00137$
	ld	a, (0x08, sp)
	cp	a, #0x04
	jreq	00137$
	ld	a, (0x08, sp)
	cp	a, #0x08
	jreq	00137$
	ld	a, (0x08, sp)
	cp	a, #0x0c
	jreq	00137$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00137$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 68: assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
	ld	a, (0x09, sp)
	cp	a, #0x0f
	jrule	00148$
	ldw	y, #___str_0+0
	push	#0x44
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00148$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 70: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 73: __TI1_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	___TI1_Config
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 77: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC1Prescaler
	pop	a
	jra	00110$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 79: else if (TIM1_Channel == TIM1_CHANNEL_2)
	tnz	(0x02, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 82: __TI2_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	___TI2_Config
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 86: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC2Prescaler
	pop	a
	jra	00110$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 88: else if (TIM1_Channel == TIM1_CHANNEL_3)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 91: __TI3_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	___TI3_Config
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 95: TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC3Prescaler
	pop	a
	jra	00110$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 100: __TI4_Config((uint8_t)TIM1_ICPolarity,
	ld	a, (0x09, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x08, sp)
	push	a
	call	___TI4_Config
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_icinit.c: 104: TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
	ld	a, (0x08, sp)
	push	a
	call	_TIM1_SetIC4Prescaler
	pop	a
00110$:
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_icinit.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
