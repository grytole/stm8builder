;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:54 2017
;--------------------------------------------------------
	.module stm8s_awu_awu_lsicalibrationconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _AWU_LSICalibrationConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_lsicalibrationconfig.c: 61: void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
;	-----------------------------------------
;	 function AWU_LSICalibrationConfig
;	-----------------------------------------
_AWU_LSICalibrationConfig:
	sub	sp, #8
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_lsicalibrationconfig.c: 67: assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
	ldw	x, (0x0d, sp)
	cpw	x, #0xadb0
	ld	a, (0x0c, sp)
	sbc	a, #0x01
	ld	a, (0x0b, sp)
	sbc	a, #0x00
	jrc	00106$
	ldw	x, #0x49f0
	cpw	x, (0x0d, sp)
	ld	a, #0x02
	sbc	a, (0x0c, sp)
	clr	a
	sbc	a, (0x0b, sp)
	jrnc	00107$
00106$:
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_lsicalibrationconfig.c: 69: lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
	push	#0xe8
	push	#0x03
	clrw	x
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	__divulong
	addw	sp, #8
	ldw	(0x03, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_lsicalibrationconfig.c: 73: A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
	ldw	x, (0x03, sp)
	srlw	x
	srlw	x
	ldw	(0x01, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_lsicalibrationconfig.c: 75: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
	ldw	x, (0x01, sp)
	sllw	x
	sllw	x
	ldw	(0x05, sp), x
	ldw	y, (0x03, sp)
	subw	y, (0x05, sp)
	ldw	x, (0x01, sp)
	sllw	x
	incw	x
	pushw	x
	pushw	y
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_lsicalibrationconfig.c: 77: AWU->APR = (uint8_t)(A - 2U);
	call	__mulint
	addw	sp, #4
	ldw	(0x07, sp), x
	ld	a, (0x02, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_lsicalibrationconfig.c: 75: if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
	ldw	x, (0x05, sp)
	cpw	x, (0x07, sp)
	jrc	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_lsicalibrationconfig.c: 77: AWU->APR = (uint8_t)(A - 2U);
	sub	a, #0x02
	ldw	x, #0x50f1
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_lsicalibrationconfig.c: 81: AWU->APR = (uint8_t)(A - 1U);
	dec	a
	ldw	x, #0x50f1
	ld	(x), a
00104$:
	addw	sp, #8
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_awu.awu_lsicalibrationconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
