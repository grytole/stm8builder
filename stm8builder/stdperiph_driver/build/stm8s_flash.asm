;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Tue Dec 12 21:27:59 2017
;--------------------------------------------------------
	.module stm8s_flash
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _assert_failed
	.globl _FLASH_Unlock
	.globl _FLASH_Lock
	.globl _FLASH_DeInit
	.globl _FLASH_ITConfig
	.globl _FLASH_EraseByte
	.globl _FLASH_ProgramByte
	.globl _FLASH_ReadByte
	.globl _FLASH_ProgramWord
	.globl _FLASH_ProgramOptionByte
	.globl _FLASH_EraseOptionByte
	.globl _FLASH_ReadOptionByte
	.globl _FLASH_SetLowPowerMode
	.globl _FLASH_SetProgrammingTime
	.globl _FLASH_GetLowPowerMode
	.globl _FLASH_GetProgrammingTime
	.globl _FLASH_GetBootSize
	.globl _FLASH_GetFlagStatus
	.globl _FLASH_WaitForLastOperation
	.globl _FLASH_EraseBlock
	.globl _FLASH_ProgramBlock
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
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 87: void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
;	-----------------------------------------
;	 function FLASH_Unlock
;	-----------------------------------------
_FLASH_Unlock:
	push	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 90: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
	ld	a, (0x04, sp)
	cp	a, #0xfd
	jrne	00124$
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00125$
00124$:
	clr	(0x01, sp)
