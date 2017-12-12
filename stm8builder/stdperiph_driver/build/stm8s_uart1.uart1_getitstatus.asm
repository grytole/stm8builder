;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:18 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_getitstatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _UART1_GetITStatus
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 61: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
;	-----------------------------------------
;	 function UART1_GetITStatus
;	-----------------------------------------
_UART1_GetITStatus:
	sub	sp, #7
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 70: assert_param(IS_UART1_GET_IT_OK(UART1_IT));
	ldw	x, (0x0a, sp)
	cpw	x, #0x0346
	jrne	00202$
	ld	a, #0x01
	ld	(0x05, sp), a
	jra	00203$
00202$:
	clr	(0x05, sp)
00203$:
	ldw	x, (0x0a, sp)
	cpw	x, #0x0100
	jrne	00205$
	ld	a, #0x01
	ld	(0x04, sp), a
	jra	00206$
00205$:
	clr	(0x04, sp)
00206$:
	ldw	x, (0x0a, sp)
	cpw	x, #0x0277
	jreq	00122$
	ldw	x, (0x0a, sp)
	cpw	x, #0x0266
	jreq	00122$
	ldw	x, (0x0a, sp)
	cpw	x, #0x0255
	jreq	00122$
	ldw	x, (0x0a, sp)
	cpw	x, #0x0244
	jreq	00122$
	ldw	x, (0x0a, sp)
	cpw	x, #0x0235
	jreq	00122$
	tnz	(0x05, sp)
	jrne	00122$
	tnz	(0x04, sp)
	jrne	00122$
	ldw	y, #___str_0+0
	push	#0x46
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00122$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 73: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
	ld	a, (0x0b, sp)
	ld	xh, a
	and	a, #0x0f
	ld	xl, a
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00225$
00224$:
	sll	(1, sp)
	dec	a
	jrne	00224$
00225$:
	pop	a
	ld	(0x03, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 75: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
	rlwa	x
	swap	a
	and	a, #0x0f
	rrwa	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 77: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
	ld	a, #0x01
	push	a
	ld	a, xh
	tnz	a
	jreq	00227$
00226$:
	sll	(1, sp)
	dec	a
	jrne	00226$
00227$:
	pop	a
	ld	(0x02, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 81: if (UART1_IT == UART1_IT_PE)
	tnz	(0x04, sp)
	jreq	00117$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 84: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
	ldw	x, #0x5234
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x07, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 87: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5230
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
	tnz	(0x07, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 90: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00118$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 95: pendingbitstatus = RESET;
	clr	a
	jra	00118$
00117$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 99: else if (UART1_IT == UART1_IT_LBDF)
	tnz	(0x05, sp)
	jreq	00114$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 102: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
	ldw	x, #0x5237
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 104: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5237
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00106$
	tnz	(0x01, sp)
	jreq	00106$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 107: pendingbitstatus = SET;
	ld	a, #0x01
	jra	00118$
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 112: pendingbitstatus = RESET;
	clr	a
	jra	00118$
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 118: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
	ldw	x, #0x5235
	ld	a, (x)
	and	a, (0x02, sp)
	ld	(0x06, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 120: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
	ldw	x, #0x5230
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00110$
	tnz	(0x06, sp)
	jreq	00110$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 123: pendingbitstatus = SET;
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 128: pendingbitstatus = RESET;
	.byte 0x21
00110$:
	clr	a
00118$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_getitstatus.c: 133: return  pendingbitstatus;
	addw	sp, #7
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_uart1.uart1_getitstatus.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
