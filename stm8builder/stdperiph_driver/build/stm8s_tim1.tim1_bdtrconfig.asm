;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:06 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_bdtrconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_BDTRConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 58: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
;	-----------------------------------------
;	 function TIM1_BDTRConfig
;	-----------------------------------------
_TIM1_BDTRConfig:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 66: assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
	ld	a, (0x04, sp)
	cp	a, #0x04
	jreq	00104$
	tnz	(0x04, sp)
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 67: assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
	tnz	(0x05, sp)
	jreq	00109$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00109$
	ld	a, (0x05, sp)
	cp	a, #0x02
	jreq	00109$
	ld	a, (0x05, sp)
	cp	a, #0x03
	jreq	00109$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 68: assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
	ld	a, (0x07, sp)
	cp	a, #0x10
	jreq	00120$
	tnz	(0x07, sp)
	jreq	00120$
	ldw	y, #___str_0+0
	push	#0x44
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00120$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 69: assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
	tnz	(0x08, sp)
	jreq	00125$
	ld	a, (0x08, sp)
	cp	a, #0x20
	jreq	00125$
	ldw	y, #___str_0+0
	push	#0x45
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00125$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 70: assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
	ld	a, (0x09, sp)
	cp	a, #0x40
	jreq	00130$
	tnz	(0x09, sp)
	jreq	00130$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00130$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 72: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
	ldw	x, #0x526e
	ld	a, (0x06, sp)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 76: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
	ld	a, (0x04, sp)
	or	a, (0x05, sp)
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 77: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
	ld	a, (0x07, sp)
	or	a, (0x08, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_bdtrconfig.c: 78: (uint8_t)TIM1_AutomaticOutput));
	or	a, (0x09, sp)
	or	a, (0x01, sp)
	ldw	x, #0x526d
	ld	(x), a
	pop	a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_bdtrconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
