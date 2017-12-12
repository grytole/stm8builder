;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:10 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_ccxcmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_CCxCmd
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 57: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM1_CCxCmd
;	-----------------------------------------
_TIM1_CCxCmd:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 60: assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
	ld	a, (0x05, sp)
	cp	a, #0x01
	jrne	00193$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00194$
00193$:
	clr	(0x01, sp)
00194$:
	ld	a, (0x05, sp)
	cp	a, #0x02
	jrne	00196$
	ld	a, #0x01
	ld	(0x02, sp), a
	jra	00197$
00196$:
	clr	(0x02, sp)
00197$:
	tnz	(0x05, sp)
	jreq	00125$
	tnz	(0x01, sp)
	jrne	00125$
	tnz	(0x02, sp)
	jrne	00125$
	ld	a, (0x05, sp)
	cp	a, #0x03
	jreq	00125$
	ldw	y, #___str_0+0
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00125$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 61: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x06, sp)
	jreq	00136$
	ld	a, (0x06, sp)
	cp	a, #0x01
	jreq	00136$
	ldw	y, #___str_0+0
	push	#0x3d
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00136$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 63: if (TIM1_Channel == TIM1_CHANNEL_1)
	tnz	(0x05, sp)
	jrne	00120$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 66: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 68: TIM1->CCER1 |= TIM1_CCER1_CC1E;
	bset	0x525c, #0
	jra	00122$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 72: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
	bres	0x525c, #0
	jra	00122$
00120$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 76: else if (TIM1_Channel == TIM1_CHANNEL_2)
	tnz	(0x01, sp)
	jreq	00117$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 79: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 81: TIM1->CCER1 |= TIM1_CCER1_CC2E;
	ldw	x, #0x525c
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00122$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 85: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
	ldw	x, #0x525c
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
	jra	00122$
00117$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 88: else if (TIM1_Channel == TIM1_CHANNEL_3)
	tnz	(0x02, sp)
	jreq	00114$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 91: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 93: TIM1->CCER2 |= TIM1_CCER2_CC3E;
	bset	0x525d, #0
	jra	00122$
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 97: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
	bres	0x525d, #0
	jra	00122$
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 103: if (NewState != DISABLE)
	tnz	(0x06, sp)
	jreq	00111$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 105: TIM1->CCER2 |= TIM1_CCER2_CC4E;
	ldw	x, #0x525d
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00122$
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_ccxcmd.c: 109: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
	ldw	x, #0x525d
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00122$:
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_ccxcmd.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
