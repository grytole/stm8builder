;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:28:17 2017
;--------------------------------------------------------
	.module stm8s_uart1_uart1_deinit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_DeInit
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 53: void UART1_DeInit(void)
;	-----------------------------------------
;	 function UART1_DeInit
;	-----------------------------------------
_UART1_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 57: (void)UART1->SR;
	ldw	x, #0x5230
	ld	a, (x)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 58: (void)UART1->DR;
	ldw	x, #0x5231
	ld	a, (x)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 60: UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
	mov	0x5233+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 61: UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
	mov	0x5232+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 63: UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
	mov	0x5234+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 64: UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
	mov	0x5235+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 65: UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
	mov	0x5236+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 66: UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
	mov	0x5237+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 67: UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
	mov	0x5238+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 69: UART1->GTR = UART1_GTR_RESET_VALUE;
	mov	0x5239+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_uart1.uart1_deinit.c: 70: UART1->PSCR = UART1_PSCR_RESET_VALUE;
	mov	0x523a+0, #0x00
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
