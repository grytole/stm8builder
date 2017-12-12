;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:07 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_getflagstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_GetFlagStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getflagstatus.c: 63: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
;	-----------------------------------------
;	 function TIM1_GetFlagStatus
;	-----------------------------------------
_TIM1_GetFlagStatus:
	sub	sp, #5
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getflagstatus.c: 69: assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
	ldw	x, (0x08, sp)
	cpw	x, #0x0001
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0002
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0004
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0008
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0010
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0020
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0040
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0080
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0200
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0400
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x0800
	jreq	00107$
	ldw	x, (0x08, sp)
	cpw	x, #0x1000
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x45
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getflagstatus.c: 71: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
	ldw	x, #0x5255
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x09, sp)
	and	a, (0x03, sp)
	ld	(0x02, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getflagstatus.c: 72: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
	ld	a, (0x08, sp)
	clr	(0x04, sp)
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getflagstatus.c: 74: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
	ldw	x, #0x5256
	ld	a, (x)
	and	a, (0x01, sp)
	or	a, (0x02, sp)
	tnz	a
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getflagstatus.c: 76: bitstatus = SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getflagstatus.c: 80: bitstatus = RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_getflagstatus.c: 82: return (FlagStatus)(bitstatus);
	addw	sp, #5
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_getflagstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
