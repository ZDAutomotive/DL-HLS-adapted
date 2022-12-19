#ifndef OLD
#include <stdio.h>
#include <string.h>
//#include "hls_stream.h"
#include <ap_int.h>
#include <assert.h>
//#include "hls_streamofblocks.h"
#include <stdint.h>

// typedef hls::stream<int> strm_t ;

//#define NUM_BLOCKS 512
//typedef unsigned int block_data_t[NUM_BLOCKS];

#define USE32BIT

#ifdef USE32BIT
typedef unsigned int data_t;			//intN_t
#define S2FIFO_AXI4_WORD_SIZE 4
#endif

#ifdef USE64BIT
typedef uint64_t data_t;			//intN_t
//typedef long long data_t;
#define S2FIFO_AXI4_WORD_SIZE 8
#endif

//** Ringbuffer parameters
#define OFFSET_MAGIC_NUMBER_IN_HEADER			0 //offsetof(Ringbuffer_Header_T, magic_number)
#define OFFSET_PL_STATUS_IN_HEADER				4 //offsetof(Ringbuffer_Header_T, pl_status)
#define OFFSET_PS_STATUS_IN_HEADER				8 //offsetof(Ringbuffer_Header_T, ps_status)
#define OFFSET_COUNT_IN_HEADER					12 //offsetof(Ringbuffer_Header_T, count)
#define OFFSET_FRAME_LENGTH_IN_HEADER			16 //offsetof(Ringbuffer_Header_T, frame_len)
#define OFFSET_READ_INDEX_IN_HEADER				20 //offsetof(Ringbuffer_Header_T, read_index)
#define OFFSET_WRITE_INDEX_IN_HEADER			24 //offsetof(Ringbuffer_Header_T, write_index)
#define RINGBUFFER_HEADER_OFFSET 				32

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

//struct ethPacketHeader {
//	ap_uint<64> timestamp;
//	ap_uint<8> port_type;
//	ap_uint<8> port_id;
//	ap_uint<16> pkt_len_bytes;
//};

#define FRAME_HEADER_LENGTH 					12

struct ringbufferHeader {
	unsigned int magic_number;
	unsigned int pl_status;
	unsigned int ps_status;
	unsigned int counter;
	unsigned int reserved_frame_len;
	unsigned int readIndex;
	unsigned int writeIndex;
};

//** axi stream fifo parameters


#define XLLF_RDFR_OFFSET 0x00000018  /**< Receive Reset */
#define XLLF_RDFO_OFFSET 0x0000001c  /**< Receive Occupancy */
#define XLLF_RDFD_OFFSET 0x00000020  /**< Receive Data */
#define XLLF_RLF_OFFSET  0x00000024  /**< Receive Length */
#define XLLF_AXI4_RDFD_OFFSET 	0x00001000  /**< Axi4 Receive Data */

