;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:17 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_getflagstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _UART1_GetFlagStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 54: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
;	-----------------------------------------
;	 function UART1_GetFlagStatus
;	-----------------------------------------
_UART1_GetFlagStatus:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 59: assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
	ldw	x, (0x05, sp)
	cpw	x, #0x0101
	jrne	00208$
	ld	a, #0x01
	ld	(0x02, sp), a
	jra	00209$
00208$:
	clr	(0x02, sp)
00209$:
	ldw	x, (0x05, sp)
	cpw	x, #0x0210
	jrne	00211$
	ld	a, #0x01
	.byte 0x21
00211$:
	clr	a
00212$:
	ldw	x, (0x05, sp)
	cpw	x, #0x0080
	jreq	00119$
	ldw	x, (0x05, sp)
	cpw	x, #0x0040
	jreq	00119$
	ldw	x, (0x05, sp)
	cpw	x, #0x0020
	jreq	00119$
	ldw	x, (0x05, sp)
	cpw	x, #0x0010
	jreq	00119$
	ldw	x, (0x05, sp)
	cpw	x, #0x0008
	jreq	00119$
	ldw	x, (0x05, sp)
	cpw	x, #0x0004
	jreq	00119$
	ldw	x, (0x05, sp)
	cpw	x, #0x0002
	jreq	00119$
	ldw	x, (0x05, sp)
	cpw	x, #0x0001
	jreq	00119$
	tnz	(0x02, sp)
	jrne	00119$
	tnz	a
	jrne	00119$
	ldw	y, #___str_0+0
	push	a
	push	#0x3b
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
	pop	a
00119$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 65: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	push	a
	ld	a, (0x07, sp)
	ld	(0x02, sp), a
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 63: if (UART1_FLAG == UART1_FLAG_LBDF)
	tnz	a
	jreq	00114$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 65: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5237
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 68: status = SET;
	ld	a, #0x01
	jra	00115$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 73: status = RESET;
	clr	a
	jra	00115$
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 76: else if (UART1_FLAG == UART1_FLAG_SBK)
	tnz	(0x02, sp)
	jreq	00111$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 78: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5235
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 81: status = SET;
	ld	a, #0x01
	jra	00115$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 86: status = RESET;
	clr	a
	jra	00115$
00111$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 91: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
	ldw	x, #0x5230
	ld	a, (x)
	and	a, (0x01, sp)
	tnz	a
	jreq	00108$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 94: status = SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 99: status = RESET;
	.byte 0x21
00108$:
	clr	a
00115$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getflagstatus.c: 103: return status;
	popw	x
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_uart1.uart1_getflagstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
