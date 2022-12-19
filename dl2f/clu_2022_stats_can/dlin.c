/*
 * LIN Module
 */
///////////////////  Header /////////////////

/************************** Constant Definitions *****************************/

/** @name Register Map
 *
 * Register offsets for the CHIPDLIN.
 * @{
 */
#include <stdio.h>
#include <string.h>
#include "clu.h"

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
// command log 0x3B
#define LIN_SLAVE_CMD_LOG   0x3B
#define DATA_STATE          1
#define CONTROL_STATE       0
#define DLIN_CMD_LOG     5
/* @} */
#define LIN_FRAME_LENGTH					(HEADER_LENGTH + LIN_RAWLOG_RESERVED_LENGTH)
#define LIN_ADDR_WIDTH             0x00001000
#define CLOCK_FREQ_HZ              100000000U
#define CHIPDLIN_DFT_BAUDRATE      19200U
#define FRAME_HEADER_LEN           4

typedef struct {
    long long timestamp;
    char      port_type;
	char      port_id;
	short     pkt_len_bytes;
}_linPacketHeader;

typedef struct {
	unsigned char  lid;
	unsigned char  llen;
    unsigned char  data[9];
}_linPacketData;

typedef struct {
	char run_state;
}_linControlStruct;
/*
 * LIN Module
 */
//
static _linControlStruct PLIN_Ctrl[MAX_LIN_NUMBER] = {
	{0}, {0}, {0}, {0}, {0}, {0}, {0}, {0}, {0}, {0}
};

static _linPacketData PL_Data = {
 	0, 0, {0}
};
static unsigned short dropped_lin_counter = 0;
static unsigned int internal_lin_counter = 0;

/* Mode=SLAVE, LIN13=0, SIZE=1110, CMD=RX Response */


void read_lin_reg(volatile unsigned int *lin_reg, char offset, unsigned char *data)
{
	*data = (unsigned int)*(lin_reg + (offset >> 2));
	return;
}

void write_lin_reg(volatile unsigned int *lin_reg, char offset, unsigned char data)
{
	*(lin_reg + (offset >> 2)) = data;
	return;
}

void write_lin_ddr(volatile unsigned char *ddr_header, volatile unsigned char *data)
{
	unsigned char ringbuffer_header_bytes[RINGBUFFER_HEADER_LEN];
//	unsigned char *ddr_header;
//	ddr_header = ddr - RINGBUFFER_HEADER_LEN;
	unsigned int readLinIndex, writeLinIndex, nextWriteLinIndex, max_lin_count;

	memcpy(ringbuffer_header_bytes, ddr_header, RINGBUFFER_HEADER_LEN);
	max_lin_count = (unsigned int)(ringbuffer_header_bytes[12] << 24) |
			(unsigned int)(ringbuffer_header_bytes[13] << 16) |
			(unsigned int)(ringbuffer_header_bytes[14] << 8) |
			(unsigned int)ringbuffer_header_bytes[15];
	readLinIndex = (unsigned int)(ringbuffer_header_bytes[20] << 24) |
			(unsigned int)(ringbuffer_header_bytes[21] << 16) |
			(unsigned int)(ringbuffer_header_bytes[22] << 8) |
			(unsigned int)ringbuffer_header_bytes[23];
	writeLinIndex = (unsigned int)(ringbuffer_header_bytes[24] << 24) |
			(unsigned int)(ringbuffer_header_bytes[25] << 16) |
			(unsigned int)(ringbuffer_header_bytes[26] << 8) |
			(unsigned int)ringbuffer_header_bytes[27];
	nextWriteLinIndex = (writeLinIndex + 1) % max_lin_count;

	if (nextWriteLinIndex == readLinIndex) {
		dropped_lin_counter++;
		*(ddr_header + 4) = dropped_lin_counter;
		return;
	}
	else {
		//	*(ddr+offset) = data;
		memcpy( ddr_header + RINGBUFFER_HEADER_LEN + writeLinIndex * LIN_FRAME_LENGTH,
				data,
				LIN_FRAME_LENGTH);
		update_write_index(ddr_header, nextWriteLinIndex);
	}

//	return;
}

