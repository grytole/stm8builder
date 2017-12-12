;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:04 2017
;--------------------------------------------------------
	.module stm8s_rst_rst_clearflag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _RST_ClearFlag
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_rst.rst_clearflag.c: 53: void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
;	-----------------------------------------
;	 function RST_ClearFlag
;	-----------------------------------------
_RST_ClearFlag:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_rst.rst_clearflag.c: 56: assert_param(IS_RST_FLAG_OK(RST_Flag));
	ld	a, (0x03, sp)
	cp	a, #0x10
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x38
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_rst.rst_clearflag.c: 58: RST->SR = (uint8_t)RST_Flag;
	ldw	x, #0x50b3
	ld	a, (0x03, sp)
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_rst.rst_clearflag.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
