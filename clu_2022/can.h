#define XCANFD_FSR_OFFSET	0x0E8  /**< Receive FIFO Status Register */
#define XCANFD_FSR_FL_MASK	0x00007F00  /**< Fill Level Mask FIFO 0 */
#define XCANFD_FSR_FL_1_MASK	0x7F000000  /**< Fill Level Mask FIFO 1 */
#define XCANFD_RX_FIFO_0	         0 /**< Selection for RX Fifo 0 */
#define XCANFD_RX_FIFO_1	         1 /**< Selection for RX Fifo 1 */
#define XCANFD_FSR_RI_1_SHIFT	16  /**< Read Index Mask FIFO 1 */
#define XCANFD_RXFIFO_0_BASE_ID_OFFSET 0x2100   /**< Rx Message Buffer Element
							0 ID Register**/
#define XCANFD_MAX_FRAME_SIZE 72	/**< Maximum CAN frame length in bytes*/
#define XCANFD_RXFIFO_1_BUFFER_0_BASE_ID_OFFSET  0x4100  /**< Rx Message Buffer Element
							0 ID Register  */
#define XCANFD_RXFIFO_0_BASE_DLC_OFFSET 0x2104  /**< Rx Message Buffer Element
							0 DLC Register  */
#define XCANFD_RXFIFO_1_BUFFER_0_BASE_DLC_OFFSET 0x4104  /**< Rx Message Buffer Element
							0 DLC Register  */
#define XCANFD_DLCR_DLC_MASK	0xF0000000  /**< Data Length Code Mask */
#define XCANFD_DLCR_EDL_MASK	0x08000000  /**< EDL Mask in DLC Register */
#define XCANFD_DLCR_DLC_SHIFT	28  	    /**< Data Length Code Shift */
#define XCANFD_RXFIFO_1_BUFFER_0_BASE_DW0_OFFSET 0x4108 /**< Rx Message Buffer Element
							0 DW Register  */
#define XCANFD_DW_BYTES	4		/**< Data Word Bytes */
#define XCANFD_RXFIFO_0_BASE_DW0_OFFSET 0x2108 /**< Rx Message Buffer Element */
#define XCANFD_FSR_IRI_MASK	0x00000080  /**< Increment Read Index Mask */
#define XCANFD_FSR_IRI_1_MASK	0x00800000  /**< Increment Read Index */
#define XCANFD_FSR_RI_MASK	0x0000003F  /**< Read Index Mask FIFO 0 */

////////////////////DLC////////////////////////////////////
// *
// */
#define XCANFD_DLC1 0x10000000	/**< Data Length Code 1 */
#define XCANFD_DLC2 0x20000000	/**< Data Length Code 2 */
#define XCANFD_DLC3 0x30000000	/**< Data Length Code 3 */
#define XCANFD_DLC4 0x40000000	/**< Data Length Code 4 */
#define XCANFD_DLC5 0x50000000	/**< Data Length Code 5 */
#define XCANFD_DLC6 0x60000000	/**< Data Length Code 6 */
#define XCANFD_DLC7 0x70000000	/**< Data Length Code 7 */
#define XCANFD_DLC8 0x80000000	/**< Data Length Code 8 */
#define XCANFD_DLC9 0x90000000	/**< Data Length Code 9 */
#define XCANFD_DLC10 0xA0000000	/**< Data Length Code 10 */
#define XCANFD_DLC11 0xB0000000	/**< Data Length Code 11 */
#define XCANFD_DLC12 0xC0000000	/**< Data Length Code 12 */
#define XCANFD_DLC13 0xD0000000	/**< Data Length Code 13 */
#define XCANFD_DLC14 0xE0000000	/**< Data Length Code 14 */
#define XCANFD_DLC15 0xF0000000	/**< Data Length Code 15 */

/////////////////////////////////////////////////////////
/** @name CAN operation modes
 *  @{
 */
