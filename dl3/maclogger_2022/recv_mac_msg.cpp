#include "mac_logger.h"
#ifdef OLD
/******************************************************************************
*
* Created on: 02.Sep.2019
*		Author: Chao Su
*
******************************************************************************/
/*****************************************************************************/
/**
*	A simple fifo recv logic.
*
******************************************************************************/


#include <stdio.h>
#include <string.h>
#include <ap_int.h>

/** @name Registers
 *  @{
 */


// interface/port types
#define INTERFACE_TYPE_ETHERNET					1
#define INTERFACE_TYPE_CAN						2
#define INTERFACE_TYPE_LIN						3
#define INTERFACE_TYPE_UART						4
#define INTERFACE_TYPE_FLEXRAY					5
#define ETHERNET_RAWLOG_RESERVED_LENGTH			2048
#define CAN_RAWLOG_RESERVED_LENGTH				64
#define LIN_RAWLOG_RESERVED_LENGTH				16
#define UART_RAWLOG_RESERVED_LENGTH				16
#define FLEXRAY_RAWLOG_RESERVED_LENGTH			512


#define ETHERNET_FRAME_LENGTH					(12 + ETHERNET_RAWLOG_RESERVED_LENGTH)

//typedef struct {
//	ap_uint<32> magic_number;
//	ap_uint<32> pl_status;
//	ap_uint<32> ps_status;
//	ap_uint<32> count;
//	ap_uint<32> frame_len;
//	ap_uint<32> read_index;
//	ap_uint<32> write_index;
//} Ringbuffer_Header_T;


#define OFFSET_MAGIC_NUMBER_IN_HEADER			0 //offsetof(Ringbuffer_Header_T, magic_number)
#define OFFSET_PL_STATUS_IN_HEADER				4 //offsetof(Ringbuffer_Header_T, pl_status)
#define OFFSET_PS_STATUS_IN_HEADER				8 //offsetof(Ringbuffer_Header_T, ps_status)
#define OFFSET_COUNT_IN_HEADER					12 //offsetof(Ringbuffer_Header_T, count)
#define OFFSET_FRAME_LENGTH_IN_HEADER			16 //offsetof(Ringbuffer_Header_T, frame_len)
#define OFFSET_READ_INDEX_IN_HEADER				20 //offsetof(Ringbuffer_Header_T, read_index)
#define OFFSET_WRITE_INDEX_IN_HEADER			24 //offsetof(Ringbuffer_Header_T, write_index)
#define OFFSET_MAGIC_NUMBER_IN_HEADER			0 //offsetof(Ringbuffer_Header_T, magic_number)
#define OFFSET_PL_STATUS_IN_HEADER				4 //offsetof(Ringbuffer_Header_T, pl_status)
#define OFFSET_PS_STATUS_IN_HEADER				8 //offsetof(Ringbuffer_Header_T, ps_status)
#define OFFSET_COUNT_IN_HEADER					12 //offsetof(Ringbuffer_Header_T, count)
#define OFFSET_FRAME_LENGTH_IN_HEADER			16 //offsetof(Ringbuffer_Header_T, frame_len)
#define OFFSET_READ_INDEX_IN_HEADER				20 //offsetof(Ringbuffer_Header_T, read_index)
#define OFFSET_WRITE_INDEX_IN_HEADER			24 //offsetof(Ringbuffer_Header_T, write_index)
#define RINGBUFFER_HEADER_OFFSET 				28

//static enum RINGBUFFER_OFFSET {RINGBUFFER_MAGIC_NUMBER_MSB_OFFSET = 0,
//	RINGBUFFER_MAGIC_NUMBER_LSB_OFFSET,
//	RINGBUFFER_PL_STATUS_OFFSET,
//	RINGBUFFER_PS_STATUS_OFFSET,
//	RINGBUFFER_COUNT_MSB_OFFSET,
//	RINGBUFFER_COUNT_LSB_OFFSET,
//	RINGBUFFER_FRAME_LENGTH_MSB_OFFSET,
//	RINGBUFFER_FRAME_LENGTH_LSB_OFFSET,
//	RINGBUFFER_READ_MSB_OFFSET,
//	RINGBUFFER_READ_LSB_OFFSET,
//	RINGBUFFER_WRITE_MSB_OFFSET,
//	RINGBUFFER_WRITE_LSB_OFFSET,
//};

