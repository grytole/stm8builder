;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:10 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_pwmiconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___TI2_Config
	.globl ___TI1_Config
	.globl _TIM1_SetIC2Prescaler
	.globl _TIM1_SetIC1Prescaler
	.globl _assert_failed
	.globl _TIM1_PWMIConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 59: void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
;	-----------------------------------------
;	 function TIM1_PWMIConfig
;	-----------------------------------------
_TIM1_PWMIConfig:
	sub	sp, #4
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 69: assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
	tnz	(0x07, sp)
	jreq	00113$
	ld	a, (0x07, sp)
	cp	a, #0x01
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 70: assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
	ld	a, (0x08, sp)
	cp	a, #0x01
	jrne	00202$
	ld	a, #0x01
	ld	(0x03, sp), a
	jra	00203$
00202$:
	clr	(0x03, sp)
00203$:
	tnz	(0x08, sp)
	jreq	00118$
	tnz	(0x03, sp)
	jrne	00118$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00118$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 71: assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
	ld	a, (0x09, sp)
	cp	a, #0x01
	jrne	00207$
	ld	a, #0x01
	ld	(0x04, sp), a
	jra	00208$
00207$:
	clr	(0x04, sp)
00208$:
	tnz	(0x04, sp)
	jrne	00123$
	ld	a, (0x09, sp)
	cp	a, #0x02
	jreq	00123$
	ld	a, (0x09, sp)
	cp	a, #0x03
	jreq	00123$
	ldw	y, #___str_0+0
	push	#0x47
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00123$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 72: assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
	tnz	(0x0a, sp)
	jreq	00131$
	ld	a, (0x0a, sp)
	cp	a, #0x04
	jreq	00131$
	ld	a, (0x0a, sp)
	cp	a, #0x08
	jreq	00131$
	ld	a, (0x0a, sp)
	cp	a, #0x0c
	jreq	00131$
	ldw	y, #___str_0+0
	push	#0x48
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00131$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 75: if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
	tnz	(0x03, sp)
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 77: icpolarity = TIM1_ICPOLARITY_FALLING;
	ld	a, #0x01
	ld	(0x02, sp), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 81: icpolarity = TIM1_ICPOLARITY_RISING;
	clr	(0x02, sp)
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 85: if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
	tnz	(0x04, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 87: icselection = TIM1_ICSELECTION_INDIRECTTI;
	ld	a, #0x02
	ld	(0x01, sp), a
	jra	00106$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 91: icselection = TIM1_ICSELECTION_DIRECTTI;
	ld	a, #0x01
	ld	(0x01, sp), a
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 94: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x07, sp)
	jrne	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 97: __TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	call	___TI1_Config
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 101: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM1_SetIC1Prescaler
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 104: __TI2_Config(icpolarity, icselection, TIM1_ICFilter);
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	___TI2_Config
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 107: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM1_SetIC2Prescaler
	pop	a
	jra	00110$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 112: __TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	call	___TI2_Config
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 116: TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM1_SetIC2Prescaler
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 119: __TI1_Config(icpolarity, icselection, TIM1_ICFilter);
	ld	a, (0x0b, sp)
	push	a
	ld	a, (0x02, sp)
	push	a
	ld	a, (0x04, sp)
	push	a
	call	___TI1_Config
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_pwmiconfig.c: 122: TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
	ld	a, (0x0a, sp)
	push	a
	call	_TIM1_SetIC1Prescaler
	pop	a
00110$:
	addw	sp, #4
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_pwmiconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