#define XCANFD_MODE_CONFIG	0x00000001 /**< Configuration mode */
#define XCANFD_MODE_NORMAL	0x00000002 /**< Normal mode */
#define XCANFD_MODE_LOOPBACK	0x00000004 /**< Loop Back mode */
#define XCANFD_MODE_SLEEP	0x00000008 /**< Sleep mode */
#define XCANFD_MODE_SNOOP	0x00000010 /**< Snoop mode */
#define XCANFD_MODE_ABR		0x00000020 /**< Auto Bus-Off Recovery */
#define XCANFD_MODE_SBR		0x00000040 /**< Starut Bus-Off Recovery */
#define XCANFD_MODE_PEE		0x00000080 /**< Protocol Exception mode */
#define XCANFD_MODE_DAR		0x0000000A /**< Disable Auto Retransmission mode */
#define XCANFD_MODE_BR		0x0000000B /**< Bus-Off Recovery Mode */
#define XCANFD_RX_FIFO_0	         0 /**< Selection for RX Fifo 0 */
#define XCANFD_RX_FIFO_1	         1 /**< Selection for RX Fifo 1 */
/* @} */

/** @name Mode Select Register
 *  @{
 */
#define XCANFD_MSR_LBACK_MASK	0x00000002  /**< Loop Back Mode Select Mask */
#define XCANFD_MSR_SLEEP_MASK	0x00000001  /**< Sleep Mode Select Mask */
#define XCANFD_MSR_BRSD_MASK	0x00000008  /**< Bit Rate Switch Select Mask */
#define XCANFD_MSR_DAR_MASK	0x00000010  /**< Disable Auto-Retransmission
						 Select Mask */
#define XCANFD_MSR_SNOOP_MASK	0x00000004  /**< Snoop Mode Select Mask */
#define XCANFD_MSR_DPEE_MASK	0x00000020  /**< Protocol Exception Event
						 Mask */
#define XCANFD_MSR_SBR_MASK	0x00000040  /**< Start Bus-Off Recovery Mask */
#define XCANFD_MSR_ABR_MASK     0x00000080  /**< Auto Bus-Off Recovery Mask */
#define XCANFD_MSR_CONFIG_MASK	0x000000F8  /**< Configuration Mode Mask */
/* @} */

/** @name Register offsets for the CAN. Each register is 32 bits.
 *  @{
 */
#define XCANFD_SRR_OFFSET		0x000  /**< Software Reset Register */
#define XCANFD_MSR_OFFSET		0x004  /**< Mode Select Register */
#define XCANFD_BRPR_OFFSET	0x008  /**< Baud Rate Prescaler Register */
#define XCANFD_BTR_OFFSET	0x00C  /**< Bit Timing Register */
#define XCANFD_ECR_OFFSET	0x010  /**< Error Counter Register */
#define XCANFD_ESR_OFFSET	0x014  /**< Error Status Register */
#define XCANFD_SR_OFFSET	0x018  /**< Status Register */

#define XCANFD_ISR_OFFSET	0x01C  /**< Interrupt Status Register */
#define XCANFD_IER_OFFSET	0x020  /**< Interrupt Enable Register */
#define XCANFD_ICR_OFFSET	0x024  /**< Interrupt Clear Register */

#define XCANFD_F_BRPR_OFFSET	0x088  /**< Data Phase Buad Rate Prescalar
						Register */
#define XCANFD_F_BTR_OFFSET	0x08C  /**< Data Phase Bit Timing Register */
#define XCANFD_TRR_OFFSET	0x090  /**< Tx Buffer Ready Request Register */
#define XCANFD_IETRS_OFFSET	0x094  /**< Tx Buffer Ready Request Served
						Interrupt Enable Register */
#define XCANFD_TCR_OFFSET	0x098  /**< Tx Buffer Cancel Request Register
					*/
#define XCANFD_IETCS_OFFSET	0x09C  /**< Tx Buffer Cancel Request Served
						Interrupt Enable Register */
