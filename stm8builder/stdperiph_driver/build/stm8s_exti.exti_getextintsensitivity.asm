;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:57 2017
;--------------------------------------------------------
	.module stm8s_exti_exti_getextintsensitivity
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _EXTI_GetExtIntSensitivity
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 53: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
;	-----------------------------------------
;	 function EXTI_GetExtIntSensitivity
;	-----------------------------------------
_EXTI_GetExtIntSensitivity:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 55: uint8_t value = 0;
	clr	(0x01, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 58: assert_param(IS_EXTI_PORT_OK(Port));
	tnz	(0x04, sp)
	jreq	00111$
	ld	a, (0x04, sp)
	cp	a, #0x01
	jreq	00111$
	ld	a, (0x04, sp)
	cp	a, #0x02
	jreq	00111$
	ld	a, (0x04, sp)
	cp	a, #0x03
	jreq	00111$
	ld	a, (0x04, sp)
	cp	a, #0x04
	jreq	00111$
	ldw	y, #___str_0+0
	push	#0x3a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 60: switch (Port)
	ld	a, (0x04, sp)
	cp	a, #0x04
	jrugt	00107$
	clrw	x
	ld	a, (0x04, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00162$, x)
	jp	(x)
00162$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 62: case EXTI_PORT_GPIOA:
00101$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 63: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0x03
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 64: break;
	jra	00107$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 65: case EXTI_PORT_GPIOB:
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 66: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0x0c
	srl	a
	srl	a
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 67: break;
	jra	00107$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 68: case EXTI_PORT_GPIOC:
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 69: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0x30
	swap	a
	and	a, #0x0f
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 70: break;
	jra	00107$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 71: case EXTI_PORT_GPIOD:
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 72: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
	ldw	x, #0x50a0
	ld	a, (x)
	and	a, #0xc0
	swap	a
	and	a, #0x0f
	srl	a
	srl	a
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 73: break;
	jra	00107$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 74: case EXTI_PORT_GPIOE:
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 75: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
	ldw	x, #0x50a1
	ld	a, (x)
	and	a, #0x03
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 79: }
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_exti.exti_getextintsensitivity.c: 81: return((EXTI_Sensitivity_TypeDef)value);
	ld	a, (0x01, sp)
	addw	sp, #1
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_exti.exti_getextintsensitivity.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
