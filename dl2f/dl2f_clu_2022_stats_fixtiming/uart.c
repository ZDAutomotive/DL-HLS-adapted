
#include <stdio.h>
#include <string.h>
#include "clu.h"
// int i = 0;

#define XUN_FIFO_ENABLE		0x00000001 /**< Enable the FIFOs */
#define XUN_FIFO_RX_TRIG_MSB	0x00000080 /**< Trigger level MSB */

#define XUN_REG_OFFSET 0x1000

/** @name Register Map
 *
 * Register offsets for the 16450/16550 compatible UART device.
 * @{
 */
#define XUN_RBR_OFFSET	(XUN_REG_OFFSET) /**< Receive buffer, read only */
#define XUN_THR_OFFSET	(XUN_REG_OFFSET) /**< Transmit holding register */
#define XUN_IER_OFFSET	(XUN_REG_OFFSET + 0x04) /**< Interrupt enable */
#define XUN_IIR_OFFSET	(XUN_REG_OFFSET + 0x08) /**< Interrupt id, read only */
#define XUN_FCR_OFFSET	(XUN_REG_OFFSET + 0x08) /**< Fifo control, write only */
#define XUN_LCR_OFFSET	(XUN_REG_OFFSET + 0x0C) /**< Line Control Register */
#define XUN_MCR_OFFSET	(XUN_REG_OFFSET + 0x10) /**< Modem Control Register */
#define XUN_LSR_OFFSET	(XUN_REG_OFFSET + 0x14) /**< Line Status Register */
#define XUN_MSR_OFFSET	(XUN_REG_OFFSET + 0x18) /**< Modem Status Register */
#define XUN_DRLS_OFFSET	(XUN_REG_OFFSET + 0x00) /**< Divisor Register LSB */
#define XUN_DRLM_OFFSET	(XUN_REG_OFFSET + 0x04) /**< Divisor Register MSB */

#define XUN_LCR_DLAB		0x00000080 /**< Divisor latch access */

#define XUN_LCR_LENGTH_MASK	0x00000003 /**< Both length bits mask */
#define XUN_LCR_PARITY_MASK	0x00000018 /**< Both parity bits mask */

#define UART_FRAME_LENGTH					(HEADER_LENGTH + UART_RAWLOG_RESERVED_LENGTH)

static char init_stage[MAX_UART_NUMBER] = {0};
static char uart_fifo[MAX_UART_NUMBER][UART_FRAME_LENGTH];
// 12 bytes header struct
typedef struct {
	long long timestamp;
	char      port_type;
	char      port_id;
	short       pkt_len_bytes;
}_uartPacketHeader;

typedef struct {
	long long first_timestamp;
	int fifo_index;
	char first_time;
	char init_finished;
}_uartControlStruct;
static unsigned short dropped_uart_counter = 0;
static unsigned int internal_uart_counter = 0;

static _uartPacketHeader PL_Header[MAX_UART_NUMBER] = {
		{0L, INTERFACE_TYPE_UART, 0, 0}, {0L, INTERFACE_TYPE_UART, 0, 0}, {0L,INTERFACE_TYPE_UART, 0, 0},
		{0L,INTERFACE_TYPE_UART, 0, 0}, {0L,INTERFACE_TYPE_UART, 0, 0}, {0L,INTERFACE_TYPE_UART, 0, 0},
		{0L,INTERFACE_TYPE_UART, 0, 0}, {0L,INTERFACE_TYPE_UART, 0, 0}
};