#define XCANFD_RSD0_OFFSET	0x0A0  /**< Reserved */
#define XCANFD_RSD1_OFFSET	0x0A4  /**< Reserved */
#define XCANFD_RSD2_OFFSET	0x0A8  /**< Reserved */
#define XCANFD_RSD3_OFFSET	0x0AC  /**< Reserved */
/* @} */

/** @name Software Reset Register
 *  @{
 */
#define XCANFD_SRR_CEN_MASK	0x00000002  /**< Can Enable Mask */
#define XCANFD_SRR_SRST_MASK	0x00000001  /**< Reset Mask */
/* @} */

/** @name Status Register
 *  @{
 */
#define XCANFD_SR_TDCV_MASK	0x007F0000  /**< Tranceiver Dealy compensation
						Mask */
#define XCANFD_SR_SNOOP_MASK	0x00001000  /**< Snoop Mode Mask */
#define XCANFD_SR_ESTAT_MASK	0x00000180  /**< Error Status Mask */
#define XCANFD_SR_ESTAT_SHIFT	7	    /**< Error Status Shift */
#define XCANFD_SR_ERRWRN_MASK	0x00000040  /**< Error Warning Mask */
#define XCANFD_SR_BBSY_MASK	0x00000020  /**< Bus Busy Mask */
#define XCANFD_SR_BIDLE_MASK	0x00000010  /**< Bus Idle Mask */
#define XCANFD_SR_NORMAL_MASK	0x00000008  /**< Normal Mode Mask */
#define XCANFD_SR_SLEEP_MASK	0x00000004  /**< Sleep Mode Mask */
#define XCANFD_SR_LBACK_MASK	0x00000002  /**< Loop Back Mode Mask */
#define XCANFD_SR_CONFIG_MASK	0x00000001  /**< Configuration Mode Mask */
#define XCANFD_SR_PEE_CONFIG_MASK 0x00000200 /**< Protocol Exception Mode
						  Indicator Mask */
#define XCANFD_SR_BSFR_CONFIG_MASK 0x00000400 /**< Bus-Off recovery Mode
						   Indicator Mask */
#define XCANFD_SR_NISO_MASK	0x00000800 /**< Non-ISO Core Mask */
/* @} */

#define TEST_BRPR_BAUD_PRESCALAR	2 //29   // 1Mbps
#define TEST_BTR_SYNCJUMPWIDTH		1 //3
#define TEST_BTR_SECOND_TIMESEGMENT	1 //2
#define TEST_BTR_FIRST_TIMESEGMENT	4 //15
#define TEST_FBRPR_BAUD_PRESCALAR	 2 // 29  // 1Mbps
#define TEST_FBTR_SYNCJUMPWIDTH		 1 // 3
#define TEST_FBTR_SECOND_TIMESEGMENT 1 // 2
#define TEST_FBTR_FIRST_TIMESEGMENT	 4 // 15
/** @name Bit Timing Register
 *  @{
 */
#if defined (CANFD_v1_0)
#define XCANFD_BTR_SJW_MASK	0x000F0000  /**< Sync Jump Width Mask */
#define XCANFD_BTR_TS2_MASK	0x00000F00  /**< Time Segment 2 Mask */
#define XCANFD_BTR_TS1_MASK	0x0000003F  /**< Time Segment 1 Mask */
#define XCANFD_F_BRPR_TDCMASK	0x00001F00	/**< Tranceiver Delay
                                        compensation Offset Mask */
#else
#define XCANFD_BTR_SJW_MASK	0x007F0000  /**< Sync Jump Width Mask */
#define XCANFD_BTR_TS2_MASK	0x00007F00  /**< Time Segment 2 Mask */
#define XCANFD_BTR_TS1_MASK	0x000000FF  /**< Time Segment 1 Mask */
#define XCANFD_F_BRPR_TDCMASK	0x00003F00	/**< Tranceiver Delay
						compensation Offset Mask */
