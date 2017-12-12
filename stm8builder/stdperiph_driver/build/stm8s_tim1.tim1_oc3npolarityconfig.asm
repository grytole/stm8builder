;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:10 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_oc3npolarityconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_OC3NPolarityConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3npolarityconfig.c: 53: void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
;	-----------------------------------------
;	 function TIM1_OC3NPolarityConfig
;	-----------------------------------------
_TIM1_OC3NPolarityConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3npolarityconfig.c: 56: assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x88
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3npolarityconfig.c: 59: if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3npolarityconfig.c: 61: TIM1->CCER2 |= TIM1_CCER2_CC3NP;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x08
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc3npolarityconfig.c: 65: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
00104$:
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_oc3npolarityconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
