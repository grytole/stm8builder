;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:16 2017
;--------------------------------------------------------
	.module stm8s_tim4_tim4_updaterequestconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM4_UpdateRequestConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_updaterequestconfig.c: 52: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
;	-----------------------------------------
;	 function TIM4_UpdateRequestConfig
;	-----------------------------------------
_TIM4_UpdateRequestConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_updaterequestconfig.c: 55: assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x37
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_updaterequestconfig.c: 58: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_updaterequestconfig.c: 60: TIM4->CR1 |= TIM4_CR1_URS;
	ldw	x, #0x5340
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim4.tim4_updaterequestconfig.c: 64: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
	ldw	x, #0x5340
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00104$:
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim4.tim4_updaterequestconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
