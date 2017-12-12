;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:06 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_oc1fastconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_OC1FastConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1fastconfig.c: 51: void TIM1_OC1FastConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_OC1FastConfig
;	-----------------------------------------
_TIM1_OC1FastConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1fastconfig.c: 54: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x36
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1fastconfig.c: 57: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1fastconfig.c: 59: TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
	ldw	x, #0x5258
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_oc1fastconfig.c: 63: TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
	ldw	x, #0x5258
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_oc1fastconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
