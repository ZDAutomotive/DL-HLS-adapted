/******************************************************************************
*
* Copyright (C) 2012 - 2020 ZD Automotive GmbH.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file chipdlin_hw.h
* @addtogroup chipdil_v1_06
* @{
*
* This header file contains the hardware interface of an ChipDlin device.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who    Date	Changes
* ----- ------ -------- ----------------------------------------------
* 1.00	guo    2019/09/21 First Release
*
* </pre>
*
*****************************************************************************/
#ifndef CHIPDLIN_HW_H		/* prevent circular inclusions */
#define CHIPDLIN_HW_H		/* by using protection macros */

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

#include "xil_types.h"
#include "xil_assert.h"
#include "xil_io.h"

/************************** Constant Definitions *****************************/

/** @name Register Map
 *
 * Register offsets for the CHIPDLIN.
 * @{
 */
#define CHIPDLIN_REG_OFFSET		0x0000                            /**< Reg space offset */
#define CHIPDLIN_LBUF_OFFSET	(CHIPDLIN_REG_OFFSET + 0x00)	  /**< Data buffer register (0x0) */
#define CHIPDLIN_LSEL_OFFSET	(CHIPDLIN_REG_OFFSET + 0x04)	  /**< Data buffer index (0x1) */
#define CHIPDLIN_LID_OFFSET	    (CHIPDLIN_REG_OFFSET + 0x08)	  /**< ID register (0x2) */
#define CHIPDLIN_LER_OFFSET	    (CHIPDLIN_REG_OFFSET + 0x0C)	  /**< Error register (0x3) */
#define CHIPDLIN_LIE_OFFSET	    (CHIPDLIN_REG_OFFSET + 0x10)	  /**< Interrupt enable register (0x4) */
#define CHIPDLIN_LSR_OFFSET	    (CHIPDLIN_REG_OFFSET + 0x14)	  /**< DLIN status register (0x5) */
#define CHIPDLIN_LCR_OFFSET	    (CHIPDLIN_REG_OFFSET + 0x14)	  /**< DLIN control register (0x5) */
#define CHIPDLIN_DLL_OFFSET	    (CHIPDLIN_REG_OFFSET + 0x18)     /**< Baud rate divisor low register (0x6) */
#define CHIPDLIN_DLH_OFFSET	    (CHIPDLIN_REG_OFFSET + 0x1C)	  /**< Baud rate divisor high register (0x7) */
#define CHIPDLIN_HDRL_OFFSET	(CHIPDLIN_REG_OFFSET + 0x20)      /**< Header delay low register (0x8) */
#define CHIPDLIN_HDRH_OFFSET	(CHIPDLIN_REG_OFFSET + 0x24)	  /**< Header delay high register (0x9) */
#define CHIPDLIN_HDP_OFFSET	    (CHIPDLIN_REG_OFFSET + 0x28)	  /**< Header delay prescaler (0xA) */
#define CHIPDLIN_LBS_OFFSET	    (CHIPDLIN_REG_OFFSET + 0x2C)	  /**< LIN bus status register (0xB) */
#define CHIPDLIN_WURT_OFFSET	(CHIPDLIN_REG_OFFSET + 0x30)	  /**< Wake-up response timeout register (0xC) */
#define CHIPDLIN_IDTL_OFFSET	(CHIPDLIN_REG_OFFSET + 0x34)	  /**< Idle state detection register (0xD) */
#define CHIPDLIN_IDTH_OFFSET	(CHIPDLIN_REG_OFFSET + 0x38)     /**< Idle state detection register (0xE) */
/* @} */

#define CHIPDLIN_LID_MASK 0x3F   /* LID register valid bits */

#define CHIPDLIN_CSUM_V21        0    /* lin2.1 checksum */
#define CHIPDLIN_CSUN_V13        1    /* lin1.3 checksum */
#define CHIPDLIN_ROLE_SLAVE      0    /* slave */
#define CHIPDLIN_ROLE_MASTER     1    /* master */


/**************************** Type Definitions *******************************/
#ifndef _D32PRO_H
  #define ALIGN128 __attribute__ ((aligned (16)))         /**< Align data address to 16 */
  #define ALIGN64  __attribute__ ((aligned (8)))          /**< Align data address to 8 */
  #define ALIGN32  __attribute__ ((aligned (4)))          /**< Align data address to 4 */
  #define ALIGN16  __attribute__ ((aligned (2)))          /**< Align data address to 2 */
  #define ALIGN8   __attribute__ ((aligned (1)))          /**< Align data address to 1 */
  #define ENUM32   __attribute__ ((aligned (4), packed))  /**< Align data address to 4 */
  #define ENUM16   __attribute__ ((aligned (2), packed))  /**< Align data address to 2 */
  #define ENUM8    __attribute__ ((aligned (1), packed))  /**< Align data address to 1 */
  #define PACKED   __attribute__ ((packed))           /**< Represent data with minimum memory usage */
//  #define INLINE   __attribute__ ((always_inline));        /**< Force compiler to inline function */
#else
	#include<d32pro.h>
#endif

#include <stdint.h>


