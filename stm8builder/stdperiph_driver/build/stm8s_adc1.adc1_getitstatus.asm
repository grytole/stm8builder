;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:11 2017
;--------------------------------------------------------
	.module stm8s_adc1_adc1_getitstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ADC1_GetITStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getitstatus.c: 65: ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
;	-----------------------------------------
;	 function ADC1_GetITStatus
;	-----------------------------------------
_ADC1_GetITStatus:
	sub	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getitstatus.c: 71: assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
	ldw	x, (0x06, sp)
	cpw	x, #0x0080
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0140
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0110
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0111
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0112
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0113
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0114
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0115
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0116
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0117
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0118
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x011c
	jreq	00110$
	ldw	x, (0x06, sp)
	cpw	x, #0x0119
	jreq	00110$
	ldw	y, #___str_0+0
	push	#0x47
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getitstatus.c: 73: if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
	ld	a, (0x07, sp)
	and	a, #0xf0
	ld	xl, a
	clr	a
	ld	xh, a
	cpw	x, #0x0010
	jrne	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getitstatus.c: 76: temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
	ld	a, (0x07, sp)
	and	a, #0x0f
	ld	xh, a
	clr	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getitstatus.c: 77: if (temp < 8)
	ld	a, xh
	cp	a, #0x08
	jrnc	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getitstatus.c: 79: itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
	ldw	y, #0x540d
	ld	a, (y)
	ld	xl, a
	ld	a, #0x01
	ld	(0x01, sp), a
	ld	a, xh
	tnz	a
	jreq	00251$
00250$:
	sll	(0x01, sp)
	dec	a
	jrne	00250$
00251$:
	ld	a, xl
	and	a, (0x01, sp)
	jra	00106$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getitstatus.c: 83: itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
	ldw	y, #0x540c
	ld	a, (y)
	ld	xl, a
	subw	x, #2048
	ld	a, #0x01
	ld	(0x03, sp), a
	ld	a, xh
	tnz	a
	jreq	00253$
00252$:
	sll	(0x03, sp)
	dec	a
	jrne	00252$
00253$:
	ld	a, xl
	and	a, (0x03, sp)
	jra	00106$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getitstatus.c: 88: itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
	ldw	x, #0x5400
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x07, sp)
	and	a, (0x02, sp)
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_adc1.adc1_getitstatus.c: 90: return ((ITStatus)itstatus);
	addw	sp, #3
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_adc1.adc1_getitstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