void single_lin_process(volatile unsigned int *linbase,
		volatile unsigned char *ddr,
		long long timestamp,
		char EN,
		volatile unsigned int *received_lin){

  unsigned char reg_data;
  unsigned char reg_lid;
  unsigned char reg_status;
  unsigned char lin_frame[HEADER_LENGTH + LIN_RAWLOG_RESERVED_LENGTH] = {};

  if (PLIN_Ctrl[EN].run_state == CONTROL_STATE) {
	  // start
//	   read_lin_reg(linbase, CHIPDLIN_LID_OFFSET, &reg_lid);
	   // wait for LID
	   read_lin_reg(linbase, CHIPDLIN_LSR_OFFSET, &reg_status);
	   read_lin_reg(linbase, CHIPDLIN_LER_OFFSET, &reg_data);        // clear LER

	   if( (reg_status & 0x01) == 0x01 ) // if flag_lid=1
	   {
	 	   // get LID
	 		/* read LID */
	 	   read_lin_reg(linbase, CHIPDLIN_LID_OFFSET, &reg_lid);
	 	   PL_Data.lid = reg_lid & 0x3F;
	 	   /* clear LSEL */
	 	   write_lin_reg(linbase, CHIPDLIN_LSEL_OFFSET, 0);
	 	   /* send CMD_LOG */
	 	   write_lin_reg(linbase, CHIPDLIN_LCR_OFFSET, LIN_SLAVE_CMD_LOG);
	 	   // delay to read correct lsr
	 	  PLIN_Ctrl[EN].run_state = DATA_STATE;
	   } else  if( (reg_status & 0x04) != 0x0 ) return;// if flag_err

  } else {
	  //wait for ready
	   read_lin_reg(linbase, CHIPDLIN_LSR_OFFSET, &reg_status);
	   if( (reg_status & 0x0E) != 0 ) // if flag_rdy, flag_err, flag_abort
	   {
		  read_lin_reg(linbase, CHIPDLIN_LER_OFFSET, &reg_data);    // clear LER
		  if( (reg_status & 0x0C) == 0 ) // if no flag_err, flag_abort
		  {
			//get data
			 /* get data size */
			 unsigned char data_size;
			 PL_Data.llen = (reg_status >> 4) & 0x0F;

			 /* read buffer */
			 write_lin_reg(linbase, CHIPDLIN_LSEL_OFFSET, 0x80); //set auto inc buffer
			 for(int i = 0; i < (PL_Data.llen + 1); i++)
			 {
				read_lin_reg(linbase, CHIPDLIN_LBUF_OFFSET, &reg_data);
				lin_frame[16 + i] = reg_data;
			 }

			 lin_frame[0] = (unsigned char)((timestamp >> 56) & 0xFF);
			 lin_frame[1] = (unsigned char)((timestamp >> 48) & 0xFF);
			 lin_frame[2] = (unsigned char)((timestamp >> 40) & 0xFF);
			 lin_frame[3] = (unsigned char)((timestamp >> 32) & 0xFF);
			 lin_frame[4] = (unsigned char)((timestamp >> 24) & 0xFF);
			 lin_frame[5] = (unsigned char)((timestamp >> 16) & 0xFF);
			 lin_frame[6] = (unsigned char)((timestamp >> 8) & 0xFF);
			 lin_frame[7] = (unsigned char)((timestamp) & 0xFF);
			 lin_frame[8] = (unsigned char)((INTERFACE_TYPE_LIN) & 0xFF);
			 lin_frame[9] = (unsigned char)((EN) & 0xFF);
			 lin_frame[10] = (unsigned char)(((PL_Data.llen + FRAME_HEADER_LEN) >> 8) & 0xFF);
			 lin_frame[11] = (unsigned char)((PL_Data.llen + FRAME_HEADER_LEN) & 0xFF);

			 lin_frame[12] = (unsigned char)((PL_Data.lid >> 8) & 0xFF);
			 lin_frame[13] = (unsigned char)(PL_Data.lid & 0xFF);
			 lin_frame[14] = (unsigned char)((PL_Data.llen >> 8) & 0xFF);
			 lin_frame[15] = (unsigned char)((PL_Data.llen) & 0xFF);
		   // memcpy
			 internal_lin_counter++;
			 *received_lin = internal_lin_counter;
			 write_lin_ddr(ddr, &lin_frame[0]);
			 PLIN_Ctrl[EN].run_state = CONTROL_STATE;
		 } // if flag_error
	 }// if lsr_reg
  }
}

void dlin_FSM(volatile unsigned int *linbase,
		volatile unsigned char *ddr,
		int *enable_device,
		int EN,
		long long timestamp,
		volatile unsigned int *received_lin) {
	if (*enable_device & (0x01 << EN)) {
		volatile unsigned int *linbase_mod;
		linbase_mod =  linbase + ((EN * LIN_ADDR_WIDTH) >> 2);
		single_lin_process(linbase_mod, ddr, timestamp, EN, received_lin);
//		if (DLIN_status == DLIN_ERROR || DLIN_status == DLIN_FINISHED) lin_number += 1 ;   // go to next state
//		else if (DLIN_status == DLIN_RUNING) lin_number += 0;    // return to current state
	}
}
//
//void dlin_init_format(volatile unsigned int *linbase, int *enable_device, int EN) {
//	if (*enable_device & (0x01 << EN)) {
//		volatile unsigned int *linbase_mod;
//		linbase_mod =  linbase + ((EN * LIN_ADDR_WIDTH) >> 2);
//		/*
//		 * Initialize the instance data to some default values
//		 */
//		write_lin_reg(linbase_mod, CHIPDLIN_LID_OFFSET, 0);
//		/*
//		 * Set the default Baud rate here, can be changed prior to
//		 * starting the device
//		 */
//		unsigned int tmp = CLOCK_FREQ_HZ/(16*CHIPDLIN_DFT_BAUDRATE);
//		write_lin_reg(linbase_mod, CHIPDLIN_DLL_OFFSET, char(tmp & 0xFF));
//		write_lin_reg(linbase_mod, CHIPDLIN_DLH_OFFSET, char((tmp & 0x7FFF) >> 8));
//		PL_Ctrl[EN].init_finished = 1;
//	} else {
//		PL_Ctrl[EN].init_finished = 1;
//	}
//	if (PL_Ctrl[0].init_finished & PL_Ctrl[0].init_finished & PL_Ctrl[0].init_finished & PL_Ctrl[0].init_finished & PL_Ctrl[0].init_finished
//			 & PL_Ctrl[0].init_finished & PL_Ctrl[0].init_finished & PL_Ctrl[0].init_finished & PL_Ctrl[0].init_finished & PL_Ctrl[0].init_finished) {
//		lin_number += 1;
//	}
//}

void dlin(volatile int *linbase,
		int *enable_device,
		volatile unsigned char *ddr,
		long long timestamp,
		volatile unsigned int *received_lin) {
//	unsigned char *ddr_data;
//	ddr_data = ddr + RINGBUFFER_HEADER_LEN;
	for (int lin_nr = 0; lin_nr < MAX_LIN_NUMBER; lin_nr++) dlin_FSM(linbase, ddr, enable_device, lin_nr, timestamp, received_lin);
}