/**
 * @brief Select register
 */
typedef volatile struct PACKED{
#if 0     /* big-endian */
  uint8_t ainc    : 1;/**< Auto increment buffer index after access. */
  uint8_t dummy   : 3;/**< Reserved for future use. */
  uint8_t index   : 4;/**< Buffer index */
#else /* little-endian */
  uint8_t index   : 4;/**< Buffer index */
  uint8_t dummy   : 3;/**< Reserved for future use. */
  uint8_t ainc    : 1;/**< Auto increment buffer index after access. */
#endif
} dlin_lsel_t;

/**
 * @brief Interrupt enable register
 */
typedef volatile enum ENUM8
{
  LIDE        = 0x01,
  RDYE        = 0x02,
  ERRE        = 0x04,
  ABORTE      = 0x08,
  SLEEPE      = 0x10,
  WAKEE       = 0x20
} dlin_lie_t;

/**
 * @brief Error register
 */
typedef volatile enum ENUM8 {
  FER         =  0x1,
  BITER       =  0x2,
  PER         =  0x4,
  CHKSER      =  0x8,
  TOVER       =  0x10,
  SYNCER      =  0x20,
  OVER        =  0x40,
  WAKEER      =  0x80
}  dlin_ler_t;

/**
 * @brief Lin bus register
 */
typedef volatile enum ENUM8 {
  SLEEPM      =  0x1,
  WAKEUP      =  0x2,
  SLEEP       =  0x4,
} dlin_lbr_t;

/**
 * @brief Control register
 */
typedef volatile struct PACKED{
#if 0     /* big-endian */
  uint8_t mode    : 1;  /**< Master/Slave mode select */
  uint8_t lin13   : 1;  /**< Checksum selector: 1 - classic checksum compatible with LIN 1.3; 0 - Enhanced checksum compatible with LIN 2.1 specification */
  uint8_t size    : 4;  /**< Lenght of message, this option is valid only LIN2.1 mode is selected (lin13 parameter is 0) */
  uint8_t cmd     : 2;  /**< Execute command */
#else  /* little-endian */
  uint8_t cmd     : 2;  /**< Execute command */
  uint8_t size    : 4;  /**< Lenght of message, this option is valid only LIN2.1 mode is selected (lin13 parameter is 0) */
  uint8_t lin13   : 1;  /**< Checksum selector: 1 - classic checksum compatible with LIN 1.3; 0 - Enhanced checksum compatible with LIN 2.1 specification */
  uint8_t mode    : 1;  /**< Master/Slave mode select */
#endif
} dlin_lcr_t;

/**
 * @brief Baud rate register
 */
#define CHIPDLIN_BAUD_SYNC    0x80
typedef volatile struct PACKED {
#if 0     /* big-endian */	
  /** Auto synchronization mode (working only in Slave mode) */
  uint8_t   sync  : 1;
  /** Auto synchronization mode (working only in Slave mode) */
  uint8_t  divh   : 7;
  /** Baud rate divider */
  uint8_t  divl   : 8;
#else  /* little-endian */
  /** Baud rate divider */
  uint8_t  divl   : 8;
  /** Auto synchronization mode (working only in Slave mode) */
  uint8_t  divh   : 7;
  uint8_t   sync  : 1;
#endif
} dlin_baud_t;

/**
 * @brief Idle detection time register
 */
typedef volatile struct PACKED {
#if 0     /* big-endian */		
  /** Enables/disables Idle state detection. */
  uint8_t  idtrun : 1;
  /** Reserved for future use. */
  uint8_t  dummy  : 2;
  /** Idle detection timer overflow value */
  uint16_t idt    : 13;
#else  /* little-endian */
  /** Idle detection timer overflow value */
  uint16_t idt    : 13;
  /** Reserved for future use. */
  uint8_t  dummy  : 2; 
  /** Enables/disables Idle state detection. */
  uint8_t  idtrun : 1;  
#endif  
} dlin_idt_t;

//*************added by guo 2019-07-06****************
#define CHIPLIN_LSR_RDY       0x2

typedef volatile struct PACKED{
#if 0     /* big-endian */
  uint8_t log_size : 4;  /**log size */
  uint8_t abort    : 1;  /**abort */
  uint8_t err      : 1;  /**error */
  uint8_t rdy      : 1;  /**ready */
  uint8_t lid      : 1;  /**lid received */  
#else  /* little-endian */
  uint8_t lid      : 1;  /**lid received */
  uint8_t rdy      : 1;  /**ready */
  uint8_t err      : 1;  /**error */
  uint8_t abort    : 1;  /**abort */
  uint8_t log_size : 4;  /**log size */
#endif
} dlin_lsr_t;


/***************** Macros (Inline Functions) Definitions *********************/

/****************************************************************************/
/**
* Read a CHIPDLIN register.
*
* @param	BaseAddress contains the base address of the device.
* @param	RegOffset contains the offset from the base address of the
*		device.
*
* @return	The value read from the register.
*
* @note		C-Style signature:
*		u32 ChipDLIN_ReadReg(u32 BaseAddress, int RegOffset)
*
******************************************************************************/
#define ChipDLIN_ReadReg(BaseAddress, RegOffset) \
	Xil_In32((BaseAddress) + (u32)(RegOffset))

