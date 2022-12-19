#include "clu.h"
#include<string.h>

#define STATE_CAN           0
#define STATE_UART          1
#define STATE_LIN           2

static char mode_nr = 0;

void update_write_index(volatile unsigned char *ddr, unsigned int write_index) {
	// int size write index update to char ddr
	unsigned char write_index_array[4] = {0, 0, 0, 0};
	write_index_array[0] = (unsigned char)((write_index & 0xFF000000) >> 24);
	write_index_array[1] = (unsigned char)((write_index & 0x00FF0000) >> 16);
	write_index_array[2] = (unsigned char)((write_index & 0x0000FF00) >> 8);
	write_index_array[3] = (unsigned char)(write_index & 0xFF);
	memcpy(ddr + WRITE_INDEX_POS, write_index_array, 4);
//	*(ddr + WRITE_INDEX_POS) = (char)write_index;
//	*(ddr + WRITE_INDEX_POS + 1) = (char)(write_index & 0xFF);
}

void clu (volatile int *can_ptr, volatile int *uart_ptr, volatile int *lin_ptr,
		volatile unsigned int *can_0_received,
		volatile unsigned int *can_1_received,
		volatile unsigned int *can_2_received,
		volatile unsigned int *can_3_received,
		volatile unsigned int *can_4_received,
		volatile unsigned int *can_5_received,
		volatile unsigned int *can_6_received,
		volatile unsigned int *can_7_received,
		volatile unsigned int *can_8_received,
		volatile unsigned int *can_9_received,
		volatile unsigned int *can_10_received,
		volatile unsigned int *can_11_received,
		volatile unsigned int *droped,
		volatile unsigned int *received_can, volatile unsigned int *received_uart, volatile unsigned int *received_lin,
		int *can_en, char *uart_en, int *lin_en,
		volatile unsigned char *can_ddr, volatile unsigned char *uart_ddr, volatile unsigned char *lin_ddr,
		long long timestamp) {

	// timestamp register
#pragma HLS INTERFACE port=timestamp register
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=return

	// can port axi
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_ptr
#pragma HLS INTERFACE mode=m_axi bundle=clu_addr depth=1 port=can_ptr offset=slave
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_ddr
#pragma HLS INTERFACE mode=m_axi bundle=ps_ddr depth=10 port=can_ddr offset=slave
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_en
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=received_can

#pragma HLS INTERFACE s_axilite register port=can_0_received offset=0x58 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_1_received offset=0x60 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_2_received offset=0x68 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_3_received offset=0x70 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_4_received offset=0x78 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_5_received offset=0x80 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_6_received offset=0x88 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_7_received offset=0x90 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_8_received offset=0x98 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_9_received offset=0xa0 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_10_received offset=0x98 bundle=EN
#pragma HLS INTERFACE s_axilite register port=can_11_received offset=0xa0 bundle=EN
#pragma HLS INTERFACE s_axilite register port=droped offset=0xa8 bundle=EN

	// uart port axi
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=uart_ptr
#pragma HLS INTERFACE mode=m_axi bundle=clu_addr depth=1 port=uart_ptr offset=slave
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=uart_ddr
#pragma HLS INTERFACE mode=m_axi bundle=ps_ddr depth=10 port=uart_ddr offset=slave
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=uart_en
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=received_uart

	// lin port axi
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=lin_ptr
#pragma HLS INTERFACE mode=m_axi bundle=clu_addr depth=1 port=lin_ptr offset=slave
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=lin_ddr
#pragma HLS INTERFACE mode=m_axi bundle=ps_ddr depth=10 port=lin_ddr offset=slave
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=lin_en
#pragma HLS INTERFACE mode=s_axilite bundle=EN port=received_lin

    char dlin_res;
    switch (mode_nr) {
    case STATE_CAN:
    	can(can_ptr, can_en, can_ddr, timestamp,
    		can_0_received, can_1_received, can_2_received, can_3_received, can_4_received, can_5_received,
    		can_6_received, can_7_received, can_8_received, can_9_received, can_10_received, can_11_received,
    	    droped,received_can);
    	mode_nr = STATE_UART;
    	break;
    case STATE_UART:
    	uart(uart_ptr, uart_en, uart_ddr, timestamp, received_uart);
    	mode_nr = STATE_LIN;
    	break;
    case STATE_LIN:
    	dlin(lin_ptr, lin_en, lin_ddr, timestamp, received_lin);
    	mode_nr = STATE_CAN;
    	break;
    default:
    	break;
    }
}
