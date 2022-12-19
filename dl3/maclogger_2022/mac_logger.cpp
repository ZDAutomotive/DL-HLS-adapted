#include "mac_logger.h"
#ifndef OLD
//#define PERF_TEST
#define USESTREAM_BLOCK 0

//void strm2databuf(strm_t &in_strm, unsigned int *databuf) {
//	unsigned int frame_length;
//	unsigned int word_length;
//	for(int i = 0; i < 3; i++) {
//		databuf[i] = in_strm.read();
//	}
//	frame_length = (databuf[2] & 0xFFFF);
//	word_length = (frame_length/WORD_SIZE) + ((frame_length)%WORD_SIZE ? 1:0);
//
//	rx_from_stream:		for(int i = 3; i < word_length + 3; i++) {
//	#pragma HLS PIPELINE II=1
//	#pragma HLS LOOP_TRIPCOUNT min=16 max=400 avg=160
//		databuf[i] = in_strm.read();
//	}
////	// only for performance test
////	databuf[3] = timestamp >> 32;
////	databuf[4] = timestamp & 0xFFFFFFFF;
////	// end of performance test time stamp
//}

void rx_ringbuffer_header(unsigned int *log_ddr,
		unsigned int *tap_ddr, unsigned int *log_header, unsigned int *tap_header) {
	for(unsigned int i = 0; i < 7; i++) {
#pragma HLS PIPELINE
		log_header[i] = log_ddr[i];
	}
	for(unsigned int i = 0; i < 7; i++) {
#pragma HLS PIPELINE
		tap_header[i] = tap_ddr[i];
	}

}

void rx_fifo(volatile unsigned int *fifo_axi_lite,
		volatile data_t *fifo_axi_full,
		long long timestamp,
#if USESTREAM_BLOCK
		hls::stream_of_blocks<block_data_t> &databuf_out)
#else
		unsigned int *databuf)