#endif
#define XCANFD_BTR_TS2_SHIFT	8	    /**< Time Segment 2 Shift */
#define XCANFD_BTR_SJW_SHIFT	16	    /**< Sync Jump Width Shift */
#define XCANFD_F_BRPR_TDC_ENABLE_MASK	0x00010000	/**< Tranceiver Delay
							compensation Enable
							Maskk */
/* @} */
/** @name Fast Bit Timing Register
 *  @{
 */
#if defined (CANFD_v1_0)
#define XCANFD_F_BTR_SJW_MASK	0x00070000  /**< Sync Jump Width Mask */
#define XCANFD_F_BTR_TS2_MASK	0x00000700  /**< Time Segment 2 Mask */
#define XCANFD_F_BTR_TS1_MASK	0x0000000F  /**< Time Segment 1 Mask */
#else
#define XCANFD_F_BTR_SJW_MASK	0x000F0000  /**< Sync Jump Width Mask */
#define XCANFD_F_BTR_TS2_MASK	0x00000F00  /**< Time Segment 2 Mask */
#define XCANFD_F_BTR_TS1_MASK	0x0000001F  /**< Time Segment 1 Mask */
#endif
#define XCANFD_F_BTR_TS2_SHIFT	8	    /**< Time Segment 2 Shift */
#define XCANFD_F_BTR_SJW_SHIFT	16	    /**< Sync Jump Width Shift */
/* @} */


/** @name Acceptance Filter Mask Registers
 *  @{
 */
#if defined (CANFD_v1_0)
#define XCANFD_AFMR_BASE_OFFSET	0x1A00  /**<Acceptance Filter Mask Register */
#define XCANFD_AFIDR_BASE_OFFSET 0x1A04  /**< Acceptance Filter ID Register */
#else
#define XCANFD_AFMR_BASE_OFFSET	0x0A00  /**<Acceptance Filter Mask Register */
#define XCANFD_AFIDR_BASE_OFFSET 0x0A04  /**< Acceptance Filter ID Register */
#endif
#define XCANFD_AFMR_NXT_OFFSET	8

#define XCANFD_AFIDR_NXT_OFFSET	 8
#define XCANFD_AFR_OFFSET	0x0E0  /**< Acceptance Filter Register */
#define XCANFD_FSR_OFFSET	0x0E8  /**< Receive FIFO Status Register */
#define XCANFD_NOOF_AFR		32	/**< Number Of Acceptance FIlter
						Registers */
#define XCANFD_WIR_OFFSET	0x0EC  /**< Rx FIFO Water Mark Register */
#if defined (CANFD_v1_0)
#define XCANFD_WIR_MASK	0x0000001F  /**< Rx FIFO Full watermark Mask */
#define XCANFD_WM_FIFO0_THRESHOLD  31
#else
#define XCANFD_WIR_MASK	0x0000003F  /**< Rx FIFO Full watermark Mask */
#define XCANFD_WM_FIFO0_THRESHOLD  63
#endif
#define XCANFD_WMR_RXFWM_1_MASK 0x00003F00 /**< RX FIFO 1 Full Watermark
                                               Mask */
#define XCANFD_WMR_RXFWM_1_SHIFT 8 /**< RX FIFO 1 Full Watermark
                                               Mask */
#define XCANFD_WMR_RXFP_MASK 0x003F0000 /**< Receive filter partition
                                               Mask */
#define XCANFD_WMR_RXFP_SHIFT 16 /**< Receive filter partition
                                               Mask */
#define XCANFD_TXEVENT_WIR_OFFSET 0x000000A4
#define XCANFD_TXEVENT_WIR_MASK   0x0F
#define XCANFD_TIMESTAMPR_OFFSET	0x0028	/**< Time Stamp Register */
#define XCANFD_CTS_MASK		0x00000001 /**< Time Stamp Counter Clear */
#define XCANFD_DAR_MASK		0x00000010/**< Disable AutoRetransmission */
/* @} */

#define XCANFD_AFR_UAF_ALL_MASK	0xFFFFFFFF
#define XCANFD_BRPR_BRP_MASK	0x000000FF  /**< Baud Rate Prescaler Mask */

