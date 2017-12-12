;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:05 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_ccxncmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_CCxNCmd
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 56: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CCxNCmd
;	-----------------------------------------
_TIM1_CCxNCmd:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 59: assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
	ld	a, (0x04, sp)
	cp	a, #0x01
	jrne	00172$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00173$
00172$:
	clr	(0x01, sp)
00173$:
	tnz	(0x04, sp)
	jreq	00119$
	tnz	(0x01, sp)
	jrne	00119$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00119$
	ldw	y, #___str_0+0
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00119$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 60: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x05, sp)
	jreq	00127$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00127$
	ldw	y, #___str_0+0
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00127$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 62: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x04, sp)
	jrne	00114$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 65: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 67: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00116$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 71: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
	jra	00116$
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 74: else if (TIM1_Channel == TIM1_CHANNEL_2)
	tnz	(0x01, sp)
	jreq	00111$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 77: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 79: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00116$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 83: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
	jra	00116$
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 89: if (NewState != DISABLE)
	tnz	(0x05, sp)
	jreq	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 91: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00116$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxncmd.c: 95: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00116$:
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_ccxncmd.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
