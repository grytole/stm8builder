;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:04 2017
;--------------------------------------------------------
	.module stm8s_iwdg_iwdg_writeaccesscmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _IWDG_WriteAccessCmd
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_writeaccesscmd.c: 48: void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
;	-----------------------------------------
;	 function IWDG_WriteAccessCmd
;	-----------------------------------------
_IWDG_WriteAccessCmd:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_writeaccesscmd.c: 51: assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
	ld	a, (0x03, sp)
	cp	a, #0x55
	jreq	00104$
	tnz	(0x03, sp)
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x33
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_iwdg.iwdg_writeaccesscmd.c: 53: IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
	ldw	x, #0x50e0
	ld	a, (0x03, sp)
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_iwdg.iwdg_writeaccesscmd.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
