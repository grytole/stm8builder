;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:03 2017
;--------------------------------------------------------
	.module stm8s_itc_itc_setsoftwarepriority
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetSoftIntStatus
	.globl _assert_failed
	.globl _ITC_SetSoftwarePriority
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 60: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
;	-----------------------------------------
;	 function ITC_SetSoftwarePriority
;	-----------------------------------------
_ITC_SetSoftwarePriority:
	sub	sp, #5
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 66: assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
	ld	a, (0x08, sp)
	cp	a, #0x18
	jrugt	00169$
	clr	(0x03, sp)
	jra	00170$
00169$:
	ld	a, #0x01
	ld	(0x03, sp), a
00170$:
	tnz	(0x03, sp)
	jreq	00127$
	ldw	y, #___str_0+0
	push	#0x42
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00127$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 67: assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
	ld	a, (0x09, sp)
	cp	a, #0x02
	jreq	00129$
	ld	a, (0x09, sp)
	cp	a, #0x01
	jreq	00129$
	tnz	(0x09, sp)
	jreq	00129$
	ld	a, (0x09, sp)
	cp	a, #0x03
	jreq	00129$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00129$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 70: assert_param(IS_ITC_INTERRUPTS_DISABLED);
	call	_ITC_GetSoftIntStatus
	cp	a, #0x28
	jreq	00140$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00140$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 74: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
	ld	a, (0x08, sp)
	clr	(0x04, sp)
	and	a, #0x03
	ld	xl, a
	clr	a
	sllw	x
	ld	a, #0x03
	push	a
	ld	a, xl
	tnz	a
	jreq	00186$
00185$:
	sll	(1, sp)
	dec	a
	jrne	00185$
00186$:
	pop	a
	cpl	a
	ld	(0x02, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 77: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
	ld	a, (0x09, sp)
	push	a
	ld	a, xl
	tnz	a
	jreq	00188$
00187$:
	sll	(1, sp)
	dec	a
	jrne	00187$
00188$:
	pop	a
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 79: switch (IrqNum)
	tnz	(0x03, sp)
	jreq	00189$
	jp	00124$
00189$:
	clrw	x
	ld	a, (0x08, sp)
	ld	xl, a
	sllw	x
	ldw	x, (#00190$, x)
	jp	(x)
00190$:
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 81: case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
00101$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 82: case ITC_IRQ_AWU:
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 83: case ITC_IRQ_CLK:
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 84: case ITC_IRQ_PORTA:
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 85: ITC->ISPR1 &= Mask;
	ldw	x, #0x7f70
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f70
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 86: ITC->ISPR1 |= NewPriority;
	ldw	x, #0x7f70
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f70
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 87: break;
	jp	00124$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 89: case ITC_IRQ_PORTB:
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 90: case ITC_IRQ_PORTC:
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 91: case ITC_IRQ_PORTD:
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 92: case ITC_IRQ_PORTE:
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 93: ITC->ISPR2 &= Mask;
	ldw	x, #0x7f71
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f71
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 94: ITC->ISPR2 |= NewPriority;
	ldw	x, #0x7f71
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f71
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 95: break;
	jra	00124$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 104: case ITC_IRQ_SPI:
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 105: case ITC_IRQ_TIM1_OVF:
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 106: ITC->ISPR3 &= Mask;
	ldw	x, #0x7f72
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f72
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 107: ITC->ISPR3 |= NewPriority;
	ldw	x, #0x7f72
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f72
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 108: break;
	jra	00124$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 110: case ITC_IRQ_TIM1_CAPCOM:
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 115: case ITC_IRQ_TIM2_OVF:
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 116: case ITC_IRQ_TIM2_CAPCOM:
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 118: case ITC_IRQ_TIM3_OVF:
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 119: ITC->ISPR4 &= Mask;
	ldw	x, #0x7f73
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f73
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 120: ITC->ISPR4 |= NewPriority;
	ldw	x, #0x7f73
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f73
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 121: break;
	jra	00124$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 123: case ITC_IRQ_TIM3_CAPCOM:
00115$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 126: case ITC_IRQ_UART1_TX:
00116$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 127: case ITC_IRQ_UART1_RX:
00117$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 133: case ITC_IRQ_I2C:
00118$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 134: ITC->ISPR5 &= Mask;
	ldw	x, #0x7f74
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f74
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 135: ITC->ISPR5 |= NewPriority;
	ldw	x, #0x7f74
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f74
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 136: break;
	jra	00124$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 152: case ITC_IRQ_ADC1:
00119$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 158: case ITC_IRQ_TIM4_OVF:
00120$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 160: ITC->ISPR6 &= Mask;
	ldw	x, #0x7f75
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f75
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 161: ITC->ISPR6 |= NewPriority;
	ldw	x, #0x7f75
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f75
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 162: break;
	jra	00124$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 164: case ITC_IRQ_EEPROM_EEC:
00121$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 165: ITC->ISPR7 &= Mask;
	ldw	x, #0x7f76
	ld	a, (x)
	and	a, (0x02, sp)
	ldw	x, #0x7f76
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 166: ITC->ISPR7 |= NewPriority;
	ldw	x, #0x7f76
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x7f76
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 167: break;
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 169: default:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_itc.itc_setsoftwarepriority.c: 171: }
00122$:
00124$:
	addw	sp, #5
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_itc.itc_setsoftwarepriority.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
