                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                                      4 ; This file was generated Tue Dec 12 21:28:19 2017
                                      5 ;--------------------------------------------------------
                                      6 	.module blink
                                      7 	.optsdcc -mstm8
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _main
                                     13 	.globl _delay
                                     14 	.globl _GPIO_WriteReverse
                                     15 	.globl _GPIO_Init
                                     16 	.globl _period
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area DATA
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area INITIALIZED
      000001                         25 _period::
      000001                         26 	.ds 2
                                     27 ;--------------------------------------------------------
                                     28 ; Stack segment in internal ram 
                                     29 ;--------------------------------------------------------
                                     30 	.area	SSEG
      000003                         31 __start__stack:
      000003                         32 	.ds	1
                                     33 
                                     34 ;--------------------------------------------------------
                                     35 ; absolute external ram data
                                     36 ;--------------------------------------------------------
                                     37 	.area DABS (ABS)
                                     38 ;--------------------------------------------------------
                                     39 ; interrupt vector 
                                     40 ;--------------------------------------------------------
                                     41 	.area HOME
      008000                         42 __interrupt_vect:
      008000 82 00 80 83             43 	int s_GSINIT ;reset
      008004 82 00 00 00             44 	int 0x0000 ;trap
      008008 82 00 00 00             45 	int 0x0000 ;int0
      00800C 82 00 00 00             46 	int 0x0000 ;int1
      008010 82 00 00 00             47 	int 0x0000 ;int2
      008014 82 00 00 00             48 	int 0x0000 ;int3
      008018 82 00 00 00             49 	int 0x0000 ;int4
      00801C 82 00 00 00             50 	int 0x0000 ;int5
      008020 82 00 00 00             51 	int 0x0000 ;int6
      008024 82 00 00 00             52 	int 0x0000 ;int7
      008028 82 00 00 00             53 	int 0x0000 ;int8
      00802C 82 00 00 00             54 	int 0x0000 ;int9
      008030 82 00 00 00             55 	int 0x0000 ;int10
      008034 82 00 00 00             56 	int 0x0000 ;int11
      008038 82 00 00 00             57 	int 0x0000 ;int12
      00803C 82 00 00 00             58 	int 0x0000 ;int13
      008040 82 00 00 00             59 	int 0x0000 ;int14
      008044 82 00 00 00             60 	int 0x0000 ;int15
      008048 82 00 00 00             61 	int 0x0000 ;int16
      00804C 82 00 00 00             62 	int 0x0000 ;int17
      008050 82 00 00 00             63 	int 0x0000 ;int18
      008054 82 00 00 00             64 	int 0x0000 ;int19
      008058 82 00 00 00             65 	int 0x0000 ;int20
      00805C 82 00 00 00             66 	int 0x0000 ;int21
      008060 82 00 00 00             67 	int 0x0000 ;int22
      008064 82 00 00 00             68 	int 0x0000 ;int23
      008068 82 00 00 00             69 	int 0x0000 ;int24
      00806C 82 00 00 00             70 	int 0x0000 ;int25
      008070 82 00 00 00             71 	int 0x0000 ;int26
      008074 82 00 00 00             72 	int 0x0000 ;int27
      008078 82 00 00 00             73 	int 0x0000 ;int28
      00807C 82 00 00 00             74 	int 0x0000 ;int29
                                     75 ;--------------------------------------------------------
                                     76 ; global & static initialisations
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME
                                     79 	.area GSINIT
                                     80 	.area GSFINAL
                                     81 	.area GSINIT
      008083                         82 __sdcc_gs_init_startup:
      008083                         83 __sdcc_init_data:
                                     84 ; stm8_genXINIT() start
      008083 AE 00 00         [ 2]   85 	ldw x, #l_DATA
      008086 27 07            [ 1]   86 	jreq	00002$
      008088                         87 00001$:
      008088 72 4F 00 00      [ 1]   88 	clr (s_DATA - 1, x)
      00808C 5A               [ 2]   89 	decw x
      00808D 26 F9            [ 1]   90 	jrne	00001$
      00808F                         91 00002$:
      00808F AE 00 02         [ 2]   92 	ldw	x, #l_INITIALIZER
      008092 27 09            [ 1]   93 	jreq	00004$
      008094                         94 00003$:
      008094 D6 82 10         [ 1]   95 	ld	a, (s_INITIALIZER - 1, x)
      008097 D7 00 00         [ 1]   96 	ld	(s_INITIALIZED - 1, x), a
      00809A 5A               [ 2]   97 	decw	x
      00809B 26 F7            [ 1]   98 	jrne	00003$
      00809D                         99 00004$:
                                    100 ; stm8_genXINIT() end
                                    101 	.area GSFINAL
      00809D CC 80 80         [ 2]  102 	jp	__sdcc_program_startup
                                    103 ;--------------------------------------------------------
                                    104 ; Home
                                    105 ;--------------------------------------------------------
                                    106 	.area HOME
                                    107 	.area HOME
      008080                        108 __sdcc_program_startup:
      008080 CC 80 A9         [ 2]  109 	jp	_main
                                    110 ;	return from main will return to caller
                                    111 ;--------------------------------------------------------
                                    112 ; code
                                    113 ;--------------------------------------------------------
                                    114 	.area CODE
                                    115 ;	blink.c: 9: void delay(uint16_t ticks) {
                                    116 ;	-----------------------------------------
                                    117 ;	 function delay
                                    118 ;	-----------------------------------------
      0080A0                        119 _delay:
                                    120 ;	blink.c: 10: while (ticks != 0) {
      0080A0 1E 03            [ 2]  121 	ldw	x, (0x03, sp)
      0080A2                        122 00101$:
      0080A2 5D               [ 2]  123 	tnzw	x
      0080A3 27 03            [ 1]  124 	jreq	00104$
                                    125 ;	blink.c: 11: ticks--;
      0080A5 5A               [ 2]  126 	decw	x
      0080A6 20 FA            [ 2]  127 	jra	00101$
      0080A8                        128 00104$:
      0080A8 81               [ 4]  129 	ret
                                    130 ;	blink.c: 15: void main(void) {
                                    131 ;	-----------------------------------------
                                    132 ;	 function main
                                    133 ;	-----------------------------------------
      0080A9                        134 _main:
                                    135 ;	blink.c: 17: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);
      0080A9 4B E0            [ 1]  136 	push	#0xe0
      0080AB 4B 20            [ 1]  137 	push	#0x20
      0080AD 4B 05            [ 1]  138 	push	#0x05
      0080AF 4B 50            [ 1]  139 	push	#0x50
      0080B1 CD 80 CC         [ 4]  140 	call	_GPIO_Init
      0080B4 5B 04            [ 2]  141 	addw	sp, #4
                                    142 ;	blink.c: 19: while (1) {
      0080B6                        143 00102$:
                                    144 ;	blink.c: 20: GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
      0080B6 4B 20            [ 1]  145 	push	#0x20
      0080B8 4B 05            [ 1]  146 	push	#0x05
      0080BA 4B 50            [ 1]  147 	push	#0x50
      0080BC CD 82 0A         [ 4]  148 	call	_GPIO_WriteReverse
      0080BF 5B 03            [ 2]  149 	addw	sp, #3
                                    150 ;	blink.c: 21: delay(period);
      0080C1 CE 00 01         [ 2]  151 	ldw	x, _period+0
      0080C4 89               [ 2]  152 	pushw	x
      0080C5 CD 80 A0         [ 4]  153 	call	_delay
      0080C8 85               [ 2]  154 	popw	x
      0080C9 20 EB            [ 2]  155 	jra	00102$
      0080CB 81               [ 4]  156 	ret
                                    157 	.area CODE
                                    158 	.area INITIALIZER
      008211                        159 __xinit__period:
      008211 FF FF                  160 	.dw #0xFFFF
                                    161 	.area CABS (ABS)
