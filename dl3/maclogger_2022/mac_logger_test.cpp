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
	data_t fifo_axi_full[1028];
#endif
#ifdef USE64BIT
	data_t fifo_axi_full[514];
#endif

	unsigned int logddr[2048*200/4];
	unsigned int tapddr[2048*200/4];
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
	unsigned int log_all_mask = 0;

	logddr[0] = 0x7e7e7e7e;		//magic number
	logddr[1] = 0;			// pl status
	logddr[2] = 0;			// ps status
	logddr[3] = 0x64 << 24;			// count
	logddr[4] = 0x08 << 16;			// length	0x800 = 2048
	logddr[5] = 0;			// read index
	logddr[6] = 0;			// write index

	tapddr[0] = 0x7e7e7e7e;
	tapddr[1] = 0;
	tapddr[2] = 0;
	tapddr[3] = 0x64 << 24;
	tapddr[4] = 0x08 << 16;
	tapddr[5] = 0;
	tapddr[6] = 0;
	ts = 0x010212345678;
	for(i=0; i < 0x1002/4; i++){
	  fifo[i] = i;
	}
	unicast_filter_enable = 0xFF;
	unicast_vlan102_macaddr_lsb = 0x00668888;
	unicast_vlan102_macaddr_msb = 0x8888;
#ifndef OLD
	for(i=0; i < sizeof(fifo_axi_full); i++){
	  fifo_axi_full[i] = i;
	}
#endif
	fifo[XLLF_RDFO_OFFSET/4] = 1;
	fifo[XLLF_RLF_OFFSET/4] = 1522; 	//length
#ifndef OLD
#ifdef USE32BIT
	fifo_axi_full[XLLF_AXI4_RDFD_OFFSET/4] = 0x66008888;
#endif
#ifdef USE64BIT
	fifo_axi_full[XLLF_AXI4_RDFD_OFFSET/8] = 0x6600888865008888;
#endif

#else
	fifo[0x11000/4] = 0x66008888;
#endif
	//simulate real test board when data is 0

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
	  }
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
#ifndef OLD
			&log_all_mask,
			fifo_axi_full);
#else
	  &log_all_mask);
#endif
	}


	printf("registers: vlan100: %d, vlan101: %d, vlan102: %d, vlan103: %d, vlan104:%d, vlan105:%d, vlan106:%d, vlan107:%d, vlan108:%d, vlan109:%d, drop:%d \r\n",
			vlan100_received, vlan101_received,vlan102_received,vlan103_received,vlan104_received,vlan105_received,vlan106_received,vlan107_received,
			vlan108_received,vlan109_received,droped);
	for(int i = 0; i < 11; i++) {
		printf("%d ", logddr[0x64*2048/4 + i]);
	}
	printf("\r\n");

	printf("header magic: %x rxStatus: %x txStatus: %x count: %x Frame size: %x Rxindex: %x Txindex: %x \r\n",
			logddr[0], logddr[1], logddr[2], logddr[3], logddr[4], logddr[5], logddr[6]);

	for(int j = 0; j < 30; j++) {
	  printf("index: %d ", j);
	  for(i=0; i < 30; i++){
		printf(" %x ", logddr[(2048*j + 7*4 + i*4)/4]);
	  }
	  printf(" \r\n");
	}
	printf("tap****************\r\n");
	for(int j = 0; j < 30; j++) {
	  printf("index: %d ", j);
	  for(i=0; i < 30; i++){
		printf(" %x ", tapddr[(2048*j + 7*4 + i*4)/4]);
	  }
	  printf(" \r\n");
	}


	printf("old output**************************\r\n");
	printf("header magic: 7e7e7e7e rxStatus: 0 txStatus: 0 count: 64000000 Frame size: 80000 Rxindex: 0 Txindex: 3000000\r\n");
	printf("index: 0  2010000  98563412  1c000201  66008888  66008888  66008888  66008888  66008888  66008888  66008888  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0\r\n");
	printf("index: 1  2010000  c8563412  1c000201  66008888  66008888  66008888  66008888  66008888  66008888  66008888  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0\r\n");
	printf("index: 2  2010000  f8563412  1c000201  66008888  66008888  66008888  66008888  66008888  66008888  66008888  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0\r\n");
  return 0;
}




