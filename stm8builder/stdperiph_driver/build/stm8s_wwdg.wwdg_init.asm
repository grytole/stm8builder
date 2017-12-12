;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:11 2017
;--------------------------------------------------------
	.module stm8s_wwdg_wwdg_init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _WWDG_Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_init.c: 52: void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
;	-----------------------------------------
;	 function WWDG_Init
;	-----------------------------------------
_WWDG_Init:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_init.c: 55: assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
	ld	a, (0x04, sp)
	cp	a, #0x7f
	jrule	00104$
	ldw	y, #___str_0+0
	push	#0x37
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_init.c: 57: WWDG->WR = WWDG_WR_RESET_VALUE;
	mov	0x50d2+0, #0x7f
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_init.c: 58: WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
	ld	a, (0x03, sp)
	or	a, #0xc0
	ldw	x, #0x50d1
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_wwdg.wwdg_init.c: 59: WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
	ld	a, (0x04, sp)
	or	a, #0x40
	and	a, #0x7f
	ldw	x, #0x50d2
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_wwdg.wwdg_init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
