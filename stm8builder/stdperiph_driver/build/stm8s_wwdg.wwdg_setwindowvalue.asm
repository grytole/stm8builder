;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:10 2017
;--------------------------------------------------------
	.module stm8s_wwdg_wwdg_setwindowvalue
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _WWDG_SetWindowValue
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_setwindowvalue.c: 51: void WWDG_SetWindowValue(uint8_t WindowValue)
;	-----------------------------------------
;	 function WWDG_SetWindowValue
;	-----------------------------------------
_WWDG_SetWindowValue:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_setwindowvalue.c: 54: assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
	ld	a, (0x03, sp)
	cp	a, #0x7f
	jrule	00104$
	ldw	y, #___str_0+0
	push	#0x36
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_setwindowvalue.c: 56: WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
	ld	a, (0x03, sp)
	or	a, #0x40
	and	a, #0x7f
	ldw	x, #0x50d2
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_wwdg.wwdg_setwindowvalue.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
