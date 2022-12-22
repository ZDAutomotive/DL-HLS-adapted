#include<stdio.h>
#include<string.h>
#include "can.h"
#include "clu.h"
// interface/port types
#define CAN_FRAME_LENGTH					(HEADER_LENGTH + CAN_RAWLOG_RESERVED_LENGTH)
#define XCANFD_IDR_ID1_SHIFT                   21
#define XCANFD_IDE_SHIFT                       19
#define XCANFD_RTR_SHIFT                       20
#define CAN_BASE_SHIFT                        (0x00010000 * 8) >> 2
//static char canArray[CAN_RAWLOG_RESERVED_LENGTH] = {};
//static int canIndex = 0;
//static unsigned short writeCanIndex = 0;
static unsigned short dropped_can_counter = 0;
static unsigned int internal_can_counter = 0;      // debug counter for received can trace
// 12 bytes header struct
typedef struct {
	long long          timestamp;
	unsigned char      port_type;
	unsigned char      port_id;
	unsigned short     pkt_len_bytes;
}_canPacketHeader;

int XCanFd_GetDlc2len(unsigned int Dlc, unsigned int Edl)
{

	unsigned int NofBytes=0;
	if ((Edl == 0U) && ((Dlc >> XCANFD_DLCR_DLC_SHIFT) > 8)) {
		Dlc = XCANFD_DLC8;
	}

	switch(Dlc) {
		case  XCANFD_DLC1:
				NofBytes = 1;
				break;

		case XCANFD_DLC2:
				NofBytes = 2;
				break;

		case  XCANFD_DLC3:
				NofBytes = 3;
				break;

		case  XCANFD_DLC4:
				NofBytes = 4;
				break;

		case  XCANFD_DLC5:
				NofBytes = 5;
				break;

		case  XCANFD_DLC6:
				NofBytes = 6;
				break;

		case  XCANFD_DLC7:
				NofBytes = 7;
				break;

		case  XCANFD_DLC8:
				NofBytes = 8;
				break;

		case  XCANFD_DLC9:
				NofBytes = 12;
				break;

		case  XCANFD_DLC10:
				NofBytes = 16;
				break;

		case  XCANFD_DLC11:
				NofBytes = 20;
				break;

		case  XCANFD_DLC12:
				NofBytes = 24;
				break;

		case  XCANFD_DLC13:
				NofBytes = 32;
				break;

		case XCANFD_DLC14:
				NofBytes = 48;
				break;

		case XCANFD_DLC15:
				NofBytes = 64;
				break;
		default	:
				break;
	}
	return NofBytes;
}
void write_ddr(volatile unsigned char *ddr_header, char *data) {
//	unsigned char *ddr_header;
//	ddr_header = ddr - RINGBUFFER_HEADER_LEN;
	unsigned char ringbuffer_header_bytes[RINGBUFFER_HEADER_LEN] = {0};
	unsigned int readCanIndex, writeCanIndex, nextWriteCanIndex, max_can_count;

	memcpy(ringbuffer_header_bytes, ddr_header, RINGBUFFER_HEADER_LEN);
	max_can_count = (unsigned int)(ringbuffer_header_bytes[12] << 24) |
			(unsigned int)(ringbuffer_header_bytes[13] << 16) |
			(unsigned int)(ringbuffer_header_bytes[14] << 8) |
			(unsigned int)ringbuffer_header_bytes[15];
	readCanIndex = (unsigned int)(ringbuffer_header_bytes[20] << 24) |
			(unsigned int)(ringbuffer_header_bytes[21] << 16) |
			(unsigned int)(ringbuffer_header_bytes[22] << 8) |
			(unsigned int)ringbuffer_header_bytes[23];
	writeCanIndex = (unsigned int)(ringbuffer_header_bytes[24] << 24) |
			(unsigned int)(ringbuffer_header_bytes[25] << 16) |
			(unsigned int)(ringbuffer_header_bytes[26] << 8) |
			(unsigned int)ringbuffer_header_bytes[27];
	nextWriteCanIndex = (writeCanIndex + 1) % max_can_count;

	if (nextWriteCanIndex == readCanIndex) {
		dropped_can_counter++;
		*(ddr_header + 4) = dropped_can_counter;
		return;
	}
	else {
		//	*(ddr+offset) = data;
//		can_ddrIndex = writeCanIndex * CAN_FRAME_LENGTH;
		memcpy(ddr_header + RINGBUFFER_HEADER_LEN + writeCanIndex * CAN_FRAME_LENGTH,
				data,
				CAN_FRAME_LENGTH);
		update_write_index(ddr_header, nextWriteCanIndex);
	}
}

