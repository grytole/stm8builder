;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:11 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC1_ExternalTriggerConfig
	.globl _ADC1_ConversionConfig
	.globl _ADC1_SchmittTriggerConfig
	.globl _ADC1_PrescalerConfig
	.globl _assert_failed
	.globl _ADC1_Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 67: void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
;	-----------------------------------------
;	 function ADC1_Init
;	-----------------------------------------
_ADC1_Init:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 70: assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 71: assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
	tnz	(0x04, sp)
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x03
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x04
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x05
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x06
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x07
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x08
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x0c
	jreq	00109$
	ld	a, (0x04, sp)
	cp	a, #0x09
	jreq	00109$
	ldw	y, #___str_0+0
	push	#0x47
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 72: assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
	tnz	(0x05, sp)
	jreq	00141$
	ld	a, (0x05, sp)
	cp	a, #0x10
	jreq	00141$
	ld	a, (0x05, sp)
	cp	a, #0x20
	jreq	00141$
	ld	a, (0x05, sp)
	cp	a, #0x30
	jreq	00141$
	ld	a, (0x05, sp)
	cp	a, #0x40
	jreq	00141$
	ld	a, (0x05, sp)
	cp	a, #0x50
	jreq	00141$
	ld	a, (0x05, sp)
	cp	a, #0x60
	jreq	00141$
	ld	a, (0x05, sp)
	cp	a, #0x70
	jreq	00141$
	ldw	y, #___str_0+0
	push	#0x48
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00141$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 73: assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
	tnz	(0x06, sp)
	jreq	00164$
	ld	a, (0x06, sp)
	cp	a, #0x10
	jreq	00164$
	ldw	y, #___str_0+0
	push	#0x49
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00164$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 74: assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
	tnz	(0x07, sp)
	jreq	00169$
	ld	a, (0x07, sp)
	cp	a, #0x01
	jreq	00169$
	ldw	y, #___str_0+0
	push	#0x4a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00169$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 75: assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
	tnz	(0x08, sp)
	jreq	00174$
	ld	a, (0x08, sp)
	cp	a, #0x08
	jreq	00174$
	ldw	y, #___str_0+0
	push	#0x4b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00174$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 76: assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
	tnz	(0x09, sp)
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x01
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x02
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x03
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x04
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x05
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x06
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x07
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x08
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x0c
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0xff
	jreq	00179$
	ld	a, (0x09, sp)
	cp	a, #0x09
	jreq	00179$
	ldw	y, #___str_0+0
	push	#0x4c
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00179$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 77: assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
	tnz	(0x0a, sp)
	jreq	00214$
	ld	a, (0x0a, sp)
	cp	a, #0x01
	jreq	00214$
	ldw	y, #___str_0+0
	push	#0x4d
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00214$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 82: ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
	ld	a, (0x08, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	push	a
	call	_ADC1_ConversionConfig
	addw	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 84: ADC1_PrescalerConfig(ADC1_PrescalerSelection);
	ld	a, (0x05, sp)
	push	a
	call	_ADC1_PrescalerConfig
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 89: ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	push	a
	call	_ADC1_ExternalTriggerConfig
	popw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 94: ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
	ld	a, (0x0a, sp)
	push	a
	ld	a, (0x0a, sp)
	push	a
	call	_ADC1_SchmittTriggerConfig
	popw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_init.c: 97: ADC1->CR1 |= ADC1_CR1_ADON;
	bset	0x5401, #0
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
