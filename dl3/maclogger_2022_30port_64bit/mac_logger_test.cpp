/*******************************************************************************

*******************************************************************************/
#include <stdio.h>
// #include <string.h>
#include "mac_logger.h"


int main()
{
	int i;
#ifndef OLD
	unsigned int fifo[1024*5];
#ifdef USE32BIT
	data_t fifo_axi_full[1040];
#endif
#ifdef USE64BIT
	data_t fifo_axi_full[514];
#endif

	long long logddr[2048*200/8];
	long long tapddr[2048*200/8];
	unsigned int status = 0;

#else
	int fifo[0x11000/4 + 1];
	unsigned int logddr[2048*200/4];
	unsigned int tapddr[2048*200/4];
	int status = 0;
#endif

	long long ts = 100;
	unsigned short writeStatus = 0;
	long long timestamp;
	unsigned int logger_vlan_enable_mask = 0xFFFFFFFF;
	unsigned int vlan100_received = 0;
	unsigned int vlan101_received = 0;
	unsigned int vlan102_received = 0;
	unsigned int vlan103_received = 0;
	unsigned int vlan104_received = 0;
	unsigned int vlan105_received = 0;
	unsigned int vlan106_received = 0;
	unsigned int vlan107_received = 0;
	unsigned int vlan108_received = 0;
	unsigned int vlan109_received = 0;
	unsigned int vlan110_received = 0;
	unsigned int vlan111_received = 0;
	unsigned int vlan112_received = 0;
	unsigned int vlan113_received = 0;
	unsigned int vlan114_received = 0;
	unsigned int vlan115_received = 0;
	unsigned int vlan116_received = 0;
	unsigned int vlan117_received = 0;
	unsigned int vlan118_received = 0;
	unsigned int vlan119_received = 0;
	unsigned int vlan120_received = 0;
	unsigned int vlan121_received = 0;
	unsigned int vlan122_received = 0;
	unsigned int vlan123_received = 0;
	unsigned int vlan124_received = 0;
	unsigned int vlan125_received = 0;
	unsigned int vlan126_received = 0;
	unsigned int vlan127_received = 0;
	unsigned int vlan128_received = 0;
	unsigned int vlan129_received = 0;
	unsigned int droped = 0;
	unsigned int multicast_recv_enable = 0;
	unsigned int unicast_filter_enable = 0;
	unsigned int unicast_vlan100_macaddr_lsb = 0;
	unsigned int unicast_vlan100_macaddr_msb = 0;
	unsigned int unicast_vlan101_macaddr_lsb = 0;
	unsigned int unicast_vlan101_macaddr_msb = 0;
	unsigned int unicast_vlan102_macaddr_lsb = 0;
	unsigned int unicast_vlan102_macaddr_msb = 0;
	unsigned int unicast_vlan103_macaddr_lsb = 0;
	unsigned int unicast_vlan103_macaddr_msb = 0;
	unsigned int unicast_vlan104_macaddr_lsb = 0;
	unsigned int unicast_vlan104_macaddr_msb = 0;
	unsigned int unicast_vlan105_macaddr_lsb = 0;
	unsigned int unicast_vlan105_macaddr_msb = 0;
	unsigned int unicast_vlan106_macaddr_lsb = 0;
	unsigned int unicast_vlan106_macaddr_msb = 0;
	unsigned int unicast_vlan107_macaddr_lsb = 0;
	unsigned int unicast_vlan107_macaddr_msb = 0;
	unsigned int unicast_vlan108_macaddr_lsb = 0;
	unsigned int unicast_vlan108_macaddr_msb = 0;
	unsigned int unicast_vlan109_macaddr_lsb = 0;
	unsigned int unicast_vlan109_macaddr_msb = 0;
	unsigned int unicast_vlan110_macaddr_lsb = 0;
	unsigned int unicast_vlan110_macaddr_msb = 0;
	unsigned int unicast_vlan111_macaddr_lsb = 0;
	unsigned int unicast_vlan111_macaddr_msb = 0;
	unsigned int unicast_vlan112_macaddr_lsb = 0;
	unsigned int unicast_vlan112_macaddr_msb = 0;
	unsigned int unicast_vlan113_macaddr_lsb = 0;
	unsigned int unicast_vlan113_macaddr_msb = 0;
	unsigned int unicast_vlan114_macaddr_lsb = 0;
	unsigned int unicast_vlan114_macaddr_msb = 0;
	unsigned int unicast_vlan115_macaddr_lsb = 0;
	unsigned int unicast_vlan115_macaddr_msb = 0;
	unsigned int unicast_vlan116_macaddr_lsb = 0;
	unsigned int unicast_vlan116_macaddr_msb = 0;
	unsigned int unicast_vlan117_macaddr_lsb = 0;
	unsigned int unicast_vlan117_macaddr_msb = 0;
	unsigned int unicast_vlan118_macaddr_lsb = 0;
	unsigned int unicast_vlan118_macaddr_msb = 0;
	unsigned int unicast_vlan119_macaddr_lsb = 0;
	unsigned int unicast_vlan119_macaddr_msb = 0;
	unsigned int unicast_vlan120_macaddr_lsb = 0;
	unsigned int unicast_vlan120_macaddr_msb = 0;
	unsigned int unicast_vlan121_macaddr_lsb = 0;
	unsigned int unicast_vlan121_macaddr_msb = 0;
	unsigned int unicast_vlan122_macaddr_lsb = 0;
	unsigned int unicast_vlan122_macaddr_msb = 0;
	unsigned int unicast_vlan123_macaddr_lsb = 0;
	unsigned int unicast_vlan123_macaddr_msb = 0;
	unsigned int unicast_vlan124_macaddr_lsb = 0;
	unsigned int unicast_vlan124_macaddr_msb = 0;
	unsigned int unicast_vlan125_macaddr_lsb = 0;
	unsigned int unicast_vlan125_macaddr_msb = 0;
	unsigned int unicast_vlan126_macaddr_lsb = 0;
	unsigned int unicast_vlan126_macaddr_msb = 0;
	unsigned int unicast_vlan127_macaddr_lsb = 0;
	unsigned int unicast_vlan127_macaddr_msb = 0;
	unsigned int unicast_vlan128_macaddr_lsb = 0;
	unsigned int unicast_vlan128_macaddr_msb = 0;
	unsigned int unicast_vlan129_macaddr_lsb = 0;
	unsigned int unicast_vlan129_macaddr_msb = 0;
	unsigned int log_all_mask = 0;

	logddr[0] = 0x000000007e7e7e7e;		//pl status, magic number
	logddr[1] = 0x6400000000000000;		// count, ps status
	logddr[2] = 0x0000000000080000;		// read index, length	0x800 = 2048
	logddr[3] = 0x0000000000000000;		// port type, write index

	tapddr[0] = 0x000000007e7e7e7e;		//pl status, magic number
	tapddr[1] = 0x6400000000000000;		// count, ps status
	tapddr[2] = 0x0000000000080000;		// read index, length	0x800 = 2048
	tapddr[3] = 0x0000000000000000;		// port type, write index

	ts = 0x886612345678;

	//1024 assignment
	for(i=0; i < 0x1002/4; i++){
	  fifo[i] = 0x66008888;
	}
	unicast_filter_enable = 0xFF;
	unicast_vlan102_macaddr_lsb = 0x00668888;
	unicast_vlan102_macaddr_msb = 0x8888;

#ifndef OLD
	for(i=0; i < sizeof(fifo_axi_full); i++){
	//for(i=0; i < 1040; i++){
	  fifo_axi_full[i] = i;
	}
#endif

	fifo[XLLF_RDFO_OFFSET/4] = 1;
	fifo[XLLF_RLF_OFFSET/4] = 1522; 	//length
#ifndef OLD
#ifdef USE32BIT
	fifo_axi_full[XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE] = 0x66008888;
#endif
#ifdef USE64BIT
	fifo_axi_full[XLLF_AXI4_RDFD_OFFSET/S2FIFO_AXI4_WORD_SIZE] = 0x6600888865008888;
#endif

#else
	fifo[0x11000/4] = 0x66008888;
#endif
	//simulate real test board when data is 0
/*
	for(i = 0; i < 2; i++) {
	  ts+= 0x10;
	  if((i % 2)) {
			fifo[XLLF_RDFO_OFFSET/4] = 1;
			fifo[XLLF_RLF_OFFSET/4] = 1522; 	//length
#ifndef OLD
			fifo_axi_full[XLLF_AXI4_RDFD_OFFSET/4] = 0;
#endif
			printf("fifo data change to 0\r\n");
	  } else {
		  printf("fifo data change to 1\r\n");
			fifo[XLLF_RDFO_OFFSET/4] = 1;
			fifo[XLLF_RLF_OFFSET/4] = 1522; 	//length
#ifndef OLD
			fifo_axi_full[XLLF_AXI4_RDFD_OFFSET/4] = 0x66008888;
#endif
	  }*/
	  mac_logger(fifo,
#ifndef OLD
			logddr,
			tapddr,
#else
			(unsigned char *) logddr,
			(unsigned char *) tapddr,
#endif
			&status,
			&writeStatus,
			ts,
			&logger_vlan_enable_mask,
			&vlan100_received,
			&vlan101_received,
			&vlan102_received,
			&vlan103_received,
			&vlan104_received,
			&vlan105_received,
			&vlan106_received,
			&vlan107_received,
			&vlan108_received,
			&vlan109_received,
			&vlan110_received,
			&vlan111_received,
			&vlan112_received,
			&vlan113_received,
			&vlan114_received,
			&vlan115_received,
			&vlan116_received,
			&vlan117_received,
			&vlan118_received,
			&vlan119_received,
			&vlan120_received,
			&vlan121_received,
			&vlan122_received,
			&vlan123_received,
			&vlan124_received,
			&vlan125_received,
			&vlan126_received,
			&vlan127_received,
			&vlan128_received,
			&vlan129_received,
			&droped,
			&multicast_recv_enable,
			&unicast_filter_enable,
			&unicast_vlan100_macaddr_lsb,
			&unicast_vlan100_macaddr_msb,
			&unicast_vlan101_macaddr_lsb,
			&unicast_vlan101_macaddr_msb,
			&unicast_vlan102_macaddr_lsb,
			&unicast_vlan102_macaddr_msb,
			&unicast_vlan103_macaddr_lsb,
			&unicast_vlan103_macaddr_msb,
			&unicast_vlan104_macaddr_lsb,
			&unicast_vlan104_macaddr_msb,
			&unicast_vlan105_macaddr_lsb,
			&unicast_vlan105_macaddr_msb,
			&unicast_vlan106_macaddr_lsb,
			&unicast_vlan106_macaddr_msb,
			&unicast_vlan107_macaddr_lsb,
			&unicast_vlan107_macaddr_msb,
			&unicast_vlan108_macaddr_lsb,
			&unicast_vlan108_macaddr_msb,
			&unicast_vlan109_macaddr_lsb,
			&unicast_vlan109_macaddr_msb,
			&unicast_vlan110_macaddr_lsb,
			&unicast_vlan110_macaddr_msb,
			&unicast_vlan111_macaddr_lsb,
			&unicast_vlan111_macaddr_msb,
			&unicast_vlan112_macaddr_lsb,
			&unicast_vlan112_macaddr_msb,
			&unicast_vlan113_macaddr_lsb,
			&unicast_vlan113_macaddr_msb,
			&unicast_vlan114_macaddr_lsb,
			&unicast_vlan114_macaddr_msb,
			&unicast_vlan115_macaddr_lsb,
			&unicast_vlan115_macaddr_msb,
			&unicast_vlan116_macaddr_lsb,
			&unicast_vlan116_macaddr_msb,
			&unicast_vlan117_macaddr_lsb,
			&unicast_vlan117_macaddr_msb,
			&unicast_vlan118_macaddr_lsb,
			&unicast_vlan118_macaddr_msb,
			&unicast_vlan119_macaddr_lsb,
			&unicast_vlan119_macaddr_msb,
			&unicast_vlan120_macaddr_lsb,
			&unicast_vlan120_macaddr_msb,
			&unicast_vlan121_macaddr_lsb,
			&unicast_vlan121_macaddr_msb,
			&unicast_vlan122_macaddr_lsb,
			&unicast_vlan122_macaddr_msb,
			&unicast_vlan123_macaddr_lsb,
			&unicast_vlan123_macaddr_msb,
			&unicast_vlan124_macaddr_lsb,
			&unicast_vlan124_macaddr_msb,
			&unicast_vlan125_macaddr_lsb,
			&unicast_vlan125_macaddr_msb,
			&unicast_vlan126_macaddr_lsb,
			&unicast_vlan126_macaddr_msb,
			&unicast_vlan127_macaddr_lsb,
			&unicast_vlan127_macaddr_msb,
			&unicast_vlan128_macaddr_lsb,
			&unicast_vlan128_macaddr_msb,
			&unicast_vlan129_macaddr_lsb,
			&unicast_vlan129_macaddr_msb,
#ifndef OLD
			&log_all_mask,
			fifo_axi_full);
#else
	  &log_all_mask);
#endif



		for(i=0; i < 514; i++){
			printf("ddr%llx\n",logddr[i]);

		}

	printf("old output**************************\r\n");
	printf("header magic: 7e7e7e7e rxStatus: 0 txStatus: 0 count: 64000000 Frame size: 80000 Rxindex: 0 Txindex: 3000000\r\n");
	printf("index: 0  2010000  98563412  1c000201  66008888  66008888  66008888  66008888  66008888  66008888  66008888  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0\r\n");
	printf("index: 1  2010000  c8563412  1c000201  66008888  66008888  66008888  66008888  66008888  66008888  66008888  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0\r\n");
	printf("index: 2  2010000  f8563412  1c000201  66008888  66008888  66008888  66008888  66008888  66008888  66008888  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0\r\n");

  return 0;

}