int XCanFd_ReadReg(volatile int *canbase, int offset) {
	return *(canbase + (offset >> 2));
}
void XCanFd_WriteReg(volatile int *canbase, int offset, int data) {
	*(canbase + (offset >> 2)) = data;
}
int recvFrame_logic (volatile int *canbase,
		volatile unsigned char *ddr,
		int FifoNo, int readIndex,
		int FsrVal,
		int EN,
		long long timestamp,
		volatile unsigned int *can_0_received,
		volatile unsigned int *can_1_received,
		volatile unsigned int *can_2_received,
		volatile unsigned int *can_3_received,
		volatile unsigned int *can_dropped,
		volatile unsigned int *received_can) {

	static unsigned int counter_can_0 = 0;
#pragma HLS reset variable = counter_can_0
	static unsigned int counter_can_1 = 0;
#pragma HLS reset variable = counter_can_1
	static unsigned int counter_can_2 = 0;
#pragma HLS reset variable = counter_can_2
	static unsigned int counter_can_3 = 0;
#pragma HLS reset variable = counter_can_3
	static unsigned int counter_droped = 0;
#pragma HLS reset variable = counter_droped


  unsigned int FrameID, orFrameID, frameDLC, DwIndex = 0, canIndex = 8;
  // Read ID from ID Register
  unsigned char can_frame[HEADER_LENGTH + CAN_RAWLOG_RESERVED_LENGTH] = {0};
  // default fifo 0
  orFrameID = *(canbase + (XCANFD_RXFIFO_0_BASE_ID_OFFSET+(readIndex*XCANFD_MAX_FRAME_SIZE)) / 4);

  // extended frame
  can_frame[HEADER_LENGTH + 4] = (orFrameID >> XCANFD_IDE_SHIFT) & 0x01;
  if (((orFrameID >> XCANFD_IDE_SHIFT) & 0x01) == 0) {
	// frame id
	FrameID = orFrameID >> XCANFD_IDR_ID1_SHIFT;
	// remote frame
	can_frame[HEADER_LENGTH + 5] = (orFrameID >> XCANFD_RTR_SHIFT) & 0x01;
  } else {
	// frame id
	FrameID = (((orFrameID >> XCANFD_IDR_ID1_SHIFT) & 0x7FF) << 18) | ((orFrameID >> 1) & 0x3FFFF);
	// remote frame
	can_frame[HEADER_LENGTH + 5] = (orFrameID) & 0x01;
  }
  can_frame[HEADER_LENGTH + 0] = (FrameID & 0xFF000000) >> 24;
  can_frame[HEADER_LENGTH + 1] = (FrameID & 0x00FF0000) >> 16;
  can_frame[HEADER_LENGTH + 2] = (FrameID & 0x0000FF00) >> 8;
  can_frame[HEADER_LENGTH + 3] = (FrameID & 0x000000FF);


  // Read DLC from DLC Register
  // default fifo 0
  frameDLC = *(canbase + (XCANFD_RXFIFO_0_BASE_DLC_OFFSET+(readIndex*XCANFD_MAX_FRAME_SIZE)) / 4);
  // Read Can FD data

  unsigned int CanEDL = frameDLC;

  unsigned int Dlc = XCanFd_GetDlc2len(frameDLC & XCANFD_DLCR_DLC_MASK, (CanEDL & XCANFD_DLCR_EDL_MASK));
  unsigned char id_can = (unsigned char)((EN + 8) & 0xFF);
  unsigned short len_can = (unsigned short)(Dlc & 0xFFFF);

  _canPacketHeader PL_Header = {
  	  timestamp, INTERFACE_TYPE_CAN, id_can, len_can
  };
  can_frame[0] = (unsigned char) ((PL_Header.timestamp >> 56) & 0xFF);
  can_frame[1] = (unsigned char) ((PL_Header.timestamp >> 48) & 0xFF);
  can_frame[2] = (unsigned char) ((PL_Header.timestamp >> 40) & 0xFF);
  can_frame[3] = (unsigned char) ((PL_Header.timestamp >> 32) & 0xFF);
  can_frame[4] = (unsigned char) ((PL_Header.timestamp >> 24) & 0xFF);
  can_frame[5] = (unsigned char) ((PL_Header.timestamp >> 16) & 0xFF);
  can_frame[6] = (unsigned char) ((PL_Header.timestamp >> 8) & 0xFF);
  can_frame[7] = (unsigned char) ((PL_Header.timestamp) & 0xFF);
  can_frame[8] = (unsigned char) ((PL_Header.port_type) & 0xFF);
  can_frame[9] = (unsigned char) ((PL_Header.port_id) & 0xFF);
  can_frame[10] = (unsigned char) (((PL_Header.pkt_len_bytes + canIndex) >> 8) & 0xFF);
  can_frame[11] = (unsigned char) ((PL_Header.pkt_len_bytes + canIndex) & 0xFF);
  // direction
  can_frame[HEADER_LENGTH + 6] = (unsigned char) (0x00);
  // frame length
  can_frame[HEADER_LENGTH + 7] = (unsigned char) ((PL_Header.pkt_len_bytes) & 0xFF);

  if (CanEDL & XCANFD_DLCR_EDL_MASK) {
	  // can fd frames
//	  can_frame[HEADER_LENGTH + 6] = 1;
	  for (int Len = 0;Len < Dlc;Len += 4) {
		// we only use fifo 0
		int data = *(canbase + (XCANFD_RXFIFO_0_BASE_DW0_OFFSET+(readIndex*XCANFD_MAX_FRAME_SIZE)
		  								+ (DwIndex*XCANFD_DW_BYTES))/4);
		can_frame[HEADER_LENGTH + canIndex] = (data & 0xFF000000) >> 24;
		can_frame[HEADER_LENGTH + canIndex + 1] = (data & 0x00FF0000) >> 16;
		can_frame[HEADER_LENGTH + canIndex + 2] = (data & 0x0000FF00) >> 8;
		can_frame[HEADER_LENGTH + canIndex + 3] = (data & 0x000000FF);
		canIndex += 4;
		DwIndex++;
	  }
  } else {
	  // can frames
//	  can_frame[HEADER_LENGTH + 6] = 0;
	  for (int Len = 0;Len < Dlc;Len += 4) {
		int data = *(canbase + (XCANFD_RXFIFO_0_BASE_DW0_OFFSET+(readIndex*XCANFD_MAX_FRAME_SIZE)
		  											+ Len) / 4);
		can_frame[HEADER_LENGTH + canIndex] = (data & 0xFF000000) >> 24;
		can_frame[HEADER_LENGTH + canIndex + 1] = (data & 0x00FF0000) >> 16;
		can_frame[HEADER_LENGTH + canIndex + 2] = (data & 0x0000FF00) >> 8;
		can_frame[HEADER_LENGTH + canIndex + 3] = (data & 0x000000FF);
		canIndex += 4;
		DwIndex++;
	  }
  }

	switch(PL_Header.port_id) {
		case 0:
			(counter_can_0)++;
			//*vlan100_received = counter_vlan100;
			break;
		case 1:
			(counter_can_1)++;
			//*vlan101_received = counter_vlan101;
			break;
		case 2:
			(counter_can_2)++;
			//*vlan102_received = counter_vlan102;
			break;
		case 3:
			(counter_can_3)++;
			//*vlan103_received = counter_vlan103;
			break;
		default:
			(counter_droped)++;
			//*droped = counter_droped;
			break;
	}

	*can_0_received = counter_can_0;
	*can_1_received = counter_can_1;
	*can_2_received = counter_can_2;
	*can_3_received = counter_can_3;
	*can_dropped = counter_droped;

  internal_can_counter++;
  *received_can = internal_can_counter;
  write_ddr(ddr, &can_frame[0]);
  FsrVal = *(canbase + XCANFD_FSR_OFFSET / 4);
  FsrVal |= XCANFD_FSR_IRI_MASK;
  *(canbase + XCANFD_FSR_OFFSET / 4) = FsrVal;
  return 0;
}

