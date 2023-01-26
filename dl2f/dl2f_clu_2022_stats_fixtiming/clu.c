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
		volatile unsigned int *can_dropped,
		volatile unsigned int *received_can, volatile unsigned int *received_uart,
		volatile unsigned int *lin_0_received,
		volatile unsigned int *lin_1_received,
		volatile unsigned int *lin_2_received,
		volatile unsigned int *lin_3_received,
		volatile unsigned int *lin_4_received,
		volatile unsigned int *lin_5_received,
		volatile unsigned int *lin_6_received,
		volatile unsigned int *lin_7_received,
		volatile unsigned int *lin_8_received,
		volatile unsigned int *lin_9_received,
		volatile unsigned int *lin_dropped,
		volatile unsigned int *received_lin,
		int *can_en, char *uart_en, int *lin_en,
		volatile unsigned char *can_ddr, volatile unsigned char *uart_ddr, volatile unsigned char *lin_ddr,
		long long timestamp) {

	// timestamp register
	#pragma HLS INTERFACE port=timestamp register
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=return

		// can port axi
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_ptr
	#pragma HLS INTERFACE mode=m_axi bundle=can_addr depth=1 port=can_ptr offset=slave
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_ddr offset=0x58
	#pragma HLS INTERFACE mode=m_axi bundle=ps_ddr depth=10 port=can_ddr offset=slave
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_en offset=0x40
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=received_can offset=0x28

	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_0_received offset=0x70
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_1_received offset=0x78
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_2_received offset=0x80
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_3_received offset=0x88
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=can_dropped offset=0x90





		// uart port axi
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=uart_ptr
	#pragma HLS INTERFACE mode=m_axi bundle=uart_addr depth=1 port=uart_ptr offset=slave
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=uart_ddr offset=0x60
	#pragma HLS INTERFACE mode=m_axi bundle=ps_ddr depth=10 port=uart_ddr offset=slave
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=uart_en offset=0x48
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=received_uart offset=0x30

		// lin port axi
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=lin_ptr
	#pragma HLS INTERFACE mode=m_axi bundle=lin_addr depth=1 port=lin_ptr offset=slave
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=lin_ddr offset=0x68
	#pragma HLS INTERFACE mode=m_axi bundle=ps_ddr depth=10 port=lin_ddr offset=slave
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=lin_en offset=0x50
	#pragma HLS INTERFACE mode=s_axilite bundle=EN port=received_lin offset=0x38


#pragma HLS INTERFACE s_axilite register port=lin_0_received bundle=EN offset=0x98
#pragma HLS INTERFACE s_axilite register port=lin_1_received bundle=EN offset=0xa0
#pragma HLS INTERFACE s_axilite register port=lin_2_received bundle=EN offset=0xa8
#pragma HLS INTERFACE s_axilite register port=lin_3_received bundle=EN offset=0xb0
#pragma HLS INTERFACE s_axilite register port=lin_4_received bundle=EN offset=0xb8
#pragma HLS INTERFACE s_axilite register port=lin_5_received bundle=EN offset=0xc0
#pragma HLS INTERFACE s_axilite register port=lin_6_received bundle=EN offset=0xc8
#pragma HLS INTERFACE s_axilite register port=lin_7_received bundle=EN offset=0xd0
#pragma HLS INTERFACE s_axilite register port=lin_8_received bundle=EN offset=0xd8
#pragma HLS INTERFACE s_axilite register port=lin_9_received bundle=EN offset=0xe0
#pragma HLS INTERFACE s_axilite register port=lin_dropped bundle=EN offset=0xe8

    char dlin_res;
    switch (mode_nr) {
    case STATE_CAN:
    	can(can_ptr, can_en, can_ddr, timestamp,
    		can_0_received, can_1_received, can_2_received, can_3_received, can_dropped,received_can);
    	mode_nr = STATE_UART;
    	break;
    case STATE_UART:
    	//uart(uart_ptr, uart_en, uart_ddr, timestamp, received_uart);
    	mode_nr = STATE_LIN;
    	break;
    case STATE_LIN:
    	dlin(lin_ptr, lin_en, lin_ddr, timestamp, lin_0_received,lin_1_received,lin_2_received,
    			lin_3_received,lin_4_received,lin_5_received,lin_6_received,lin_7_received,
    			lin_8_received,lin_9_received,lin_dropped,received_lin);
    	mode_nr = STATE_CAN;
    	break;
    default:
    	break;
    }
}
