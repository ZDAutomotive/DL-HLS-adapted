#include "clu.h"

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
		volatile unsigned int *received_can, volatile unsigned int *received_uart, volatile unsigned int *received_lin,
		int *can_en, char *uart_en, int *lin_en,
		volatile unsigned char *can_ddr, volatile unsigned char *uart_ddr, volatile unsigned char *lin_ddr,
		long long timestamp) {
	// timestamp register
#pragma HLS INTERFACE register port=timestamp
#pragma HLS INTERFACE s_axilite port=return bundle=EN
	// can port axi
#pragma HLS INTERFACE m_axi depth=10 port=can_ddr offset=slave bundle=ps_ddr
#pragma HLS INTERFACE m_axi depth=1 port=can_ptr offset=slave bundle=can_addr
#pragma HLS INTERFACE s_axilite depth=1 port=can_en bundle=EN
#pragma HLS INTERFACE s_axilite depth=1 port=received_can bundle=EN
	// uart port axi
#pragma HLS INTERFACE m_axi depth=10 port=uart_ddr offset=slave bundle=ps_ddr
#pragma HLS INTERFACE m_axi depth=1 port=uart_ptr offset=slave bundle=uart_addr
#pragma HLS INTERFACE s_axilite port=uart_en bundle=EN
#pragma HLS INTERFACE s_axilite depth=1 port=received_uart bundle=EN
	// lin port axi
#pragma HLS INTERFACE m_axi depth=10 port=lin_ddr offset=slave bundle=ps_ddr
#pragma HLS INTERFACE m_axi depth=1 port=lin_ptr offset=slave bundle=lin_addr
#pragma HLS INTERFACE s_axilite port=lin_en bundle=EN
#pragma HLS INTERFACE s_axilite depth=1 port=received_lin bundle=EN

    char dlin_res;
    switch (mode_nr) {
    case STATE_CAN:
    	can(can_ptr, can_en, can_ddr, timestamp, received_can);
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