#define WORD_SIZE 4



// 12 bytes
struct ethPacketHeader {
	ap_uint<64> timestamp;
	ap_uint<8> port_type;
	ap_uint<8> port_id;
	ap_uint<16> pkt_len_bytes;
};



int update_ringbuffer_data(bool isGet, volatile unsigned char *ddr,
		volatile unsigned char *pkt_header, int pkt_header_len,
		volatile unsigned char *pkt_data, int pkt_data_len) {
// #pragma HLS PIPELINE
	unsigned char ringbuffer_header_bytes[28];
	 ap_uint<32> counter;
	 ap_uint<32> magic_number;
	 ap_uint<32> pl_status;
	 ap_uint<32> ps_status;
	 ap_uint<32> reserved_frame_len;
	 ap_uint<32> writeIndex;
	 ap_uint<32> readIndex;
	 ap_uint<32> nextWriteIndex;

	memcpy(ringbuffer_header_bytes, (unsigned char*)ddr, sizeof(ringbuffer_header_bytes));
			// check if ring buffer is full

//	magic_number = (ringbuffer_header_bytes[0] << 24) | (ringbuffer_header_bytes[1] << 16)
//					| (ringbuffer_header_bytes[2] << 8) | (ringbuffer_header_bytes[3]);
//	pl_status = (ringbuffer_header_bytes[4] << 24) | (ringbuffer_header_bytes[5] << 16)
//					| (ringbuffer_header_bytes[6] << 8) | (ringbuffer_header_bytes[7]);
//	ps_status = (ringbuffer_header_bytes[8] << 24) | (ringbuffer_header_bytes[9] << 16)
//					| (ringbuffer_header_bytes[10] << 8) | (ringbuffer_header_bytes[11]);
	counter = (ringbuffer_header_bytes[12] << 24) | (ringbuffer_header_bytes[13] << 16)
					| (ringbuffer_header_bytes[14] << 8) | (ringbuffer_header_bytes[15]);
	reserved_frame_len = (ringbuffer_header_bytes[16] << 24) | (ringbuffer_header_bytes[17] << 16)
					| (ringbuffer_header_bytes[18] << 8) | (ringbuffer_header_bytes[19]);
	readIndex = (ringbuffer_header_bytes[20] << 24) | (ringbuffer_header_bytes[21] << 16)
					| (ringbuffer_header_bytes[22] << 8) | (ringbuffer_header_bytes[23]);
	writeIndex = (ringbuffer_header_bytes[24] << 24) | (ringbuffer_header_bytes[25] << 16)
					| (ringbuffer_header_bytes[26] << 8) | (ringbuffer_header_bytes[27]);
	nextWriteIndex = (writeIndex + 1) % counter;
	if(isGet) {
		if(readIndex == nextWriteIndex) return 3;
		else return 1;
	}

	memcpy((unsigned char *)(ddr + RINGBUFFER_HEADER_OFFSET + writeIndex*reserved_frame_len),
			(unsigned char *) pkt_header,
			pkt_header_len);
	memcpy((unsigned char *)(ddr + RINGBUFFER_HEADER_OFFSET + writeIndex*reserved_frame_len + pkt_header_len),
			(unsigned char *)pkt_data,
			pkt_data_len);


	// update write ptr for logger ring buffer
	unsigned char write_index_bytes[4] = {0};
	write_index_bytes[0] = (unsigned char) ((nextWriteIndex >> 24) & 0xFF);
	write_index_bytes[1] = (unsigned char) ((nextWriteIndex >> 16) & 0xFF);
	write_index_bytes[2] = (unsigned char) ((nextWriteIndex >> 8) & 0xFF);
	write_index_bytes[3] = (unsigned char) ((nextWriteIndex >> 0) & 0xFF);

	memcpy((unsigned char *)(ddr + OFFSET_WRITE_INDEX_IN_HEADER),
			write_index_bytes,
			sizeof(write_index_bytes));
	return nextWriteIndex;
}
//
//void performance_test(volatile unsigned char *ddr, volatile int *fifo_axilite, volatile unsigned char *driver_ddr, int *status, unsigned short *writeStatus,
//		long long timestamp,
//		volatile unsigned int *logger_vlan_enable_mask,
//		unsigned int *vlan100_received,
//		unsigned int *vlan101_received,
//		unsigned int *vlan102_received,
//		unsigned int *vlan103_received,
//		unsigned int *vlan104_received,
//		unsigned int *vlan105_received,
//		unsigned int *vlan106_received,
//		unsigned int *vlan107_received,
//		unsigned int *vlan108_received,
//		unsigned int *vlan109_received,
//		unsigned int *droped,
//		unsigned int *multicast_recv_enable,
//		unsigned int *unicast_filter_enable,
//		unsigned int *unicast_vlan100_macaddr_lsb,
//		unsigned int *unicast_vlan100_macaddr_msb,
//		unsigned int *unicast_vlan101_macaddr_lsb,
//		unsigned int *unicast_vlan101_macaddr_msb,
//		unsigned int *unicast_vlan102_macaddr_lsb,
//		unsigned int *unicast_vlan102_macaddr_msb,
//		unsigned int *unicast_vlan103_macaddr_lsb,
//		unsigned int *unicast_vlan103_macaddr_msb,
//		unsigned int *unicast_vlan104_macaddr_lsb,
//		unsigned int *unicast_vlan104_macaddr_msb,
//		unsigned int *unicast_vlan105_macaddr_lsb,
//		unsigned int *unicast_vlan105_macaddr_msb,
//		unsigned int *unicast_vlan106_macaddr_lsb,
//		unsigned int *unicast_vlan106_macaddr_msb,
//		unsigned int *unicast_vlan107_macaddr_lsb,
//		unsigned int *unicast_vlan107_macaddr_msb,
//		unsigned int *unicast_vlan108_macaddr_lsb,
//		unsigned int *unicast_vlan108_macaddr_msb,
//		unsigned int *unicast_vlan109_macaddr_lsb,
//		unsigned int *unicast_vlan109_macaddr_msb
//		){
//// #pragma HLS PIPELINE II=1
//	static enum State {Start = 0, Stop, Finished} state;
//	static int i = 0;
////#pragma HLS reset variable=i
//
//switch(state) {
//case Start:
//	*vlan106_received = timestamp >> 32;
//	*vlan107_received = timestamp & 0xFFFFFFFF;
//	*vlan105_received = 0;
//	int rxWord;
//	performance_test_label0:for(i = 0; i < 160; i++) {
//#pragma HLS LOOP_TRIPCOUNT min=160 max=160 avg=160
//		rxWord = * (fifo_axilite + XLLF_AXI4_RDFD_OFFSET/4);
//		// rxData(fifo_axilite + XLLF_AXI4_RDFD_OFFSET/4 + i);
//	}
//	state = Stop;
//	*vlan105_received = i;
//	break;
//case Stop:
//	*vlan108_received = timestamp >> 32;
//	*vlan109_received = timestamp & 0xFFFFFFFF;
//	state = Finished;
//	break;
//case Finished:
//	*vlan103_received = timestamp >> 32;
//	*vlan104_received = timestamp & 0xFFFFFFFF;
//	break;
//default:
//	break;
//}
//}