#endif
{
#pragma HLS inline off

	databuf[0] = 0;
	databuf[1] = 0;
	databuf[2] = 0;
	if(*(fifo_axi_lite + (XLLF_RDFO_OFFSET/4))) {
		unsigned int frame_len_bytes = *(fifo_axi_lite + XLLF_RLF_OFFSET/4);
		unsigned int WordLength = (frame_len_bytes/S2FIFO_AXI4_WORD_SIZE) + ((frame_len_bytes % S2FIFO_AXI4_WORD_SIZE) > 0);
		assert(WordLength > 2);
		assert(WordLength < 440);
		data_t rxWord;
		unsigned int offset = 0;
		unsigned int port_id = 0xFF;

#if USESTREAM_BLOCK
		hls::write_lock<block_data_t> databuf(databuf_out);
#endif

		databuf[0] = (((timestamp >> 32) & 0xFF) << 24) | (((timestamp >> 32) & 0xFF00) << 8) | (((timestamp >> 32) & 0xFF0000) >> 8) | (((timestamp >> 32) & 0xFF000000) >> 24);			// 64 bits timestamp (high 32 bits)
		databuf[1] = (((timestamp) & 0xFF) << 24) | (((timestamp) & 0xFF00) << 8) | (((timestamp) & 0xFF0000) >> 8) | (((timestamp) & 0xFF000000) >> 24);     // 64 bits timestamp (low  32 bits)

#ifdef USE32BIT
		unsigned int tmp_buf[4];
		for(unsigned int i = 0; i < 4; i++) {
//#pragma HLS PIPELINE
			rxWord = *(fifo_axi_full + (XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE));
			//databuf[i+3] = rxWord;
			tmp_buf[i] = rxWord;
		}
		// rxWord = *(fifo_axi_full + (XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE));
		// tmp_buf[3]  VLAN TAG

		if((tmp_buf[3] & 0xFFFF) == 0x8888) { 						// ZD Datalogger switch VLAN Tag
			port_id = ((((tmp_buf[3] & 0xFF000000) >> 24) | (tmp_buf[3] & 0xF0000) >> 8) - 100);
			databuf[2] = ((INTERFACE_TYPE_ETHERNET) | 				// Port type Ethernet
						   (port_id << 8) |  	// Port ID (vlanid - 100) i.e. vlanid 100 -> 0, vlanid 109 -> 9
						   (((frame_len_bytes - 4) & 0xFF) << 24) | (((frame_len_bytes - 4) & 0xFF00) << 8));				// frame length -4(zd vlan tag)
		} else {
			databuf[2] = ((INTERFACE_TYPE_ETHERNET) | 		// Port type Ethernet
						   (port_id << 8) |  	// Port ID 				// 0xFF marked as non ZD VLAN TAG
						   (((frame_len_bytes) & 0xFF) << 24) | (((frame_len_bytes) & 0xFF00) << 8));			// frame length
			offset = 1;
		}
		for(unsigned int i = 0; i < (3 + offset); i++) {
#pragma HLS PIPELINE
			databuf[3+i] = tmp_buf[i];
		}


unsigned int N = (WordLength - 4) / 16;
unsigned int M = (WordLength - 4) % 16;
rx_macfifo_data:
	for(unsigned int i = 0; i < N; i++) {
		memcpy((unsigned int*)&databuf[6+offset+i*16], (unsigned int*)(fifo_axi_full + XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE), 16*sizeof(unsigned int));
}
	memcpy((unsigned int*)&databuf[6+offset+N*16], (unsigned int*)(fifo_axi_full + XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE), M*sizeof(unsigned int));


//		for(unsigned int i = 0; i < (WordLength-4); i++) {
//#pragma HLS LOOP_TRIPCOUNT min=8 max=420 avg=160
//			rxWord = *(fifo_axi_full + XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE);
//			databuf[6 + offset + i] = rxWord;
//		}
#endif

#ifdef USE64BIT
		rxWord = *(fifo_axi_full + XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE);	// first 8 bytes
		databuf[3] = (unsigned int) (rxWord & 0xFFFFFFFF);
		databuf[4] = (unsigned int) (rxWord >> 32);
		rxWord = *(fifo_axi_full + XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE);	// second 8 bytes
		databuf[5] = (unsigned int) (rxWord & 0xFFFFFFFF);

		if(((rxWord >> 32) & 0xFFFF) == 0x8888) { 						// ZD Datalogger switch VLAN Tag
			port_id = ((((rxWord >> 32) >> 24) & 0xFFF) - 100);			//*************************todo
			databuf[2] = ((INTERFACE_TYPE_ETHERNET) | 				// Port type Ethernet
						   (port_id << 8) |  	// Port ID (vlanid - 100) i.e. vlanid 100 -> 0, vlanid 109 -> 9
						   (((frame_len_bytes - 4) & 0xFF) << 24) | (((frame_len_bytes - 4) & 0xFF00) << 24));				// frame length -4(zd vlan tag)
		} else {
			databuf[2] = ((INTERFACE_TYPE_ETHERNET) | 		// Port type Ethernet
						   (port_id << 8) |  	// Port ID 				// 0xFF marked as non ZD VLAN TAG
						   (((frame_len_bytes - 4) & 0xFF) << 24) | (((frame_len_bytes - 4) & 0xFF00) << 24));			// frame length
			databuf[6] = (unsigned int) (rxWord >> 32);
			offset = 1;
		}

rx_macfifo_data:
		for(unsigned int i = 0; i < WordLength-2; i++) {
#pragma HLS PIPELINE
#pragma HLS LOOP_TRIPCOUNT min=8 max=200 avg=80
			rxWord = *(fifo_axi_full + XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE);
			databuf[6 + offset + i*2] = (unsigned int) (rxWord & 0xFFFFFFFF);
			databuf[6 + offset + i*2 + 1] = (unsigned int) (rxWord >> 32);
		}
#endif
	}
}

