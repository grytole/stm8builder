;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:54 2017
;--------------------------------------------------------
	.module stm8s_awu_awu_cmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_Cmd
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_cmd.c: 55: void AWU_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function AWU_Cmd
;	-----------------------------------------
_AWU_Cmd:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_cmd.c: 57: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_cmd.c: 60: AWU->CSR |= AWU_CSR_AWUEN;
	ldw	x, #0x50f0
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_cmd.c: 65: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
	ldw	x, #0x50f0
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
00104$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
