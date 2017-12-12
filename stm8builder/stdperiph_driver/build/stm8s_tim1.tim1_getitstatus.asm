;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:06 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_getitstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_GetITStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getitstatus.c: 59: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
;	-----------------------------------------
;	 function TIM1_GetITStatus
;	-----------------------------------------
_TIM1_GetITStatus:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getitstatus.c: 65: assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x04
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x08
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x10
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x20
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x40
	jreq	00108$
	ld	a, (0x04, sp)
	cp	a, #0x80
	jreq	00108$
	ldw	y, #___str_0+0
	push	#0x41
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getitstatus.c: 67: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
	ldw	x, #0x5255
	ld	a, (x)
	and	a, (0x04, sp)
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getitstatus.c: 69: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
	ldw	x, #0x5254
	ld	a, (x)
	and	a, (0x04, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getitstatus.c: 71: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
	tnz	(0x01, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getitstatus.c: 73: bitstatus = SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getitstatus.c: 77: bitstatus = RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getitstatus.c: 79: return (ITStatus)(bitstatus);
	addw	sp, #1
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_getitstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
