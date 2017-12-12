;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:54 2017
;--------------------------------------------------------
	.module stm8s_awu_awu_init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TBR_Array
	.globl _APR_Array
	.globl _assert_failed
	.globl _AWU_Init
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_init.c: 75: void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
;	-----------------------------------------
;	 function AWU_Init
;	-----------------------------------------
_AWU_Init:
	pushw	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_init.c: 78: assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
	tnz	(0x05, sp)
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x01
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x02
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x03
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x05
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x06
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x07
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x08
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x09
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x0a
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x0b
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x0c
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x0d
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x0e
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x0f
	jreq	00104$
	ld	a, (0x05, sp)
	cp	a, #0x10
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x4e
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_init.c: 81: AWU->CSR |= AWU_CSR_AWUEN;
	ldw	x, #0x50f0
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_init.c: 84: AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
	ldw	x, #0x50f2
	ld	a, (x)
	and	a, #0xf0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_init.c: 85: AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
	ldw	x, #0x50f2
	ld	a, (x)
	ld	(0x01, sp), a
	ldw	x, #_TBR_Array+0
	ld	a, xl
	add	a, (0x05, sp)
	rlwa	x
	adc	a, #0x00
	ld	xh, a
	ld	a, (x)
	or	a, (0x01, sp)
	ldw	x, #0x50f2
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_init.c: 88: AWU->APR &= (uint8_t)(~AWU_APR_APR);
	ldw	x, #0x50f1
	ld	a, (x)
	and	a, #0xc0
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_awu.awu_init.c: 89: AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
	ldw	x, #0x50f1
	ld	a, (x)
	ld	(0x02, sp), a
	ldw	x, #_APR_Array+0
	ld	a, xl
	add	a, (0x05, sp)
	rlwa	x
	adc	a, #0x00
	ld	xh, a
	ld	a, (x)
	or	a, (0x02, sp)
	ldw	x, #0x50f1
	ld	(x), a
	popw	x
	ret
	.area CODE
_APR_Array:
	.db #0x00	; 0
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x3D	; 61
	.db #0x17	; 23
	.db #0x17	; 23
	.db #0x3E	; 62
_TBR_Array:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0A	; 10
	.db #0x0B	; 11
	.db #0x0C	; 12
	.db #0x0C	; 12
	.db #0x0E	; 14
	.db #0x0F	; 15
	.db #0x0F	; 15
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_awu.awu_init.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
