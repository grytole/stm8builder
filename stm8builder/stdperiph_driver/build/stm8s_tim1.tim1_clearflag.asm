;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:08 2017
;--------------------------------------------------------
	.module stm8s_tim1_tim1_clearflag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _TIM1_ClearFlag
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_clearflag.c: 63: void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
;	-----------------------------------------
;	 function TIM1_ClearFlag
;	-----------------------------------------
_TIM1_ClearFlag:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_clearflag.c: 66: assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
	ld	a, (0x05, sp)
	bcp	a, #0xe1
	jrne	00103$
	ldw	x, (0x05, sp)
	jrne	00104$
00103$:
	ldw	y, #___str_0+0
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_clearflag.c: 69: TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
	ld	a, (0x06, sp)
	cpl	a
	ldw	x, #0x5255
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_tim1.tim1_clearflag.c: 70: TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
	ld	a, (0x05, sp)
	clr	(0x01, sp)
	cpl	a
	and	a, #0x1e
	ldw	x, #0x5256
	ld	(x), a
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_tim1.tim1_clearflag.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