00125$:
	tnz	(0x01, sp)
	jrne	00107$
	ld	a, (0x04, sp)
	cp	a, #0xf7
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x5a
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 93: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	tnz	(0x01, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 95: FLASH->PUKR = FLASH_RASS_KEY1;
	mov	0x5062+0, #0x56
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 96: FLASH->PUKR = FLASH_RASS_KEY2;
	mov	0x5062+0, #0xae
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 101: FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
	mov	0x5064+0, #0xae
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 102: FLASH->DUKR = FLASH_RASS_KEY1;
	mov	0x5064+0, #0x56
00104$:
	pop	a
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 112: void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
;	-----------------------------------------
;	 function FLASH_Lock
;	-----------------------------------------
_FLASH_Lock:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 115: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
	ld	a, (0x03, sp)
	cp	a, #0xfd
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0xf7
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x73
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 118: FLASH->IAPSR &= (uint8_t)FLASH_MemType;
	ldw	x, #0x505f
	ld	a, (x)
	and	a, (0x03, sp)
	ldw	x, #0x505f
	ld	(x), a
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 126: void FLASH_DeInit(void)
;	-----------------------------------------
;	 function FLASH_DeInit
;	-----------------------------------------
_FLASH_DeInit:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 128: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
	mov	0x505a+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 129: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
	mov	0x505b+0, #0x00
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 130: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
	mov	0x505c+0, #0xff
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 131: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
	ldw	x, #0x505f
	ld	a, (x)
	and	a, #0xf7
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 132: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
	ldw	x, #0x505f
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 133: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
	ldw	x, #0x505f
	ld	a, (x)
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 142: void FLASH_ITConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function FLASH_ITConfig
;	-----------------------------------------
_FLASH_ITConfig:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 145: assert_param(IS_FUNCTIONALSTATE_OK(NewState));
	tnz	(0x03, sp)
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x91
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 147: if(NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 149: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
	ldw	x, #0x505a
	ld	a, (x)
	or	a, #0x02
	ld	(x), a
	jra	00104$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 153: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
	ldw	x, #0x505a
	ld	a, (x)
	and	a, #0xfd
	ld	(x), a
00104$:
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 164: void FLASH_EraseByte(uint32_t Address)
;	-----------------------------------------
;	 function FLASH_EraseByte
;	-----------------------------------------
_FLASH_EraseByte:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 167: assert_param(IS_FLASH_ADDRESS_OK(Address));
	ldw	x, (0x05, sp)
	cpw	x, #0x8000
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrc	00110$
	ldw	x, #0x9fff
	cpw	x, (0x05, sp)
	clr	a
	sbc	a, (0x04, sp)
	clr	a
	sbc	a, (0x03, sp)
	jrnc	00104$
00110$:
	ldw	x, (0x05, sp)
	cpw	x, #0x4000
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrc	00103$
	ldw	x, #0x427f
	cpw	x, (0x05, sp)
	clr	a
	sbc	a, (0x04, sp)
	clr	a
	sbc	a, (0x03, sp)
	jrnc	00104$
00103$:
	ldw	y, #___str_0+0
	push	#0xa7
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 170: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
	ldw	x, (0x05, sp)
	clr	(x)
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 181: void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
;	-----------------------------------------
;	 function FLASH_ProgramByte
;	-----------------------------------------
_FLASH_ProgramByte:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 184: assert_param(IS_FLASH_ADDRESS_OK(Address));
	ldw	x, (0x05, sp)
	cpw	x, #0x8000
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrc	00110$
	ldw	x, #0x9fff
	cpw	x, (0x05, sp)
	clr	a
	sbc	a, (0x04, sp)
	clr	a
	sbc	a, (0x03, sp)
	jrnc	00104$
00110$:
	ldw	x, (0x05, sp)
	cpw	x, #0x4000
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrc	00103$
	ldw	x, #0x427f
	cpw	x, (0x05, sp)
	clr	a
	sbc	a, (0x04, sp)
	clr	a
	sbc	a, (0x03, sp)
	jrnc	00104$
00103$:
	ldw	y, #___str_0+0
	push	#0xb8
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 185: *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
	ldw	x, (0x05, sp)
	ld	a, (0x07, sp)
	ld	(x), a
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 195: uint8_t FLASH_ReadByte(uint32_t Address)
;	-----------------------------------------
;	 function FLASH_ReadByte
;	-----------------------------------------
_FLASH_ReadByte:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 198: assert_param(IS_FLASH_ADDRESS_OK(Address));
	ldw	x, (0x05, sp)
	cpw	x, #0x8000
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrc	00110$
	ldw	x, #0x9fff
	cpw	x, (0x05, sp)
	clr	a
	sbc	a, (0x04, sp)
	clr	a
	sbc	a, (0x03, sp)
	jrnc	00104$
00110$:
	ldw	x, (0x05, sp)
	cpw	x, #0x4000
	ld	a, (0x04, sp)
	sbc	a, #0x00
	ld	a, (0x03, sp)
	sbc	a, #0x00
	jrc	00103$
	ldw	x, #0x427f
	cpw	x, (0x05, sp)
	clr	a
	sbc	a, (0x04, sp)
	clr	a
	sbc	a, (0x03, sp)
	jrnc	00104$
00103$:
	ldw	y, #___str_0+0
	push	#0xc6
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 201: return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
	ldw	x, (0x05, sp)
	ld	a, (x)
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 212: void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
;	-----------------------------------------
;	 function FLASH_ProgramWord
;	-----------------------------------------
_FLASH_ProgramWord:
	sub	sp, #4
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 215: assert_param(IS_FLASH_ADDRESS_OK(Address));
	ldw	x, (0x09, sp)
	cpw	x, #0x8000
	ld	a, (0x08, sp)
	sbc	a, #0x00
	ld	a, (0x07, sp)
	sbc	a, #0x00
	jrc	00110$
	ldw	x, #0x9fff
	cpw	x, (0x09, sp)
	clr	a
	sbc	a, (0x08, sp)
	clr	a
	sbc	a, (0x07, sp)
	jrnc	00104$
00110$:
	ldw	x, (0x09, sp)
	cpw	x, #0x4000
	ld	a, (0x08, sp)
	sbc	a, #0x00
	ld	a, (0x07, sp)
	sbc	a, #0x00
	jrc	00103$
	ldw	x, #0x427f
	cpw	x, (0x09, sp)
	clr	a
	sbc	a, (0x08, sp)
	clr	a
	sbc	a, (0x07, sp)
	jrnc	00104$
00103$:
	ldw	y, #___str_0+0
	push	#0xd7
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 218: FLASH->CR2 |= FLASH_CR2_WPRG;
	ldw	x, #0x505b
	ld	a, (x)
	or	a, #0x40
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 219: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0xbf
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 222: *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
	ldw	y, (0x09, sp)
	ldw	(0x01, sp), y
	ldw	x, sp
	addw	x, #11
	ldw	(0x03, sp), x
	ldw	x, (0x03, sp)
	ld	a, (x)
	ldw	x, (0x01, sp)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 224: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
	ldw	x, (0x01, sp)
	incw	x
	ldw	y, (0x03, sp)
	ld	a, (0x1, y)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 226: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
	ldw	x, (0x01, sp)
	incw	x
	incw	x
	ldw	y, (0x03, sp)
	ld	a, (0x2, y)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 228: *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
	ldw	x, (0x01, sp)
	addw	x, #0x0003
	ldw	y, (0x03, sp)
	ld	a, (0x3, y)
	ld	(x), a
	addw	sp, #4
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 237: void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
;	-----------------------------------------
;	 function FLASH_ProgramOptionByte
;	-----------------------------------------
_FLASH_ProgramOptionByte:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 240: assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
	ldw	x, (0x03, sp)
	cpw	x, #0x4800
	jrc	00106$
	ldw	x, (0x03, sp)
	cpw	x, #0x487f
	jrule	00107$
00106$:
	ldw	y, #___str_0+0
	push	#0xf0
	clrw	x
	pushw	x
	push	#0x00
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 243: FLASH->CR2 |= FLASH_CR2_OPT;
	bset	0x505b, #7
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 244: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0x7f
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 250: *((NEAR uint8_t*)Address) = Data;
	ldw	x, (0x03, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 247: if(Address == 0x4800)
	pushw	x
	ldw	x, (0x05, sp)
	cpw	x, #0x4800
	popw	x
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 250: *((NEAR uint8_t*)Address) = Data;
	ld	a, (0x05, sp)
	ld	(x), a
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 255: *((NEAR uint8_t*)Address) = Data;
	ld	a, (0x05, sp)
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 256: *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
	ldw	x, (0x03, sp)
	incw	x
	ld	a, (0x05, sp)
	cpl	a
	ld	(x), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 258: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
	push	#0xfd
	call	_FLASH_WaitForLastOperation
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 261: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
	bres	0x505b, #7
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 262: FLASH->NCR2 |= FLASH_NCR2_NOPT;
	bset	0x505c, #7
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 270: void FLASH_EraseOptionByte(uint16_t Address)
;	-----------------------------------------
;	 function FLASH_EraseOptionByte
;	-----------------------------------------
_FLASH_EraseOptionByte:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 273: assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
	ldw	x, (0x03, sp)
	cpw	x, #0x4800
	jrc	00106$
	ldw	x, (0x03, sp)
	cpw	x, #0x487f
	jrule	00107$
00106$:
	ldw	y, #___str_0+0
	push	#0x11
	push	#0x01
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 276: FLASH->CR2 |= FLASH_CR2_OPT;
	bset	0x505b, #7
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 277: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0x7f
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 283: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
	ldw	y, (0x03, sp)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 280: if(Address == 0x4800)
	ldw	x, (0x03, sp)
	cpw	x, #0x4800
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 283: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
	clr	(y)
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 288: *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
	clr	(y)
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 289: *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
	ldw	x, (0x03, sp)
	incw	x
	ld	a, #0xff
	ld	(x), a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 291: FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
	push	#0xfd
	call	_FLASH_WaitForLastOperation
	pop	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 294: FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
	bres	0x505b, #7
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 295: FLASH->NCR2 |= FLASH_NCR2_NOPT;
	bset	0x505c, #7
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 303: uint16_t FLASH_ReadOptionByte(uint16_t Address)
;	-----------------------------------------
;	 function FLASH_ReadOptionByte
;	-----------------------------------------
_FLASH_ReadOptionByte:
	sub	sp, #5
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 309: assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
	ldw	x, (0x08, sp)
	cpw	x, #0x4800
	jrc	00109$
	ldw	x, (0x08, sp)
	cpw	x, #0x487f
	jrule	00110$
00109$:
	ldw	y, #___str_0+0
	push	#0x35
	push	#0x01
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00110$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 311: value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
	ldw	x, (0x08, sp)
	ld	a, (x)
	ld	(0x01, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 312: value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
	ld	a, (0x1, x)
	ld	(0x02, sp), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 317: res_value =	 value_optbyte;
	clrw	x
	ld	a, (0x01, sp)
	ld	xl, a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 315: if(Address == 0x4800)	 
	pushw	x
	ldw	x, (0x0a, sp)
	cpw	x, #0x4800
	popw	x
	jreq	00106$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 317: res_value =	 value_optbyte;
	jra	00105$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 321: if(value_optbyte == (uint8_t)(~value_optbyte_complement))
	ld	a, (0x02, sp)
	cpl	a
	ld	(0x05, sp), a
	ld	a, (0x01, sp)
	cp	a, (0x05, sp)
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 323: res_value = (uint16_t)((uint16_t)value_optbyte << 8);
	clr	a
	rlwa	x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 324: res_value = res_value | (uint16_t)value_optbyte_complement;
	ld	a, (0x02, sp)
	clr	(0x03, sp)
	pushw	x
	or	a, (2, sp)
	popw	x
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
	jra	00106$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 328: res_value = FLASH_OPTIONBYTE_ERROR;
	ldw	x, #0x5555
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 331: return(res_value);
	addw	sp, #5
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 340: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
;	-----------------------------------------
;	 function FLASH_SetLowPowerMode
;	-----------------------------------------
_FLASH_SetLowPowerMode:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 343: assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00104$
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x0c
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x57
	push	#0x01
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 346: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
	ldw	x, #0x505a
	ld	a, (x)
	and	a, #0xf3
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 349: FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
	ldw	x, #0x505a
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x505a
	ld	(x), a
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 358: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
;	-----------------------------------------
;	 function FLASH_SetProgrammingTime
;	-----------------------------------------
_FLASH_SetProgrammingTime:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 361: assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
	tnz	(0x03, sp)
	jreq	00104$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00104$
	ldw	y, #___str_0+0
	push	#0x69
	push	#0x01
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 363: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
	bres	0x505a, #0
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 364: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
	ldw	x, #0x505a
	ld	a, (x)
	or	a, (0x03, sp)
	ldw	x, #0x505a
	ld	(x), a
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 372: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
;	-----------------------------------------
;	 function FLASH_GetLowPowerMode
;	-----------------------------------------
_FLASH_GetLowPowerMode:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 374: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
	ldw	x, #0x505a
	ld	a, (x)
	and	a, #0x0c
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 382: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
;	-----------------------------------------
;	 function FLASH_GetProgrammingTime
;	-----------------------------------------
_FLASH_GetProgrammingTime:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 384: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
	ldw	x, #0x505a
	ld	a, (x)
	and	a, #0x01
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 392: uint32_t FLASH_GetBootSize(void)
;	-----------------------------------------
;	 function FLASH_GetBootSize
;	-----------------------------------------
_FLASH_GetBootSize:
	sub	sp, #4
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 397: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
	ldw	x, #0x505d
	ld	a, (x)
	clrw	x
	ld	xl, a
	clrw	y
	ld	a, #0x09
00109$:
	sllw	x
	rlcw	y
	dec	a
	jrne	00109$
	ldw	(0x03, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 400: if(FLASH->FPR == 0xFF)
	ldw	x, #0x505d
	ld	a, (x)
	cp	a, #0xff
	jrne	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 402: temp += 512;
	ldw	x, (0x03, sp)
	addw	x, #0x0200
	ld	a, yl
	adc	a, #0x00
	rlwa	y
	adc	a, #0x00
	ld	yh, a
	ldw	(0x03, sp), x
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 406: return(temp);
	ldw	x, (0x03, sp)
	addw	sp, #4
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 417: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
;	-----------------------------------------
;	 function FLASH_GetFlagStatus
;	-----------------------------------------
_FLASH_GetFlagStatus:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 421: assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
	ld	a, (0x03, sp)
	cp	a, #0x08
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x04
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x02
	jreq	00107$
	ld	a, (0x03, sp)
	cp	a, #0x01
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0xa5
	push	#0x01
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 424: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
	ldw	x, #0x505f
	ld	a, (x)
	and	a, (0x03, sp)
	tnz	a
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 426: status = SET; /* FLASH_FLAG is set */
	ld	a, #0x01
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 430: status = RESET; /* FLASH_FLAG is reset*/
	.byte 0x21
00102$:
	clr	a
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 434: return status;
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 549: IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
;	-----------------------------------------
;	 function FLASH_WaitForLastOperation
;	-----------------------------------------
_FLASH_WaitForLastOperation:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 551: uint8_t flagstatus = 0x00;
	clr	a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 576: while((flagstatus == 0x00) && (timeout != 0x00))
	ldw	x, #0xffff
00102$:
	tnz	a
	jrne	00104$
	tnzw	x
	jreq	00104$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 578: flagstatus = (uint8_t)(FLASH->IAPSR & (FLASH_IAPSR_EOP | FLASH_IAPSR_WR_PG_DIS));
	ldw	y, #0x505f
	ld	a, (y)
	and	a, #0x05
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 579: timeout--;
	decw	x
	jra	00102$
00104$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 583: if(timeout == 0x00 )
	tnzw	x
	jrne	00106$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 585: flagstatus = FLASH_STATUS_TIMEOUT;
	ld	a, #0x02
00106$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 588: return((FLASH_Status_TypeDef)flagstatus);
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 598: IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
;	-----------------------------------------
;	 function FLASH_EraseBlock
;	-----------------------------------------
_FLASH_EraseBlock:
	sub	sp, #7
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 610: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
	ld	a, (0x0c, sp)
	cp	a, #0xfd
	jrne	00136$
	ld	a, #0x01
	ld	(0x07, sp), a
	jra	00137$
00136$:
	clr	(0x07, sp)
00137$:
	tnz	(0x07, sp)
	jrne	00107$
	ld	a, (0x0c, sp)
	cp	a, #0xf7
	jreq	00107$
	ldw	y, #___str_0+0
	push	#0x62
	push	#0x02
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00107$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 611: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	tnz	(0x07, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 613: assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
	ldw	x, (0x0a, sp)
	cpw	x, #0x0080
	jrc	00112$
	ldw	y, #___str_0+0
	push	#0x65
	push	#0x02
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00112$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 614: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
	ldw	x, #0x8000
	ldw	(0x05, sp), x
	clrw	x
	ldw	(0x03, sp), x
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 618: assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
	ldw	x, (0x0a, sp)
	cpw	x, #0x000a
	jrc	00114$
	ldw	y, #___str_0+0
	push	#0x6a
	push	#0x02
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00114$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 619: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
	ldw	x, #0x4000
	ldw	(0x05, sp), x
	clrw	x
	ldw	(0x03, sp), x
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 627: pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
	ldw	y, (0x0a, sp)
	clrw	x
	ld	a, #0x06
00145$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00145$
	addw	y, (0x05, sp)
	ld	a, xl
	adc	a, (0x04, sp)
	rlwa	x
	adc	a, (0x03, sp)
	ldw	(0x01, sp), y
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 631: FLASH->CR2 |= FLASH_CR2_ERASE;
	ldw	x, #0x505b
	ld	a, (x)
	or	a, #0x20
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 632: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0xdf
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 636: *pwFlash = (uint32_t)0;
	ldw	x, (0x01, sp)
	clrw	y
	ldw	(0x2, x), y
	ldw	(x), y
	addw	sp, #7
	ret
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 655: IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
;	-----------------------------------------
;	 function FLASH_ProgramBlock
;	-----------------------------------------
_FLASH_ProgramBlock:
	sub	sp, #15
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 662: assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
	ld	a, (0x14, sp)
	cp	a, #0xfd
	jrne	00164$
	ld	a, #0x01
	ld	(0x0f, sp), a
	jra	00165$
00164$:
	clr	(0x0f, sp)
00165$:
	tnz	(0x0f, sp)
	jrne	00113$
	ld	a, (0x14, sp)
	cp	a, #0xf7
	jreq	00113$
	ldw	y, #___str_0+0
	push	#0x96
	push	#0x02
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00113$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 663: assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
	tnz	(0x15, sp)
	jreq	00118$
	ld	a, (0x15, sp)
	cp	a, #0x10
	jreq	00118$
	ldw	y, #___str_0+0
	push	#0x97
	push	#0x02
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00118$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 664: if(FLASH_MemType == FLASH_MEMTYPE_PROG)
	tnz	(0x0f, sp)
	jreq	00102$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 666: assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
	ldw	x, (0x12, sp)
	cpw	x, #0x0080
	jrc	00123$
	ldw	y, #___str_0+0
	push	#0x9a
	push	#0x02
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00123$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 667: startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
	ldw	x, #0x8000
	ldw	(0x09, sp), x
	clr	a
	clr	(0x07, sp)
	jra	00103$
00102$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 671: assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
	ldw	x, (0x12, sp)
	cpw	x, #0x000a
	jrc	00125$
	ldw	y, #___str_0+0
	push	#0x9f
	push	#0x02
	clrw	x
	pushw	x
	pushw	y
	call	_assert_failed
	addw	sp, #6
00125$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 672: startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
	ldw	x, #0x4000
	ldw	(0x09, sp), x
	clr	a
	clr	(0x07, sp)
00103$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 676: startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
	ldw	y, (0x12, sp)
	clrw	x
	push	a
	ld	a, #0x06
00177$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00177$
	ldw	(0x0c, sp), x
	pop	a
	addw	y, (0x09, sp)
	adc	a, (0x0c, sp)
	ld	xl, a
	ld	a, (0x07, sp)
	adc	a, (0x0b, sp)
	ld	xh, a
	ldw	(0x05, sp), y
	ldw	(0x03, sp), x
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 679: if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
	tnz	(0x15, sp)
	jrne	00105$
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 682: FLASH->CR2 |= FLASH_CR2_PRG;
	bset	0x505b, #0
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 683: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0xfe
	ld	(x), a
	jra	00134$
00105$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 688: FLASH->CR2 |= FLASH_CR2_FPRG;
	ldw	x, #0x505b
	ld	a, (x)
	or	a, #0x10
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 689: FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
	ldw	x, #0x505c
	ld	a, (x)
	and	a, #0xef
	ld	(x), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 693: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
00134$:
	clrw	x
	ldw	(0x01, sp), x
00108$:
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 695: *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
	ldw	y, (0x05, sp)
	addw	y, (0x01, sp)
	ldw	x, (0x16, sp)
	addw	x, (0x01, sp)
	ld	a, (x)
	ld	(y), a
;	/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driver/src/stm8s_flash.c: 693: for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
	ldw	x, (0x01, sp)
	cpw	x, #0x0040
	jrc	00108$
	addw	sp, #15
	ret
	.area CODE
___str_0:
	.ascii "/home/grytole/dev/git/stm8builder/stm8builder/stdperiph_driv"
	.ascii "er/src/stm8s_flash.c"
	.db 0x00
	.area INITIALIZER
	.area CABS (ABS)
