;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:03 2017
;--------------------------------------------------------
	.module stm8s_itc_itc_getsoftwarepriority
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _ITC_GetSoftwarePriority
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 52: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
;	-----------------------------------------
;	 function ITC_GetSoftwarePriority
;	-----------------------------------------
_ITC_GetSoftwarePriority:
	sub	sp, #5
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 54: uint8_t Value = 0;
	clr	(0x05, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 58: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
	ld	a, (0x08, sp)
	cp	a, #0x18
	jrugt	00136$
	clr	a
	ld	xh, a
	jra	00137$
00136$:
	ld	a, #0x01
	ld	xh, a
00137$:
	ld	a, xh
	tnz	a
	jreq	00127$
	ldw	y, #___str_0+0
	pushw	x
	push	#0x3a
	push	#0x00
	push	#0x00
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
	rlwa	x
	pop	a
	rrwa	x
	addw	sp, #1
00127$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 61: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
	ld	a, (0x08, sp)
	clr	(0x02, sp)
	and	a, #0x03
	ld	xl, a
	clr	a
	ld	a, xl
	sll	a
	ld	(0x04, sp), a
	ld	a, #0x03
	push	a
	ld	a, (0x05, sp)
	jreq	00140$
00139$:
	sll	(1, sp)
	dec	a
	jrne	00139$
00140$:
	pop	a
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 63: switch (IrqNum)
	ld	a, xh
	tnz	a
	jreq	00141$
	jp	00123$
00141$:
	clrw	x
	ld	a, (0x08, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00142$, x)
	jp	(x)
00142$:
	.dw	#00101$
	.dw	#00102$
	.dw	#00103$
	.dw	#00104$
	.dw	#00105$
	.dw	#00106$
	.dw	#00107$
	.dw	#00108$
	.dw	#00122$
	.dw	#00122$
	.dw	#00109$
	.dw	#00110$
	.dw	#00111$
	.dw	#00112$
	.dw	#00113$
	.dw	#00114$
	.dw	#00115$
	.dw	#00116$
	.dw	#00117$
	.dw	#00118$
	.dw	#00122$
	.dw	#00122$
	.dw	#00119$
	.dw	#00120$
	.dw	#00121$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 65: case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
00101$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 66: case ITC_IRQ_AWU:
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 67: case ITC_IRQ_CLK:
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 68: case ITC_IRQ_PORTA:
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 69: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
	ldw	x, #0x7f70
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 70: break;
	jra	00123$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 72: case ITC_IRQ_PORTB:
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 73: case ITC_IRQ_PORTC:
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 74: case ITC_IRQ_PORTD:
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 75: case ITC_IRQ_PORTE:
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 76: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
	ldw	x, #0x7f71
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 77: break;
	jra	00123$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 86: case ITC_IRQ_SPI:
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 87: case ITC_IRQ_TIM1_OVF:
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 88: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
	ldw	x, #0x7f72
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 89: break;
	jra	00123$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 91: case ITC_IRQ_TIM1_CAPCOM:
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 96: case ITC_IRQ_TIM2_OVF:
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 97: case ITC_IRQ_TIM2_CAPCOM:
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 99: case ITC_IRQ_TIM3_OVF:
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 100: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
	ldw	x, #0x7f73
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 101: break;
	jra	00123$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 103: case ITC_IRQ_TIM3_CAPCOM:
00115$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 106: case ITC_IRQ_UART1_TX:
00116$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 107: case ITC_IRQ_UART1_RX:
00117$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 113: case ITC_IRQ_I2C:
00118$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 114: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
	ldw	x, #0x7f74
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 115: break;
	jra	00123$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 129: case ITC_IRQ_ADC1:
00119$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 134: case ITC_IRQ_TIM4_OVF:
00120$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 136: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
	ldw	x, #0x7f75
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 137: break;
	jra	00123$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 139: case ITC_IRQ_EEPROM_EEC:
00121$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 140: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
	ldw	x, #0x7f76
	ld	a, (x)
	and	a, (0x01, sp)
	ld	(0x05, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 141: break;
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 143: default:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 145: }
00122$:
00123$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 147: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
	ld	a, (0x05, sp)
	push	a
	ld	a, (0x05, sp)
	jreq	00144$
00143$:
	srl	(1, sp)
	dec	a
	jrne	00143$
00144$:
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_getsoftwarepriority.c: 149: return((ITC_PriorityLevel_TypeDef)Value);
	addw	sp, #5
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_itc.itc_getsoftwarepriority.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