/***************************************************************************/
/**
* Write a CHIPDLIN register.
*
* @param	BaseAddress contains the base address of the device.
* @param	RegOffset contains the offset from the base address of the
*		device.
* @param	RegisterValue is the value to be written to the register.
*
* @return	None.
*
* @note		C-Style signature:
*		void ChipDLIN_WriteReg(u32 BaseAddress, int RegOffset,
*						   u16 RegisterValue)
*
******************************************************************************/
#define ChipDLIN_WriteReg(BaseAddress, RegOffset, RegisterValue) \
	Xil_Out32((BaseAddress) + (u32)(RegOffset), (u32)(RegisterValue))


/**
  Read / Write LBUF
*/
#define ChipDLIN_ReadReg_LBUF(BaseAddress) \
		ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_LBUF_OFFSET)	
#define ChipDLIN_WriteReg_LBUF(BaseAddress, RegisterValue) \
		ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_LBUF_OFFSET, RegisterValue)

/**
  Read / Write LSEL
*/
#define ChipDLIN_ReadReg_LSEL(BaseAddress) \
			ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_LSEL_OFFSET) 
#define ChipDLIN_WriteReg_LSEL(BaseAddress, RegisterValue) \
			ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_LSEL_OFFSET, RegisterValue)

/**
  Read / Write LID
*/
#define ChipDLIN_ReadReg_LID(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_LID_OFFSET) 
#define ChipDLIN_WriteReg_LID(BaseAddress, RegisterValue) \
				ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_LID_OFFSET, RegisterValue)

/**
  Read LER
*/
#define ChipDLIN_ReadReg_LER(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_LER_OFFSET) 

/**
  Read / Write LIE
*/
#define ChipDLIN_ReadReg_LIE(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_LIE_OFFSET) 
#define ChipDLIN_WriteReg_LIE(BaseAddress, RegisterValue) \
				ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_LIE_OFFSET, RegisterValue)

/**
  Read / Write LSR/LCR
*/
#define ChipDLIN_ReadReg_LSR(BaseAddress) \
	ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_LSR_OFFSET)
#define ChipDLIN_WriteReg_LCR(BaseAddress, RegisterValue) \
	ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_LCR_OFFSET, RegisterValue)



/**
  Read / Write DLL
*/
#define ChipDLIN_ReadReg_DLL(BaseAddress) \
			ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_DLL_OFFSET) 
#define ChipDLIN_WriteReg_DLL(BaseAddress, RegisterValue) \
			ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_DLL_OFFSET, RegisterValue)

/**
  Read / Write DLH
*/
#define ChipDLIN_ReadReg_DLH(BaseAddress) \
			ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_DLH_OFFSET) 
#define ChipDLIN_WriteReg_DLH(BaseAddress, RegisterValue) \
			ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_DLH_OFFSET, RegisterValue)

/**
  Read / Write HDRL
*/
#define ChipDLIN_ReadReg_HDRL(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_HDRL_OFFSET) 
#define ChipDLIN_WriteReg_HDRL(BaseAddress, RegisterValue) \
				ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_HDRL_OFFSET, RegisterValue)

/**
  Read/Write HDRH
*/
#define ChipDLIN_ReadReg_HDRH(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_HDRH_OFFSET) 
#define ChipDLIN_WriteReg_HDRH(BaseAddress, RegisterValue) \
				ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_HDRH_OFFSET, RegisterValue)				

/**
  Read/Write HDP
*/
#define ChipDLIN_ReadReg_HDP(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_HDP_OFFSET) 
#define ChipDLIN_WriteReg_HDP(BaseAddress, RegisterValue) \
				ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_HDP_OFFSET, RegisterValue)


/**
  Read LBS
*/
#define ChipDLIN_ReadReg_LBS(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_LBS_OFFSET) 

/**
  Read/Write WURT
*/
#define ChipDLIN_ReadReg_WURT(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_WURT_OFFSET) 
#define ChipDLIN_WriteReg_WURT(BaseAddress, RegisterValue) \
				ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_WURT_OFFSET, RegisterValue)				

/**
  Read/Write IDTL
*/
#define ChipDLIN_ReadReg_IDTL(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_IDTL_OFFSET) 
#define ChipDLIN_WriteReg_IDTL(BaseAddress, RegisterValue) \
				ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_IDTL_OFFSET, RegisterValue)

/**
  Read/Write IDTH
*/
#define ChipDLIN_ReadReg_IDTH(BaseAddress) \
				ChipDLIN_ReadReg(BaseAddress, CHIPDLIN_IDTH_OFFSET) 
#define ChipDLIN_WriteReg_IDTH(BaseAddress, RegisterValue) \
				ChipDLIN_WriteReg(BaseAddress, CHIPDLIN_IDTH_OFFSET, RegisterValue)


/************************** Function Prototypes ******************************/


/************************** Variable Definitions *****************************/

#ifdef __cplusplus
}
#endif

#endif /* end of protection macro */
/** @} */