static _uartControlStruct PL_Ctrl[MAX_UART_NUMBER] = {
		{0L, HEADER_LENGTH, 1, 0}, {0L, HEADER_LENGTH, 1, 0}, {0L, HEADER_LENGTH, 1, 0},
		{0L, HEADER_LENGTH, 1, 0}, {0L, HEADER_LENGTH, 1, 0}, {0L, HEADER_LENGTH, 1, 0},
		{0L, HEADER_LENGTH, 1, 0}, {0L, HEADER_LENGTH, 1, 0}
};
int uart_init(volatile int *uart_baseaddr, char *debug, char EN) {

	int BaudRate;
	int Divisor;
	int lcrReg;
	int BaudMSB;
	int BaudLSB;
	// init baud rate
	BaudRate = 115200;
	Divisor = ((100000000U +((BaudRate * 16UL)/2)) /
			(BaudRate * 16UL));
	BaudLSB = Divisor & 0xFF;
	BaudMSB = (Divisor >> 8) & 0xFF;

	switch(init_stage[EN]) {
	// enable FIFO
	case 0:
		*(uart_baseaddr + XUN_FCR_OFFSET/4) = XUN_FIFO_ENABLE;
		*debug = *(uart_baseaddr + XUN_FCR_OFFSET/4);
		break;
	case 1:
		*(uart_baseaddr + XUN_FCR_OFFSET/4) = XUN_FIFO_ENABLE | XUN_FIFO_RX_TRIG_MSB;
		*debug = *(uart_baseaddr + XUN_FCR_OFFSET/4);
		break;
	case 2:
		lcrReg = *(uart_baseaddr + XUN_LCR_OFFSET/4);
		*(uart_baseaddr + XUN_LCR_OFFSET/4) = lcrReg | XUN_LCR_DLAB;
		*debug = *(uart_baseaddr + XUN_LCR_OFFSET/4);
		break;
	case 3:
		*(uart_baseaddr + XUN_DRLS_OFFSET/4) = 0xFF;
		*debug = *(uart_baseaddr + XUN_LCR_OFFSET/4);
		break;
	case 4:
		*(uart_baseaddr + XUN_DRLM_OFFSET/4) = BaudMSB;
		*debug = *(uart_baseaddr + XUN_DRLM_OFFSET/4);
		break;
	case 5:
		*(uart_baseaddr + XUN_DRLS_OFFSET/4) = BaudLSB;
		*debug = *(uart_baseaddr + XUN_DRLS_OFFSET/4);
		break;
	case 6:
		*(uart_baseaddr + XUN_LCR_OFFSET/4) = lcrReg;
		*debug = *(uart_baseaddr + XUN_LCR_OFFSET/4);
		break;
	case 7:
		lcrReg = *(uart_baseaddr + XUN_LCR_OFFSET/4);
		lcrReg &= ~XUN_LCR_LENGTH_MASK;
		lcrReg |= 3;
		lcrReg |= 1;
		lcrReg &= ~XUN_LCR_PARITY_MASK;
		*(uart_baseaddr + XUN_LCR_OFFSET/4) = lcrReg;
		*debug = *(uart_baseaddr + XUN_LCR_OFFSET/4);
		break;
	default:
		break;
	}

	return init_stage[EN]++;
}
void ddr_write(volatile unsigned char *ddr_header, char device_id) {
//	unsigned char *ddr_header;
//	ddr_header = ddr - RINGBUFFER_HEADER_LEN;
	unsigned char ringbuffer_header_bytes[RINGBUFFER_HEADER_LEN];
	unsigned int readUartIndex, writeUartIndex, nextWriteUartIndex, uart_ddrIndex, max_uart_count;

	memcpy(ringbuffer_header_bytes, ddr_header, RINGBUFFER_HEADER_LEN);
	max_uart_count = (unsigned int)(ringbuffer_header_bytes[12] << 24) |
			(unsigned int)(ringbuffer_header_bytes[13] << 16) |
			(unsigned int)(ringbuffer_header_bytes[14] << 8) |
			(unsigned int)ringbuffer_header_bytes[15];
	readUartIndex = (unsigned int)(ringbuffer_header_bytes[20] << 24) |
			(unsigned int)(ringbuffer_header_bytes[21] << 16) |
			(unsigned int)(ringbuffer_header_bytes[22] << 8) |
			(unsigned int)ringbuffer_header_bytes[23];
	writeUartIndex = (unsigned int)(ringbuffer_header_bytes[24] << 24) |
			(unsigned int)(ringbuffer_header_bytes[25] << 16) |
			(unsigned int)(ringbuffer_header_bytes[26] << 8) |
			(unsigned int)ringbuffer_header_bytes[27];
	nextWriteUartIndex = (writeUartIndex + 1) % max_uart_count;

	if (nextWriteUartIndex == readUartIndex) {
		dropped_uart_counter++;
		*(ddr_header + 4) = dropped_uart_counter;
		return;
	}
	else {
		//	*(ddr+offset) = data;
		memcpy(ddr_header + RINGBUFFER_HEADER_LEN + writeUartIndex * UART_FRAME_LENGTH,
			   uart_fifo[device_id],
			   UART_FRAME_LENGTH);
		update_write_index(ddr_header, nextWriteUartIndex);
	}
	// reset pl control struct
	PL_Ctrl[device_id].fifo_index = HEADER_LENGTH;    // reset data to bit 12
	PL_Header[device_id].pkt_len_bytes = 0;
	PL_Ctrl[device_id].first_time = 1;
	PL_Ctrl[device_id].first_timestamp = 0;
}
void uart_data_read (volatile unsigned char* ddr,
		volatile int *uartbase,
		long long ts_in,
		char *init_device,
		char EN,
		volatile unsigned int *received_uart) {
	char enable = 0x01 << EN;
	char device_id = EN;
	if (*init_device & enable) {
		volatile int *uartbase_delta;
		uartbase_delta =  uartbase + ((EN * 0x00010000) >> 2);
		int LSRREG = *(uartbase_delta + XUN_LSR_OFFSET/4);
		if((LSRREG & 0x10) || (LSRREG & 0x1)) {
			// Timestamp
			int single_index = PL_Ctrl[device_id].fifo_index;

			PL_Header[device_id].timestamp = ts_in;
			PL_Header[device_id].port_type = INTERFACE_TYPE_UART;
			PL_Header[device_id].port_id = device_id;

			if (PL_Ctrl[device_id].first_time) {
				PL_Ctrl[device_id].first_timestamp = ts_in;
				PL_Ctrl[device_id].first_time = 0;
				uart_fifo[device_id][0] = (unsigned char) ((PL_Header[device_id].timestamp >> 56) & 0xFF);
				uart_fifo[device_id][1] = (unsigned char) ((PL_Header[device_id].timestamp >> 48) & 0xFF);
				uart_fifo[device_id][2] = (unsigned char) ((PL_Header[device_id].timestamp >> 40) & 0xFF);
				uart_fifo[device_id][3] = (unsigned char) ((PL_Header[device_id].timestamp >> 32) & 0xFF);
				uart_fifo[device_id][4] = (unsigned char) ((PL_Header[device_id].timestamp >> 24) & 0xFF);
				uart_fifo[device_id][5] = (unsigned char) ((PL_Header[device_id].timestamp >> 16) & 0xFF);
				uart_fifo[device_id][6] = (unsigned char) ((PL_Header[device_id].timestamp >> 8) & 0xFF);
				uart_fifo[device_id][7] = (unsigned char) ((PL_Header[device_id].timestamp) & 0xFF);
				uart_fifo[device_id][8] = (unsigned char) ((PL_Header[device_id].port_type) & 0xFF);
				uart_fifo[device_id][9] = (unsigned char) ((PL_Header[device_id].port_id) & 0xFF);
			}

			char rxData = (char) *(uartbase_delta + XUN_REG_OFFSET);

			// UART Data
			uart_fifo[device_id][single_index] = rxData;
			PL_Ctrl[device_id].fifo_index = single_index + 1;
			PL_Header[device_id].pkt_len_bytes += 1;
			uart_fifo[device_id][10] = (unsigned char) ((PL_Header[device_id].pkt_len_bytes >> 8) & 0xFF);
			uart_fifo[device_id][11] = (unsigned char) ((PL_Header[device_id].pkt_len_bytes) & 0xFF);
		}
		long long time_delta = (PL_Ctrl[device_id].first_timestamp == 0) ? 0 : (ts_in - PL_Ctrl[device_id].first_timestamp);
		if ((PL_Ctrl[device_id].fifo_index == UART_FRAME_LENGTH) || (time_delta > 1000000)) {
			internal_uart_counter++;
			*received_uart = internal_uart_counter;
			ddr_write(ddr, device_id);
		}
	}

}

//void uart_init_fsm (volatile int *uartbase, char *debug, char *init_device, char EN) {
//	if (*init_device & (0x01 << EN)) {
//		int status1;
//		int *uartbase_delta;
//		uartbase_delta =  uartbase + ((EN * 0x00010000) >> 2);
//		status1 = uart_init(uartbase_delta, debug, EN);
//		PL_Ctrl[EN].init_finished = (status1 == 7) ? 1 : 0;
//	} else {
//		PL_Ctrl[EN].init_finished = 1;
//	}
//	if (PL_Ctrl[0].init_finished && PL_Ctrl[1].init_finished && PL_Ctrl[2].init_finished && PL_Ctrl[3].init_finished && PL_Ctrl[4].init_finished) {
//		uart_status = 1;
//	}
//}

void uart(volatile int *uartbase,
		char *init_device,
		volatile unsigned char *ddr,
		long long ts_in,
		volatile unsigned int *received_uart){
	// sync the base timestamp from ps
	for (int uart_i = 0; uart_i < MAX_UART_NUMBER; uart_i++) uart_data_read (ddr, uartbase, ts_in, init_device, uart_i, received_uart);
}


