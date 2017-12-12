;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:15 2017
;--------------------------------------------------------
	.module stm8s_tim4_tim4_getitstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM4_GetITStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getitstatus.c: 51: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
;	-----------------------------------------
;	 function TIM4_GetITStatus
;	-----------------------------------------
_TIM4_GetITStatus:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getitstatus.c: 58: assert_param(IS_TIM4_IT_OK(TIM4_IT));
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00108$
	ldw	y, #___str_0+0
	push	#0x3a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getitstatus.c: 60: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
	ldw	x, #0x5344
	ld	a, (x)
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getitstatus.c: 62: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
	ldw	x, #0x5343
	ld	a, (x)
	and	a, (0x04, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getitstatus.c: 64: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getitstatus.c: 66: bitstatus = (ITStatus)SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getitstatus.c: 70: bitstatus = (ITStatus)RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_getitstatus.c: 72: return ((ITStatus)bitstatus);
	addw	sp, #1
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim4.tim4_getitstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
