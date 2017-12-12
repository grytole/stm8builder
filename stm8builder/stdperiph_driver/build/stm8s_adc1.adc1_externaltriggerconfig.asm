;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:12 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_externaltriggerconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_ExternalTriggerConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_externaltriggerconfig.c: 57: void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
;	-----------------------------------------
;	 function ADC1_ExternalTriggerConfig
;	-----------------------------------------
_ADC1_ExternalTriggerConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_externaltriggerconfig.c: 60: assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x10
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x3c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_externaltriggerconfig.c: 61: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x04, sp)
	jreq	00112$
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00112$
	ldw	y, #___str_0+0
	push	#0x3d
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_externaltriggerconfig.c: 64: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_externaltriggerconfig.c: 66: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_externaltriggerconfig.c: 69: ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
	ldw	x, #0x5402
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_externaltriggerconfig.c: 74: ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
	ldw	x, #0x5402
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_externaltriggerconfig.c: 78: ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
	ldw	x, #0x5402
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x5402
	ld	(x), a
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_externaltriggerconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
