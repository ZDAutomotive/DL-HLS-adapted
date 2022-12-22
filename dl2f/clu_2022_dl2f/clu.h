/*
 * Ring Buffer Struct
 * typedef struct
 *	{
 *		unsigned int magicNumber;           0
 *		unsigned int plStatus;              4
 *		unsigned int psStatus;				8
 *		unsigned int count;					12
 *		unsigned int frameLength;			16
 *		unsigned int readIndex;				20
 *		unsigned int writeIndex;			24
 *	} __attribute__((packed, aligned(4))) Ringbuffer_Header_T;
 *	    LEN 								28
 *
 */
#ifndef _clu
#define _clu
#define WRITE_INDEX_POS                         24
#define RINGBUFFER_HEADER_LEN                   28
// interface/port types
#define INTERFACE_TYPE_ETHERNET					1
#define INTERFACE_TYPE_CAN						2
#define INTERFACE_TYPE_LIN						3
#define INTERFACE_TYPE_UART						4
#define INTERFACE_TYPE_FLEXRAY					5
#define ETHERNET_RAWLOG_RESERVED_LENGTH			2048
#define CAN_RAWLOG_RESERVED_LENGTH				80
#define LIN_RAWLOG_RESERVED_LENGTH				16
#define UART_RAWLOG_RESERVED_LENGTH				192
#define FLEXRAY_RAWLOG_RESERVED_LENGTH			512
#define HEADER_LENGTH                           12
#define RINGBUFFER_WRITE_LSB_OFFSET 7
#define RINGBUFFER_WRITE_MSB_OFFSET 6
#define MAX_CAN_NUMBER							12
#define MAX_LIN_NUMBER							10
#define MAX_UART_NUMBER							8

void can (volatile int *canbase, int *enable, volatile unsigned char *ddr, long long timestamp, volatile unsigned int *received_can);
void dlin(volatile int *linbase, int *enable_device, volatile unsigned char *ddr, long long timestamp, volatile unsigned int *received_lin);
void uart(volatile int *uartbase, char *init_device, volatile unsigned char *ddr, long long timestamp, volatile unsigned int *received_uart);
void update_write_index(volatile unsigned char *ddr, unsigned int write_index);

#endif