void mac_logger(volatile unsigned int *fifo,
		long long *log_ddr,
		long long *tap_ddr,
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
		unsigned int *vlan110_received,
		unsigned int *vlan111_received,
		unsigned int *vlan112_received,
		unsigned int *vlan113_received,
		unsigned int *vlan114_received,
		unsigned int *vlan115_received,
		unsigned int *vlan116_received,
		unsigned int *vlan117_received,
		unsigned int *vlan118_received,
		unsigned int *vlan119_received,
		unsigned int *vlan120_received,
		unsigned int *vlan121_received,
		unsigned int *vlan122_received,
		unsigned int *vlan123_received,
		unsigned int *vlan124_received,
		unsigned int *vlan125_received,
		unsigned int *vlan126_received,
		unsigned int *vlan127_received,
		unsigned int *vlan128_received,
		unsigned int *vlan129_received,
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
		unsigned int *unicast_vlan110_macaddr_lsb,
		unsigned int *unicast_vlan110_macaddr_msb,
		unsigned int *unicast_vlan111_macaddr_lsb,
		unsigned int *unicast_vlan111_macaddr_msb,
		unsigned int *unicast_vlan112_macaddr_lsb,
		unsigned int *unicast_vlan112_macaddr_msb,
		unsigned int *unicast_vlan113_macaddr_lsb,
		unsigned int *unicast_vlan113_macaddr_msb,
		unsigned int *unicast_vlan114_macaddr_lsb,
		unsigned int *unicast_vlan114_macaddr_msb,
		unsigned int *unicast_vlan115_macaddr_lsb,
		unsigned int *unicast_vlan115_macaddr_msb,
		unsigned int *unicast_vlan116_macaddr_lsb,
		unsigned int *unicast_vlan116_macaddr_msb,
		unsigned int *unicast_vlan117_macaddr_lsb,
		unsigned int *unicast_vlan117_macaddr_msb,
		unsigned int *unicast_vlan118_macaddr_lsb,
		unsigned int *unicast_vlan118_macaddr_msb,
		unsigned int *unicast_vlan119_macaddr_lsb,
		unsigned int *unicast_vlan119_macaddr_msb,
		unsigned int *unicast_vlan120_macaddr_lsb,
		unsigned int *unicast_vlan120_macaddr_msb,
		unsigned int *unicast_vlan121_macaddr_lsb,
		unsigned int *unicast_vlan121_macaddr_msb,
		unsigned int *unicast_vlan122_macaddr_lsb,
		unsigned int *unicast_vlan122_macaddr_msb,
		unsigned int *unicast_vlan123_macaddr_lsb,
		unsigned int *unicast_vlan123_macaddr_msb,
		unsigned int *unicast_vlan124_macaddr_lsb,
		unsigned int *unicast_vlan124_macaddr_msb,
		unsigned int *unicast_vlan125_macaddr_lsb,
		unsigned int *unicast_vlan125_macaddr_msb,
		unsigned int *unicast_vlan126_macaddr_lsb,
		unsigned int *unicast_vlan126_macaddr_msb,
		unsigned int *unicast_vlan127_macaddr_lsb,
		unsigned int *unicast_vlan127_macaddr_msb,
		unsigned int *unicast_vlan128_macaddr_lsb,
		unsigned int *unicast_vlan128_macaddr_msb,
		unsigned int *unicast_vlan129_macaddr_lsb,
		unsigned int *unicast_vlan129_macaddr_msb,
		unsigned int *log_all_mask,
		volatile data_t *fifo_axi_full
		);
#else

#define XLLF_ISR_OFFSET  0x00000000  /**< Interrupt Status */
#define XLLF_IER_OFFSET  0x00000004  /**< Interrupt Enable */

#define XLLF_TDFR_OFFSET 0x00000008  /**< Transmit Reset */
#define XLLF_TDFV_OFFSET 0x0000000c  /**< Transmit Vacancy */
#define XLLF_TDFD_OFFSET 0x00000010  /**< Transmit Data */
#define XLLF_AXI4_TDFD_OFFSET   0x00000000  /**< Axi4 Transmit Data */
#define XLLF_TLF_OFFSET  0x00000014  /**< Transmit Length */

#define XLLF_RDFR_OFFSET 0x00000018  /**< Receive Reset */
#define XLLF_RDFO_OFFSET 0x0000001c  /**< Receive Occupancy */
#define XLLF_RDFD_OFFSET 0x00000020  /**< Receive Data */
// 2021.9.9 chaosu change AXI4 RDFD offset to fit register change
// temp solution
// #define XLLF_AXI4_RDFD_OFFSET 	0x00001000  /**< Axi4 Receive Data */
#define XLLF_AXI4_RDFD_OFFSET 	0x00011000 // + 0x10000

#define XLLF_RLF_OFFSET  0x00000024  /**< Receive Length */
#define XLLF_LLR_OFFSET  0x00000028  /**< Local Link Reset */
#define XLLF_TDR_OFFSET  0x0000002C  /**< Transmit Destination  */
#define XLLF_RDR_OFFSET  0x00000030  /**< Receive Destination  */
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
		unsigned
		int *vlan103_received,
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
		);
#endif
