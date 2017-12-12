;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:55 2017
;--------------------------------------------------------
	.module stm8s_beep_beep_cmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _BEEP_Cmd
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_cmd.c: 55: void BEEP_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function BEEP_Cmd
;	-----------------------------------------
_BEEP_Cmd:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_cmd.c: 57: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_cmd.c: 60: BEEP->CSR |= BEEP_CSR_BEEPEN;
	ldw	x, #0x50f3
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_beep.beep_cmd.c: 65: BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
	ldw	x, #0x50f3
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
00104$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
