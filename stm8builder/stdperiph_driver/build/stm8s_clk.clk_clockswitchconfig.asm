;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:55 2017
;--------------------------------------------------------
	.module stm8s_clk_clk_clockswitchconfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _CLK_ClockSwitchConfig
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 60: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
;	-----------------------------------------
;	 function CLK_ClockSwitchConfig
;	-----------------------------------------
_CLK_ClockSwitchConfig:
	sub	sp, #3
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 67: assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
	ld	a, (0x07, sp)
	cp	a, #0xe1
	jreq	00140$
	ld	a, (0x07, sp)
	cp	a, #0xd2
	jreq	00140$
	ld	a, (0x07, sp)
	cp	a, #0xb4
	jreq	00140$
	ldw	y, #___str_0+0
	push	#0x43
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00140$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 68: assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
	ld	a, (0x06, sp)
	cp	a, #0x01
	jrne	00282$
	ld	a, #0x01
	ld	(0x03, sp), a
	jra	00283$
00282$:
	clr	(0x03, sp)
00283$:
	tnz	(0x06, sp)
	jreq	00148$
	tnz	(0x03, sp)
	jrne	00148$
	ldw	y, #___str_0+0
	push	#0x44
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00148$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 69: assert_param(IS_FUNCTIONALSTATE_OK(ITState));
	tnz	(0x08, sp)
	jreq	00153$
	ld	a, (0x08, sp)
	cp	a, #0x01
	jreq	00153$
	ldw	y, #___str_0+0
	push	#0x45
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00153$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 70: assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
	tnz	(0x09, sp)
	jreq	00158$
	ld	a, (0x09, sp)
	cp	a, #0x01
	jreq	00158$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00158$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 73: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
	ldw	x, #0x50c3
	ld	a, (x)
	ld	(0x02, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 76: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
	tnz	(0x03, sp)
	jreq	00122$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 79: CLK->SWCR |= CLK_SWCR_SWEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 82: if (ITState != DISABLE)
	tnz	(0x08, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 84: CLK->SWCR |= CLK_SWCR_SWIEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 88: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 92: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x07, sp)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 95: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
	ldw	x, #0xffff
00105$:
	ldw	y, #0x50c5
	ld	a, (y)
	srl	a
	jrnc	00107$
	tnzw	x
	jreq	00107$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 97: DownCounter--;
	decw	x
	jra	00105$
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 100: if(DownCounter != 0)
	tnzw	x
	jreq	00109$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 102: Swif = SUCCESS;
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00123$
00109$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 106: Swif = ERROR;
	clr	(0x01, sp)
	jra	00123$
00122$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 112: if (ITState != DISABLE)
	tnz	(0x08, sp)
	jreq	00112$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 114: CLK->SWCR |= CLK_SWCR_SWIEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x04
	ld	(x), a
	jra	00113$
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 118: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	ldw	x, #0x50c5
	ld	a, (x)
	and	a, #0xfb
	ld	(x), a
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 122: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x07, sp)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 125: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
	ldw	x, #0xffff
00115$:
	ldw	y, #0x50c5
	ld	a, (y)
	bcp	a, #0x08
	jreq	00117$
	tnzw	x
	jreq	00117$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 127: DownCounter--;
	decw	x
	jra	00115$
00117$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 130: if(DownCounter != 0)
	tnzw	x
	jreq	00119$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 133: CLK->SWCR |= CLK_SWCR_SWEN;
	ldw	x, #0x50c5
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 134: Swif = SUCCESS;
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00123$
00119$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 138: Swif = ERROR;
	clr	(0x01, sp)
00123$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 141: if(Swif != ERROR)
	tnz	(0x01, sp)
	jreq	00136$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 144: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
	tnz	(0x09, sp)
	jrne	00132$
	ld	a, (0x02, sp)
	cp	a, #0xe1
	jrne	00132$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 146: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
	ldw	x, #0x50c0
	ld	a, (x)
	and	a, #0xfe
	ld	(x), a
	jra	00136$
00132$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 148: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
	tnz	(0x09, sp)
	jrne	00128$
	ld	a, (0x02, sp)
	cp	a, #0xd2
	jrne	00128$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 150: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
	ldw	x, #0x50c0
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
	jra	00136$
00128$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 152: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
	tnz	(0x09, sp)
	jrne	00136$
	ld	a, (0x02, sp)
	cp	a, #0xb4
	jrne	00136$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 154: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	ldw	x, #0x50c1
	ld	a, (x)
	and	a, #0xfe
	ld	(x), a
00136$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_clk.clk_clockswitchconfig.c: 157: return(Swif);
	ld	a, (0x01, sp)
	addw	sp, #3
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_clk.clk_clockswitchconfig.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
