;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:57 2017
;--------------------------------------------------------
	.module stm8s_exti_exti_setextintsensitivity
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _EXTI_SetExtIntSensitivity
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 59: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
;	-----------------------------------------
;	 function EXTI_SetExtIntSensitivity
;	-----------------------------------------
_EXTI_SetExtIntSensitivity:
	sub	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 62: assert_param(IS_EXTI_PORT_OK(Port));
	tnz	(0x06, sp)
	jreq	00111$
	ld	a, (0x06, sp)
	cp	a, #0x01
	jreq	00111$
	ld	a, (0x06, sp)
	cp	a, #0x02
	jreq	00111$
	ld	a, (0x06, sp)
	cp	a, #0x03
	jreq	00111$
	ld	a, (0x06, sp)
	cp	a, #0x04
	jreq	00111$
	ldw	y, #___str_0+0
	push	#0x3e
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 63: assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
	tnz	(0x07, sp)
	jreq	00125$
	ld	a, (0x07, sp)
	cp	a, #0x01
	jreq	00125$
	ld	a, (0x07, sp)
	cp	a, #0x02
	jreq	00125$
	ld	a, (0x07, sp)
	cp	a, #0x03
	jreq	00125$
	ldw	y, #___str_0+0
	push	#0x3f
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00125$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 66: switch (Port)
	ld	a, (0x06, sp)
	cp	a, #0x04
	jrule	00198$
	jp	00108$
00198$:
	clrw	x
	ld	a, (0x06, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00199$, x)
	jp	(x)
00199$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 68: case EXTI_PORT_GPIOA:
00101$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 69: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 70: EXTI->CR1 |= (uint8_t)(SensitivityValue);
	ldw	x, #0x50a0
	ld	a, (x)
	or	a, (0x07, sp)
	ldw	x, #0x50a0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 71: break;
	jra	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 72: case EXTI_PORT_GPIOB:
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 73: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 74: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
	ldw	x, #0x50a0
	ld	a, (x)
	ld	(0x01, sp), a
	ld	a, (0x07, sp)
	sll	a
	sll	a
	or	a, (0x01, sp)
	ldw	x, #0x50a0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 75: break;
	jra	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 76: case EXTI_PORT_GPIOC:
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 77: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0xcf
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 78: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
	ldw	x, #0x50a0
	ld	a, (x)
	ld	(0x03, sp), a
	ld	a, (0x07, sp)
	swap	a
	and	a, #0xf0
	or	a, (0x03, sp)
	ldw	x, #0x50a0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 79: break;
	jra	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 80: case EXTI_PORT_GPIOD:
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 81: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0x3f
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 82: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
	ldw	x, #0x50a0
	ld	a, (x)
	ld	(0x02, sp), a
	ld	a, (0x07, sp)
	swap	a
	and	a, #0xf0
	sll	a
	sll	a
	or	a, (0x02, sp)
	ldw	x, #0x50a0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 83: break;
	jra	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 84: case EXTI_PORT_GPIOE:
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 85: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
	ldw	x, #0x50a1
	ld	a, (x)
	and	a, #0xfc
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 86: EXTI->CR2 |= (uint8_t)(SensitivityValue);
	ldw	x, #0x50a1
	ld	a, (x)
	or	a, (0x07, sp)
	ldw	x, #0x50a1
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_setextintsensitivity.c: 90: }
00108$:
	addw	sp, #3
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_exti.exti_setextintsensitivity.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