void rx_handler(volatile unsigned char *ddr,
		volatile int *fifo_axilite,
		volatile unsigned char *driver_ddr,
		int *status,
		unsigned short *writeStatus,
		long long timestamp,
		volatile unsigned int *logger_vlan_enable_mask,
		unsigned int *vlan100_received,
		unsigned int *vlan101_received,
		unsigned int *vlan102_received,
		unsigned int *vlan103_received,
		unsigned int *vlan104_received,
		unsigned int *vlan105_received,
		unsigned int *vlan106_received,
		unsigned int *vlan107_received,
		unsigned int *vlan108_received,
		unsigned int *vlan109_received,
		unsigned int *droped,
		unsigned int *multicast_recv_enable,
		unsigned int *unicast_filter_enable,
		unsigned int *unicast_vlan100_macaddr_lsb,
		unsigned int *unicast_vlan100_macaddr_msb,
		unsigned int *unicast_vlan101_macaddr_lsb,
		unsigned int *unicast_vlan101_macaddr_msb,
		unsigned int *unicast_vlan102_macaddr_lsb,
		unsigned int *unicast_vlan102_macaddr_msb,
		unsigned int *unicast_vlan103_macaddr_lsb,
		unsigned int *unicast_vlan103_macaddr_msb,
		unsigned int *unicast_vlan104_macaddr_lsb,
		unsigned int *unicast_vlan104_macaddr_msb,
		unsigned int *unicast_vlan105_macaddr_lsb,
		unsigned int *unicast_vlan105_macaddr_msb,
		unsigned int *unicast_vlan106_macaddr_lsb,
		unsigned int *unicast_vlan106_macaddr_msb,
		unsigned int *unicast_vlan107_macaddr_lsb,
		unsigned int *unicast_vlan107_macaddr_msb,
		unsigned int *unicast_vlan108_macaddr_lsb,
		unsigned int *unicast_vlan108_macaddr_msb,
		unsigned int *unicast_vlan109_macaddr_lsb,
		unsigned int *unicast_vlan109_macaddr_msb,
		unsigned int *log_all_mask
		) {
	static enum rxState {R_IDLE = 0, R_READY, R_PAYLOAD, R_PSBUSY} rx_state;

	static int i = 0;
#pragma HLS reset variable=i
	static int frame_len_bytes = 0;
#pragma HLS reset variable=frame_len_bytes
	static int byteIndex = 0;
#pragma HLS reset variable=byteIndex
	static int WordLength = 0;
#pragma HLS reset variable=WordLength
	unsigned char frame_buff[ETHERNET_RAWLOG_RESERVED_LENGTH];
//#pragma HLS array_partition variable=frame_buff block factor=4

	static ethPacketHeader packet_header = {0,
			INTERFACE_TYPE_ETHERNET,
			0,
			0};
	static unsigned int counter_vlan100 = 0;
#pragma HLS reset variable = counter_vlan100
	static unsigned int counter_vlan101 = 0;
#pragma HLS reset variable = counter_vlan101
	static unsigned int counter_vlan102 = 0;
#pragma HLS reset variable = counter_vlan102
	static unsigned int counter_vlan103 = 0;
#pragma HLS reset variable = counter_vlan103
	static unsigned int counter_vlan104 = 0;
#pragma HLS reset variable = counter_vlan104
	static unsigned int counter_vlan105 = 0;
#pragma HLS reset variable = counter_vlan105
	static unsigned int counter_vlan106 = 0;
#pragma HLS reset variable = counter_vlan106
	static unsigned int counter_vlan107 = 0;
#pragma HLS reset variable = counter_vlan107
	static unsigned int counter_vlan108 = 0;
#pragma HLS reset variable = counter_vlan108
	static unsigned int counter_vlan109 = 0;
#pragma HLS reset variable = counter_vlan109
	static unsigned int counter_droped = 0;
#pragma HLS reset variable = counter_droped

	bool drop_driver_msg;
	bool log_msg;
	unsigned char packet_header_bytes[12];
	int rxWord;
	int ringbuffer_state;
	switch(rx_state) {
	case R_IDLE:
	case R_PSBUSY:
//		ringbuffer_state = update_ringbuffer_data(true, ddr, packet_header_bytes, 12, frame_buff, packet_header.pkt_len_bytes);
//		// check if ring buffer is full
//		if(ringbuffer_state == R_PSBUSY) {
//			rx_state = R_PSBUSY;
//			// *(ddr + OFFSET_PL_STATUS_IN_HEADER) = (char) R_PSBUSY;
//			*status = R_PSBUSY;
//		} else {
//			rx_state = R_READY;
//			// *(ddr + OFFSET_PL_STATUS_IN_HEADER) = (char) R_READY;
//			*status = R_READY;
//		}
		rx_state = R_READY;
		// *status = R_READY;
		break;
	case R_READY:
		if(*(fifo_axilite + (XLLF_RDFO_OFFSET/4))) {
			frame_len_bytes = *(fifo_axilite + XLLF_RLF_OFFSET/4);
			WordLength = (frame_len_bytes/WORD_SIZE) + ((frame_len_bytes)%4 ? 1:0);
			i = 0;
			byteIndex = 0;
			packet_header.pkt_len_bytes = frame_len_bytes;
			packet_header.timestamp = timestamp;
			rx_state = R_PAYLOAD;
			// *(ddr + OFFSET_PL_STATUS_IN_HEADER) = (char) R_PAYLOAD;
			*status = R_PAYLOAD;
		}
		break;
	case R_PAYLOAD:
		for(i = 0; i < 3; i++) {
#pragma HLS PIPELINE II=1
			rxWord = * (fifo_axilite + XLLF_AXI4_RDFD_OFFSET/4);
			frame_buff[byteIndex++] = (unsigned char) (rxWord & 0xFF);
			frame_buff[byteIndex++] = (unsigned char) ((rxWord >> 8) & 0xFF);
			frame_buff[byteIndex++] = (unsigned char) ((rxWord >> 16) & 0xFF);
			frame_buff[byteIndex++] = (unsigned char) ((rxWord >> 24) & 0xFF);
		}
		// port ID in packet_header
		rxWord = * (fifo_axilite + XLLF_AXI4_RDFD_OFFSET/4);
		if((rxWord & 0xFFFF) == 0x8888) {
			//vlan id -> port(group) id: 100 -> 0, 101 -> 1, 102 -> 2, 103 -> 3, 104 -> 4
			//vlan id -> port(group) id: 105 -> 5, 106 -> 6, 107 -> 7, 108 -> 8, 109 -> 9
			packet_header.port_id = ((rxWord >> 24) & 0xFF) - 0x64;
			packet_header.pkt_len_bytes -= 4;
		} else {
			frame_buff[byteIndex++] = (unsigned char) (rxWord & 0xFF);
			frame_buff[byteIndex++] = (unsigned char) ((rxWord >> 8) & 0xFF);
			frame_buff[byteIndex++] = (unsigned char) ((rxWord >> 16) & 0xFF);
			frame_buff[byteIndex++] = (unsigned char) ((rxWord >> 24) & 0xFF);
		}

loop_rxfifo: for(i = 4; i < WordLength; i++) {
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=16 max=380 avg=200
			rxWord = * (fifo_axilite + XLLF_AXI4_RDFD_OFFSET/4);
			frame_buff[byteIndex++] = (unsigned char) (rxWord & 0xFF);
			frame_buff[byteIndex++] = (unsigned char) ((rxWord >> 8) & 0xFF);
			frame_buff[byteIndex++] = (unsigned char) ((rxWord >> 16) & 0xFF);
			frame_buff[byteIndex++] = (unsigned char) ((rxWord >> 24) & 0xFF);
		}

//		if(i == WordLength) {
		packet_header_bytes[0] = (unsigned char) ((packet_header.timestamp >> 56) & 0xFF);
		packet_header_bytes[1] = (unsigned char) ((packet_header.timestamp >> 48) & 0xFF);
		packet_header_bytes[2] = (unsigned char) ((packet_header.timestamp >> 40) & 0xFF);
		packet_header_bytes[3] = (unsigned char) ((packet_header.timestamp >> 32) & 0xFF);
		packet_header_bytes[4] = (unsigned char) ((packet_header.timestamp >> 24) & 0xFF);
		packet_header_bytes[5] = (unsigned char) ((packet_header.timestamp >> 16) & 0xFF);
		packet_header_bytes[6] = (unsigned char) ((packet_header.timestamp >> 8) & 0xFF);
		packet_header_bytes[7] = (unsigned char) ((packet_header.timestamp ) & 0xFF);
		packet_header_bytes[8] = (unsigned char) (packet_header.port_type & 0xFF);
		packet_header_bytes[9] = (unsigned char) (packet_header.port_id & 0xFF);
		packet_header_bytes[10] = (unsigned char) ((packet_header.pkt_len_bytes >> 8) & 0xFF);
		packet_header_bytes[11] = (unsigned char) ((packet_header.pkt_len_bytes) & 0xFF);

		// update counter statistic
		switch(packet_header.port_id) {
			case 0:
				counter_vlan100++;
				*vlan100_received = counter_vlan100;
				break;
			case 1:
				counter_vlan101++;
				*vlan101_received = counter_vlan101;
				break;
			case 2:
				counter_vlan102++;
				*vlan102_received = counter_vlan102;
				break;
			case 3:
				counter_vlan103++;
				*vlan103_received = counter_vlan103;
				break;
			case 4:
				counter_vlan104++;
				*vlan104_received = counter_vlan104;
				break;
			case 5:
				counter_vlan105++;
				*vlan105_received = counter_vlan105;
				break;
			case 6:
				counter_vlan106++;
				*vlan106_received = counter_vlan106;
				break;
			case 7:
				counter_vlan107++;
				*vlan107_received = counter_vlan107;
				break;
			case 8:
				counter_vlan108++;
				*vlan108_received = counter_vlan108;
				break;
			case 9:
				counter_vlan109++;
				*vlan109_received = counter_vlan109;
				break;
			default:
				counter_droped++;
				*droped = counter_droped;
				break;

		}

		byteIndex = 0;
		WordLength = 0;

		log_msg = true; 					//all packet are default to log
		drop_driver_msg = false;
		// check driver condition
		if((frame_buff[0] == 0xff) && (frame_buff[1] == 0xff) && (frame_buff[2] == 0xff) &&
				(frame_buff[3] == 0xff) && (frame_buff[4] == 0xff) && (frame_buff[5] == 0xff)) {
			// broadcast frame
			// do nothing;
		} else if((frame_buff[0] & 0x1) == 0x1) {
			// multi cast
			if(((*multicast_recv_enable >> packet_header.port_id) & 0x1) != 0x1) {
				// only filter UDP multicast packet
				// check if has 8021Q VLAN TAG
				int next_header = 12;		// [12 13 14 15] -- 81 00 xx xx
				if((frame_buff[next_header] == 0x81) &&(frame_buff[next_header+1] == 0x00)) {
					// 802.1Q VLAN Tag
					next_header += 4;
				}
				if((frame_buff[next_header] == 0x86) && (frame_buff[next_header+1] == 0xdd)) {
					// ipv6 [] -- 86 dd
					next_header += 8;
				} else if ((frame_buff[next_header] == 0x80) && (frame_buff[next_header+1] == 0x00)) {
					// ipv4 [] -- 80 00
					next_header += 11;
				} else {
					//non ipv6, ipv4 or multi VLAN TAG
					drop_driver_msg = true;
				}

				if(frame_buff[next_header] == 0x11) // udp packet
				{
					//drop msg
					drop_driver_msg = true;
				}
			}
		} else {
			// unicast
			if((*unicast_filter_enable >> packet_header.port_id) & 0x1) {
				switch(packet_header.port_id) {
				case 0:
					if((frame_buff[0] != ((*unicast_vlan100_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan100_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan100_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan100_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan100_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan100_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				case 1:
					if((frame_buff[0] != ((*unicast_vlan101_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan101_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan101_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan101_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan101_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan101_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				case 2:
					if((frame_buff[0] != ((*unicast_vlan102_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan102_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan102_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan102_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan102_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan102_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				case 3:
					if((frame_buff[0] != ((*unicast_vlan103_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan103_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan103_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan103_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan103_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan103_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				case 4:
					if((frame_buff[0] != ((*unicast_vlan104_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan104_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan104_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan104_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan104_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan104_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				case 5:
					if((frame_buff[0] != ((*unicast_vlan105_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan105_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan105_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan105_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan105_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan105_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				case 6:
					if((frame_buff[0] != ((*unicast_vlan106_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan106_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan106_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan106_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan106_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan106_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				case 7:
					if((frame_buff[0] != ((*unicast_vlan107_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan107_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan107_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan107_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan107_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan107_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				case 8:
					if((frame_buff[0] != ((*unicast_vlan108_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan108_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan108_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan108_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan108_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan108_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				case 9:
					if((frame_buff[0] != ((*unicast_vlan109_macaddr_msb >> 8) & 0xFF)) ||
						(frame_buff[1] != ((*unicast_vlan109_macaddr_msb >> 0) & 0xFF)) ||
						(frame_buff[2] != ((*unicast_vlan109_macaddr_lsb >> 24) & 0xFF)) ||
						(frame_buff[3] != ((*unicast_vlan109_macaddr_lsb >> 16) & 0xFF)) ||
						(frame_buff[4] != ((*unicast_vlan109_macaddr_lsb >> 8) & 0xFF)) ||
						(frame_buff[5] != ((*unicast_vlan109_macaddr_lsb) & 0xFF))) {
						drop_driver_msg = true;
					} else {
						log_msg = false;
					}
					break;
				default:
					break;
				}
			}
		}


		// check vlan logger enable mask
		if(((*log_all_mask >> packet_header.port_id) & 0x1) ||	// if we log all packet on this port
		 (((*logger_vlan_enable_mask >> packet_header.port_id) & 0x1) && log_msg)) // or we log all packet except local communication
		{
			update_ringbuffer_data(false, ddr, packet_header_bytes, 12, frame_buff, packet_header.pkt_len_bytes);
		}

		if(!drop_driver_msg) {
			// copy data into driver ddr
			update_ringbuffer_data(false, driver_ddr, packet_header_bytes, 12, frame_buff, packet_header.pkt_len_bytes);
		} else {
			counter_droped++;
			*droped = counter_droped;
		}
		rx_state = R_IDLE;
		// *(ddr + OFFSET_PL_STATUS_IN_HEADER) = (char) R_IDLE;
		*status = R_IDLE;

		break;
		default:
			break;
	}
//	*status = (int) counter;
//	*writeStatus = writeIndex;
}



// top function
void mac_logger(volatile int *fifo,
		volatile unsigned char *ddr,
		volatile unsigned char *driver,
		int *status,
		unsigned short *writeStatus,
		long long timestamp,
		volatile unsigned int *logger_vlan_enable_mask,
		unsigned int *vlan100_received,
		unsigned int *vlan101_received,
		unsigned int *vlan102_received,
		unsigned int *vlan103_received,
		unsigned int *vlan104_received,
		unsigned int *vlan105_received,
		unsigned int *vlan106_received,
		unsigned int *vlan107_received,
		unsigned int *vlan108_received,
		unsigned int *vlan109_received,
		unsigned int *droped,
		unsigned int *multicast_recv_enable,
		unsigned int *unicast_filter_enable,
		unsigned int *unicast_vlan100_macaddr_lsb,
		unsigned int *unicast_vlan100_macaddr_msb,
		unsigned int *unicast_vlan101_macaddr_lsb,
		unsigned int *unicast_vlan101_macaddr_msb,
		unsigned int *unicast_vlan102_macaddr_lsb,
		unsigned int *unicast_vlan102_macaddr_msb,
		unsigned int *unicast_vlan103_macaddr_lsb,
		unsigned int *unicast_vlan103_macaddr_msb,
		unsigned int *unicast_vlan104_macaddr_lsb,
		unsigned int *unicast_vlan104_macaddr_msb,
		unsigned int *unicast_vlan105_macaddr_lsb,
		unsigned int *unicast_vlan105_macaddr_msb,
		unsigned int *unicast_vlan106_macaddr_lsb,
		unsigned int *unicast_vlan106_macaddr_msb,
		unsigned int *unicast_vlan107_macaddr_lsb,
		unsigned int *unicast_vlan107_macaddr_msb,
		unsigned int *unicast_vlan108_macaddr_lsb,
		unsigned int *unicast_vlan108_macaddr_msb,
		unsigned int *unicast_vlan109_macaddr_lsb,
		unsigned int *unicast_vlan109_macaddr_msb,
		unsigned int *log_all_mask
		){
#pragma HLS INTERFACE s_axilite register port=writeStatus
#pragma HLS INTERFACE s_axilite register port=status
#pragma HLS INTERFACE s_axilite register port=vlan100_received
#pragma HLS INTERFACE s_axilite register port=vlan101_received
#pragma HLS INTERFACE s_axilite register port=vlan102_received
#pragma HLS INTERFACE s_axilite register port=vlan103_received
#pragma HLS INTERFACE s_axilite register port=vlan104_received
#pragma HLS INTERFACE s_axilite register port=vlan105_received
#pragma HLS INTERFACE s_axilite register port=vlan106_received
#pragma HLS INTERFACE s_axilite register port=vlan107_received
#pragma HLS INTERFACE s_axilite register port=vlan108_received
#pragma HLS INTERFACE s_axilite register port=vlan109_received
#pragma HLS INTERFACE s_axilite register port=droped

#pragma HLS INTERFACE m_axi depth=0x11000/4+1 port=fifo offset=slave bundle=mac_fifo max_read_burst_length=16
#pragma HLS INTERFACE m_axi depth=2048*200/4 port=ddr offset=slave bundle=ps
#pragma HLS INTERFACE m_axi depth=2048*200/4 port=driver offset=slave bundle=ps
#pragma HLS INTERFACE s_axilite depth=1 port=logger_vlan_enable_mask
#pragma HLS INTERFACE s_axilite depth=1 port=multicast_recv_enable
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_filter_enable
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan100_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan100_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan101_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan101_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan102_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan102_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan103_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan103_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan104_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan104_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan105_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan105_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan106_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan106_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan107_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan107_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan108_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan108_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan109_macaddr_lsb
#pragma HLS INTERFACE s_axilite depth=1 port=unicast_vlan109_macaddr_msb
#pragma HLS INTERFACE s_axilite depth=1 port=log_all_mask

// #pragma HLS DATAFLOW

#pragma HLS INTERFACE s_axilite port=return

	// using fsm to control rx processing
	rx_handler(ddr, fifo, driver, status, writeStatus, timestamp, logger_vlan_enable_mask,
			vlan100_received,
			vlan101_received,
			vlan102_received,
			vlan103_received,
			vlan104_received,
			vlan105_received,
			vlan106_received,
			vlan107_received,
			vlan108_received,
			vlan109_received,
			droped,
			multicast_recv_enable,
			unicast_filter_enable,
			unicast_vlan100_macaddr_lsb,
			unicast_vlan100_macaddr_msb,
			unicast_vlan101_macaddr_lsb,
			unicast_vlan101_macaddr_msb,
			unicast_vlan102_macaddr_lsb,
			unicast_vlan102_macaddr_msb,
			unicast_vlan103_macaddr_lsb,
			unicast_vlan103_macaddr_msb,
			unicast_vlan104_macaddr_lsb,
			unicast_vlan104_macaddr_msb,
			unicast_vlan105_macaddr_lsb,
			unicast_vlan105_macaddr_msb,
			unicast_vlan106_macaddr_lsb,
			unicast_vlan106_macaddr_msb,
			unicast_vlan107_macaddr_lsb,
			unicast_vlan107_macaddr_msb,
			unicast_vlan108_macaddr_lsb,
			unicast_vlan108_macaddr_msb,
			unicast_vlan109_macaddr_lsb,
			unicast_vlan109_macaddr_msb,
			log_all_mask);
}

#endif