#if USESTREAM_BLOCK
	void tx_ddr(hls::stream_of_blocks<block_data_t> &databuf_in,
#else
	void tx_ddr(unsigned int *databuf,
#endif
		unsigned int *log_header1,
		unsigned int *tap_header1,
		unsigned int *log_ddr,
		unsigned int *tap_ddr,
		unsigned int *logger_vlan_enable_mask,
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
		unsigned int *log_all_mask,
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
		unsigned int *droped){
#pragma HLS inline off

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

	static unsigned int last_log_tx_index = 0;
#pragma HLS reset variable=last_log_tx_index
	static unsigned int last_tap_tx_index = 0;
#pragma HLS reset variable=last_tap_tx_index


#if USESTREAM_BLOCK
	hls::read_lock<block_data_t> databuf(databuf_in);
#endif


	bool log_msg = true;
	bool drop_driver_msg = false;
	data_t rxWord = databuf[2];
	unsigned int frame_length = ((rxWord & 0xFF000000) >> 24) | ((rxWord & 0xFF0000) >> 8);
	unsigned int port_id = (rxWord >> 8) & 0xFF;

//	if(port_id >= 0 && port_id <= 9) counter_vlan_list[port_id]++;
//	else counter_vlan_list[10]++; 				//droped
//
	if(rxWord == 0) return;

	switch(port_id) {
		case 0:
			(counter_vlan100)++;
			//*vlan100_received = counter_vlan100;
			break;
		case 1:
			(counter_vlan101)++;
			//*vlan101_received = counter_vlan101;
			break;
		case 2:
			(counter_vlan102)++;
			//*vlan102_received = counter_vlan102;
			break;
		case 3:
			(counter_vlan103)++;
			//*vlan103_received = counter_vlan103;
			break;
		case 4:
			(counter_vlan104)++;
			//*vlan104_received = counter_vlan104;
			break;
		case 5:
			(counter_vlan105)++;
			//*vlan105_received = counter_vlan105;
			break;
		case 6:
			(counter_vlan106)++;
			//*vlan106_received = counter_vlan106;
			break;
		case 7:
			(counter_vlan107)++;
			//*vlan107_received = counter_vlan107;
			break;
		case 8:
			(counter_vlan108)++;
			//*vlan108_received = counter_vlan108;
			break;
		case 9:
			(counter_vlan109)++;
			//*vlan109_received = counter_vlan109;
			break;
		default:
			(counter_droped)++;
			//*droped = counter_droped;
			break;
	}

		*vlan100_received = counter_vlan100;
		*vlan101_received = counter_vlan101;
		*vlan102_received = counter_vlan102;
		*vlan103_received = counter_vlan103;
		*vlan104_received = counter_vlan104;
		*vlan105_received = counter_vlan105;
		*vlan106_received = counter_vlan106;
		*vlan107_received = counter_vlan107;
		*vlan108_received = counter_vlan108;
		*vlan109_received = counter_vlan109;
		*droped = counter_droped;

	unsigned char *frame_buff;
	frame_buff = (unsigned char*) (&(databuf[3]));
	if((frame_buff[0] == 0xff) && (frame_buff[1] == 0xff) && (frame_buff[2] == 0xff) &&
			(frame_buff[3] == 0xff) && (frame_buff[4] == 0xff) && (frame_buff[5] == 0xff)) {
		// broadcast frame
		// do nothing;
	} else if((frame_buff[0] & 0x1) == 0x1) {
		// multi cast
		if(((*multicast_recv_enable >> port_id) & 0x1) != 0x1) {
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
		if(port_id == 0xFF) {
			drop_driver_msg = true;
		} else if((*unicast_filter_enable >> port_id) & 0x1) {
			switch(port_id) {
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
				drop_driver_msg = true;
				break;
			}
		}
	}

	// check vlan logger enable mask
	unsigned int log_all_mask_v = *log_all_mask;
	unsigned int logger_vlan_enable_mask_v = *logger_vlan_enable_mask;
	if(port_id > 31) port_id = 31;
	if(((log_all_mask_v >> port_id) & 0x1) ||	// if we log all packet on this port
	 (((logger_vlan_enable_mask_v >> port_id) & 0x1) && log_msg)) // or we log all packet except local communication
//		if( (((*logger_vlan_enable_mask >> port_id) & 0x1) && log_msg)) // or we log all packet except local communication
	{
		// ringbufferHeader log_header = {0, 0, 0, 0, 0, 0, 0};
		unsigned int log_header[7];
		for(unsigned int i = 0; i < 7; i++) {
#pragma HLS PIPELINE
			log_header[i] = log_header1[i];
		}
		// memcpy((unsigned int*) &log_header, (unsigned int*)log_ddr, 7 * sizeof(unsigned int));
		 unsigned int counter;
		 unsigned int magic_number;
		 unsigned int pl_status;
		 unsigned int ps_status;
		 unsigned int reserved_frame_len;
		 unsigned int writeIndex;
		 unsigned int readIndex;
		 unsigned int nextWriteIndex;
		 unsigned char* ringbuffer_header_bytes;
		 ringbuffer_header_bytes = (unsigned char *) &log_header;

				// check if ring buffer is full

		magic_number = (ringbuffer_header_bytes[0] << 24) | (ringbuffer_header_bytes[1] << 16)
						| (ringbuffer_header_bytes[2] << 8) | (ringbuffer_header_bytes[3]);
		pl_status = (ringbuffer_header_bytes[4] << 24) | (ringbuffer_header_bytes[5] << 16)
						| (ringbuffer_header_bytes[6] << 8) | (ringbuffer_header_bytes[7]);
		ps_status = (ringbuffer_header_bytes[8] << 24) | (ringbuffer_header_bytes[9] << 16)
						| (ringbuffer_header_bytes[10] << 8) | (ringbuffer_header_bytes[11]);
		counter = (ringbuffer_header_bytes[12] << 24) | (ringbuffer_header_bytes[13] << 16)
							| (ringbuffer_header_bytes[14] << 8) | (ringbuffer_header_bytes[15]);
		reserved_frame_len = (ringbuffer_header_bytes[16] << 24) | (ringbuffer_header_bytes[17] << 16)
						| (ringbuffer_header_bytes[18] << 8) | (ringbuffer_header_bytes[19]);
		readIndex = (ringbuffer_header_bytes[20] << 24) | (ringbuffer_header_bytes[21] << 16)
						| (ringbuffer_header_bytes[22] << 8) | (ringbuffer_header_bytes[23]);
//		writeIndex = (ringbuffer_header_bytes[24] << 24) | (ringbuffer_header_bytes[25] << 16)
//						| (ringbuffer_header_bytes[26] << 8) | (ringbuffer_header_bytes[27]);
		writeIndex = last_log_tx_index;
		nextWriteIndex = (writeIndex + 1) % counter;

		//nextWriteIndex = (log_header.writeIndex + 1) % log_header.counter;

		if(((magic_number & 0xFFFFFFFF) == 0x7e7e7e7e) && (readIndex != nextWriteIndex)) { 				// check if ring buffer is full
			unsigned int N = (frame_length + FRAME_HEADER_LENGTH)/4 + ((frame_length % 4) > 0);
			assert (N >= 3);
tx_2_log_ddr:
			for(unsigned int i = 0; i < N; i++) {
	#pragma HLS PIPELINE II=1
	#pragma HLS LOOP_TRIPCOUNT min=3 max=420 avg=160
				*(log_ddr + RINGBUFFER_HEADER_OFFSET/4 + writeIndex*reserved_frame_len/4 + i) =
						databuf[i];
			}
	//		memcpy((unsigned int *)(log_ddr + RINGBUFFER_HEADER_OFFSET/4 + ringbuffer_header.writeIndex*ringbuffer_header.reserved_frame_len/4),
	//				(unsigned int *) databuf,
	//				frame_length+FRAME_HEADER_LENGTH);
			*(log_ddr + OFFSET_WRITE_INDEX_IN_HEADER/4) = ((nextWriteIndex & 0xFF) << 24) | ((nextWriteIndex & 0xFF00) << 8) | ((nextWriteIndex & 0xFF0000) >> 8) | ((nextWriteIndex & 0xFF000000) >> 24);
			last_log_tx_index = nextWriteIndex;

		}
	}

	if(!drop_driver_msg) {
		// copy data into driver ddr
		// update tap
		unsigned int tap_header[7];
		for(unsigned int i = 0; i < 7; i++) {
#pragma HLS PIPELINE
			tap_header[i] = tap_header1[i];
		}

		 unsigned int counter;
		 unsigned int magic_number;
		 unsigned int pl_status;
		 unsigned int ps_status;
		 unsigned int reserved_frame_len;
		 unsigned int writeIndex;
		 unsigned int readIndex;
		 unsigned int nextWriteIndex;
		 unsigned char* ringbuffer_header_bytes;
		 ringbuffer_header_bytes = (unsigned char *) &tap_header;

		// check if ring buffer is full

		magic_number = (ringbuffer_header_bytes[0] << 24) | (ringbuffer_header_bytes[1] << 16)
						| (ringbuffer_header_bytes[2] << 8) | (ringbuffer_header_bytes[3]);
		pl_status = (ringbuffer_header_bytes[4] << 24) | (ringbuffer_header_bytes[5] << 16)
						| (ringbuffer_header_bytes[6] << 8) | (ringbuffer_header_bytes[7]);
		ps_status = (ringbuffer_header_bytes[8] << 24) | (ringbuffer_header_bytes[9] << 16)
						| (ringbuffer_header_bytes[10] << 8) | (ringbuffer_header_bytes[11]);
		counter = (ringbuffer_header_bytes[12] << 24) | (ringbuffer_header_bytes[13] << 16)
							| (ringbuffer_header_bytes[14] << 8) | (ringbuffer_header_bytes[15]);
		reserved_frame_len = (ringbuffer_header_bytes[16] << 24) | (ringbuffer_header_bytes[17] << 16)
						| (ringbuffer_header_bytes[18] << 8) | (ringbuffer_header_bytes[19]);
		readIndex = (ringbuffer_header_bytes[20] << 24) | (ringbuffer_header_bytes[21] << 16)
						| (ringbuffer_header_bytes[22] << 8) | (ringbuffer_header_bytes[23]);
//		writeIndex = (ringbuffer_header_bytes[24] << 24) | (ringbuffer_header_bytes[25] << 16)
//						| (ringbuffer_header_bytes[26] << 8) | (ringbuffer_header_bytes[27]);
		writeIndex = last_tap_tx_index;
		nextWriteIndex = (writeIndex + 1) % counter;

		if(((magic_number & 0xFFFFFFFF) == 0x7e7e7e7e) && (readIndex != nextWriteIndex)) { 				// check if ring buffer is full
			unsigned int N = (frame_length + FRAME_HEADER_LENGTH)/4 + ((frame_length % 4) > 0);
			assert (N >= 3);
tx_2_tap_ddr:
			for(unsigned int i = 0; i < N; i++) {
	#pragma HLS PIPELINE
	#pragma HLS LOOP_TRIPCOUNT min=3 max=440 avg=160
				*(tap_ddr + RINGBUFFER_HEADER_OFFSET/4 + writeIndex*reserved_frame_len/4 + i) =
						databuf[i];
			}
	//		memcpy((unsigned int *)(log_ddr + RINGBUFFER_HEADER_OFFSET/4 + ringbuffer_header.writeIndex*ringbuffer_header.reserved_frame_len/4),
	//				(unsigned int *) databuf,
	//				frame_length+FRAME_HEADER_LENGTH);
			*(tap_ddr + OFFSET_WRITE_INDEX_IN_HEADER/4) = ((nextWriteIndex & 0xFF) << 24) | ((nextWriteIndex & 0xFF00) << 8) | ((nextWriteIndex & 0xFF0000) >> 8) | ((nextWriteIndex & 0xFF000000) >> 24);
			last_tap_tx_index = nextWriteIndex;
		}
	}
	return;
}

void mac_logger(volatile unsigned int *fifo,
		unsigned int *log_ddr,
		unsigned int *tap_ddr,
		unsigned int *status,
		unsigned short *writeStatus,
		long long timestamp,
		unsigned int *logger_vlan_enable_mask,
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
		unsigned int *log_all_mask,
		volatile data_t *fifo_axi_full
		){

#pragma HLS INTERFACE m_axi depth=1024*5 port=fifo offset=slave bundle=mac_fifo
#pragma HLS INTERFACE s_axilite port=fifo bundle=axilites
#ifdef USE32BIT
#pragma HLS INTERFACE mode=m_axi bundle=fifo_axi_full depth=1028 max_read_burst_length=16 max_write_burst_length=16 num_read_outstanding=16 num_write_outstanding=16 port=fifo_axi_full offset=slave
#pragma HLS INTERFACE s_axilite port=fifo_axi_full bundle=axilites offset=0x160
#endif
#ifdef USE64BIT
#pragma HLS INTERFACE mode=m_axi bundle=fifo_axi_full depth=514 max_read_burst_length=16 max_write_burst_length=16 num_read_outstanding=32 num_write_outstanding=16 port=fifo_axi_full offset=slave
#endif
#pragma HLS INTERFACE m_axi depth=2048*200/4 port=log_ddr name=ddr offset=slave bundle=ps num_read_outstanding=16 num_write_outstanding=16 max_read_burst_length=16 max_write_burst_length=64 max_widen_bitwidth=64
#pragma HLS INTERFACE s_axilite port=log_ddr bundle=axilites name=ddr
#pragma HLS INTERFACE m_axi depth=2048*200/4 port=tap_ddr name=driver offset=slave bundle=ps num_read_outstanding=16 num_write_outstanding=16 max_read_burst_length=16 max_write_burst_length=64 max_widen_bitwidth=64
#pragma HLS INTERFACE s_axilite port=tap_ddr bundle=axilites name=driver offset=0x150

#pragma HLS INTERFACE mode=s_axilite port=status offset=0x28 register bundle=axilites
#pragma HLS INTERFACE mode=s_axilite port=writeStatus offset=0x30 register bundle=axilites

#pragma HLS INTERFACE mode=s_axilite port=logger_vlan_enable_mask offset=0x38 bundle=axilites

#pragma HLS INTERFACE s_axilite register port=vlan100_received offset=0x40 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=vlan101_received offset=0x48 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=vlan102_received offset=0x50 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=vlan103_received offset=0x58 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=vlan104_received offset=0x60 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=vlan105_received offset=0x68 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=vlan106_received offset=0x70 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=vlan107_received offset=0x78 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=vlan108_received offset=0x80 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=vlan109_received offset=0x88 bundle=axilites
#pragma HLS INTERFACE s_axilite register port=droped offset=0x90 bundle=axilites

#pragma HLS INTERFACE s_axilite port=multicast_recv_enable offset=0x98 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_filter_enable offset=0xa0 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan100_macaddr_lsb offset=0xa8 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan100_macaddr_msb offset=0xb0 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan101_macaddr_lsb offset=0xb8 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan101_macaddr_msb offset=0xc0 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan102_macaddr_lsb offset=0xc8 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan102_macaddr_msb offset=0xd0 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan103_macaddr_lsb offset=0xd8 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan103_macaddr_msb offset=0xe0 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan104_macaddr_lsb offset=0xe8 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan104_macaddr_msb offset=0xf0 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan105_macaddr_lsb offset=0xf8 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan105_macaddr_msb offset=0x100 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan106_macaddr_lsb offset=0x108 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan106_macaddr_msb offset=0x110 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan107_macaddr_lsb offset=0x118 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan107_macaddr_msb offset=0x120 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan108_macaddr_lsb offset=0x128 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan108_macaddr_msb offset=0x130 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan109_macaddr_lsb offset=0x138 bundle=axilites
#pragma HLS INTERFACE s_axilite port=unicast_vlan109_macaddr_msb offset=0x140 bundle=axilites
#pragma HLS INTERFACE s_axilite port=log_all_mask				 offset=0x148 bundle=axilites


//#pragma HLS INTERFACE mode=ap_ctrl_none port=return
#pragma HLS interface s_axilite port=return bundle=axilites
#pragma HLS INTERFACE mode=ap_ctrl_chain port=return
//#pragma HLS DATAFLOW disable_start_propagation



#if USESTREAM_BLOCK
	hls::stream_of_blocks<block_data_t> data_buf;
// #pragma HLS DATAFLOW
#else
for(unsigned int i=0; i<0xFFFF;i++) {
#pragma HLS DATAFLOW
	unsigned int data_buf[512];
	unsigned int log_header[7];
	unsigned int tap_header[7];
#endif
// #pragma HLS STREAM variable=
	rx_ringbuffer_header(log_ddr, tap_ddr, log_header, tap_header);

	rx_fifo(fifo, fifo_axi_full, timestamp,
			data_buf);

	tx_ddr(data_buf, log_header, tap_header, log_ddr, tap_ddr,
			logger_vlan_enable_mask,
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
			log_all_mask,
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
			droped);
   }
}
#endif