void CanFd_Recv_Sequential(volatile int *canbase,
		volatile unsigned char *ddr,
		int *enable_device,
		int EN,
		long long timestamp,
		volatile unsigned int *can_0_received,
		volatile unsigned int *can_1_received,
		volatile unsigned int *can_2_received,
		volatile unsigned int *can_3_received,
		volatile unsigned int *can_dropped,
		volatile unsigned int *received_can) {

	if (*enable_device & (0x01 << EN)) {
		volatile int *canaddr_mod;
		canaddr_mod = canbase + ((0x00010000 * EN) >> 2);
		int result = *(canaddr_mod + XCANFD_FSR_OFFSET / 4);
		int readIndex = 0, FifoNo = 0xFF, status = 13;
		if ((result & XCANFD_FSR_FL_MASK) || (result & XCANFD_FSR_FL_1_MASK)) {
			// received msg
			if (result & XCANFD_FSR_FL_MASK) {
				readIndex = result & XCANFD_FSR_RI_MASK;
				FifoNo = XCANFD_RX_FIFO_0;
			}
			if (result & XCANFD_FSR_FL_1_MASK) {
				readIndex = (result & XCANFD_FSR_IRI_1_MASK) >> XCANFD_FSR_RI_1_SHIFT;
				FifoNo = XCANFD_RX_FIFO_1;
			}
			status = recvFrame_logic(canaddr_mod, ddr, FifoNo, readIndex, result, EN, timestamp,
					can_0_received, can_1_received, can_2_received, can_3_received, can_dropped,received_can);
		}
	}
}



void can (volatile int *canbase,
		int *enable,
		volatile unsigned char *ddr,
		long long timestamp,
		volatile unsigned int *can_0_received,
		volatile unsigned int *can_1_received,
		volatile unsigned int *can_2_received,
		volatile unsigned int *can_3_received,
		volatile unsigned int *can_dropped,
		volatile unsigned int *received_can) {
//	unsigned char *ddr_data;
//	ddr_data = ddr + RINGBUFFER_HEADER_LEN;
	// since in datalogger 2F we only use the last 4 CAN ports from 8 - 11
	for (int jj = 0; jj < MAX_CAN_NUMBER; jj++){
		CanFd_Recv_Sequential(canbase, ddr, enable, jj, timestamp,
				              can_0_received, can_1_received, can_2_received, can_3_received, can_dropped,received_can);
	}
}
