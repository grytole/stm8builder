;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:10 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_oc3polarityconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_OC3PolarityConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3polarityconfig.c: 53: void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
;	-----------------------------------------
;	 function TIM1_OC3PolarityConfig
;	-----------------------------------------
_TIM1_OC3PolarityConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3polarityconfig.c: 56: assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x22
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x38
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3polarityconfig.c: 59: if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3polarityconfig.c: 61: TIM1->CCER2 |= TIM1_CCER2_CC3P;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3polarityconfig.c: 65: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_oc3polarityconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
