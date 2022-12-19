#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_fifo "../tv/cdatafile/c.mac_logger.autotvin_fifo.dat"
#define AUTOTB_TVOUT_fifo "../tv/cdatafile/c.mac_logger.autotvout_fifo.dat"
#define AUTOTB_TVIN_ddr "../tv/cdatafile/c.mac_logger.autotvin_ddr.dat"
#define AUTOTB_TVOUT_ddr "../tv/cdatafile/c.mac_logger.autotvout_ddr.dat"
#define AUTOTB_TVIN_driver "../tv/cdatafile/c.mac_logger.autotvin_driver.dat"
#define AUTOTB_TVOUT_driver "../tv/cdatafile/c.mac_logger.autotvout_driver.dat"
#define AUTOTB_TVIN_status "../tv/cdatafile/c.mac_logger.autotvin_status.dat"
#define AUTOTB_TVOUT_status "../tv/cdatafile/c.mac_logger.autotvout_status.dat"
#define AUTOTB_TVIN_writeStatus "../tv/cdatafile/c.mac_logger.autotvin_writeStatus.dat"
#define AUTOTB_TVOUT_writeStatus "../tv/cdatafile/c.mac_logger.autotvout_writeStatus.dat"
#define AUTOTB_TVIN_timestamp "../tv/cdatafile/c.mac_logger.autotvin_timestamp.dat"
#define AUTOTB_TVOUT_timestamp "../tv/cdatafile/c.mac_logger.autotvout_timestamp.dat"
#define AUTOTB_TVIN_logger_vlan_enable_mask "../tv/cdatafile/c.mac_logger.autotvin_logger_vlan_enable_mask.dat"
#define AUTOTB_TVOUT_logger_vlan_enable_mask "../tv/cdatafile/c.mac_logger.autotvout_logger_vlan_enable_mask.dat"
#define AUTOTB_TVIN_vlan100_received "../tv/cdatafile/c.mac_logger.autotvin_vlan100_received.dat"
#define AUTOTB_TVOUT_vlan100_received "../tv/cdatafile/c.mac_logger.autotvout_vlan100_received.dat"
#define AUTOTB_TVIN_vlan101_received "../tv/cdatafile/c.mac_logger.autotvin_vlan101_received.dat"
#define AUTOTB_TVOUT_vlan101_received "../tv/cdatafile/c.mac_logger.autotvout_vlan101_received.dat"
#define AUTOTB_TVIN_vlan102_received "../tv/cdatafile/c.mac_logger.autotvin_vlan102_received.dat"
#define AUTOTB_TVOUT_vlan102_received "../tv/cdatafile/c.mac_logger.autotvout_vlan102_received.dat"
#define AUTOTB_TVIN_vlan103_received "../tv/cdatafile/c.mac_logger.autotvin_vlan103_received.dat"
#define AUTOTB_TVOUT_vlan103_received "../tv/cdatafile/c.mac_logger.autotvout_vlan103_received.dat"
#define AUTOTB_TVIN_vlan104_received "../tv/cdatafile/c.mac_logger.autotvin_vlan104_received.dat"
#define AUTOTB_TVOUT_vlan104_received "../tv/cdatafile/c.mac_logger.autotvout_vlan104_received.dat"
#define AUTOTB_TVIN_vlan105_received "../tv/cdatafile/c.mac_logger.autotvin_vlan105_received.dat"
#define AUTOTB_TVOUT_vlan105_received "../tv/cdatafile/c.mac_logger.autotvout_vlan105_received.dat"
#define AUTOTB_TVIN_vlan106_received "../tv/cdatafile/c.mac_logger.autotvin_vlan106_received.dat"
#define AUTOTB_TVOUT_vlan106_received "../tv/cdatafile/c.mac_logger.autotvout_vlan106_received.dat"
#define AUTOTB_TVIN_vlan107_received "../tv/cdatafile/c.mac_logger.autotvin_vlan107_received.dat"
#define AUTOTB_TVOUT_vlan107_received "../tv/cdatafile/c.mac_logger.autotvout_vlan107_received.dat"
#define AUTOTB_TVIN_vlan108_received "../tv/cdatafile/c.mac_logger.autotvin_vlan108_received.dat"
#define AUTOTB_TVOUT_vlan108_received "../tv/cdatafile/c.mac_logger.autotvout_vlan108_received.dat"
#define AUTOTB_TVIN_vlan109_received "../tv/cdatafile/c.mac_logger.autotvin_vlan109_received.dat"
#define AUTOTB_TVOUT_vlan109_received "../tv/cdatafile/c.mac_logger.autotvout_vlan109_received.dat"
#define AUTOTB_TVIN_vlan110_received "../tv/cdatafile/c.mac_logger.autotvin_vlan110_received.dat"
#define AUTOTB_TVOUT_vlan110_received "../tv/cdatafile/c.mac_logger.autotvout_vlan110_received.dat"
#define AUTOTB_TVIN_vlan111_received "../tv/cdatafile/c.mac_logger.autotvin_vlan111_received.dat"
#define AUTOTB_TVOUT_vlan111_received "../tv/cdatafile/c.mac_logger.autotvout_vlan111_received.dat"
#define AUTOTB_TVIN_vlan112_received "../tv/cdatafile/c.mac_logger.autotvin_vlan112_received.dat"
#define AUTOTB_TVOUT_vlan112_received "../tv/cdatafile/c.mac_logger.autotvout_vlan112_received.dat"
#define AUTOTB_TVIN_vlan113_received "../tv/cdatafile/c.mac_logger.autotvin_vlan113_received.dat"
#define AUTOTB_TVOUT_vlan113_received "../tv/cdatafile/c.mac_logger.autotvout_vlan113_received.dat"
#define AUTOTB_TVIN_vlan114_received "../tv/cdatafile/c.mac_logger.autotvin_vlan114_received.dat"
#define AUTOTB_TVOUT_vlan114_received "../tv/cdatafile/c.mac_logger.autotvout_vlan114_received.dat"
#define AUTOTB_TVIN_vlan115_received "../tv/cdatafile/c.mac_logger.autotvin_vlan115_received.dat"
#define AUTOTB_TVOUT_vlan115_received "../tv/cdatafile/c.mac_logger.autotvout_vlan115_received.dat"
#define AUTOTB_TVIN_vlan116_received "../tv/cdatafile/c.mac_logger.autotvin_vlan116_received.dat"
#define AUTOTB_TVOUT_vlan116_received "../tv/cdatafile/c.mac_logger.autotvout_vlan116_received.dat"
#define AUTOTB_TVIN_vlan117_received "../tv/cdatafile/c.mac_logger.autotvin_vlan117_received.dat"
#define AUTOTB_TVOUT_vlan117_received "../tv/cdatafile/c.mac_logger.autotvout_vlan117_received.dat"
#define AUTOTB_TVIN_vlan118_received "../tv/cdatafile/c.mac_logger.autotvin_vlan118_received.dat"
#define AUTOTB_TVOUT_vlan118_received "../tv/cdatafile/c.mac_logger.autotvout_vlan118_received.dat"
#define AUTOTB_TVIN_vlan119_received "../tv/cdatafile/c.mac_logger.autotvin_vlan119_received.dat"
#define AUTOTB_TVOUT_vlan119_received "../tv/cdatafile/c.mac_logger.autotvout_vlan119_received.dat"
#define AUTOTB_TVIN_vlan120_received "../tv/cdatafile/c.mac_logger.autotvin_vlan120_received.dat"
#define AUTOTB_TVOUT_vlan120_received "../tv/cdatafile/c.mac_logger.autotvout_vlan120_received.dat"
#define AUTOTB_TVIN_vlan121_received "../tv/cdatafile/c.mac_logger.autotvin_vlan121_received.dat"
#define AUTOTB_TVOUT_vlan121_received "../tv/cdatafile/c.mac_logger.autotvout_vlan121_received.dat"
#define AUTOTB_TVIN_vlan122_received "../tv/cdatafile/c.mac_logger.autotvin_vlan122_received.dat"
#define AUTOTB_TVOUT_vlan122_received "../tv/cdatafile/c.mac_logger.autotvout_vlan122_received.dat"
#define AUTOTB_TVIN_vlan123_received "../tv/cdatafile/c.mac_logger.autotvin_vlan123_received.dat"
#define AUTOTB_TVOUT_vlan123_received "../tv/cdatafile/c.mac_logger.autotvout_vlan123_received.dat"
#define AUTOTB_TVIN_vlan124_received "../tv/cdatafile/c.mac_logger.autotvin_vlan124_received.dat"
#define AUTOTB_TVOUT_vlan124_received "../tv/cdatafile/c.mac_logger.autotvout_vlan124_received.dat"
#define AUTOTB_TVIN_vlan125_received "../tv/cdatafile/c.mac_logger.autotvin_vlan125_received.dat"
#define AUTOTB_TVOUT_vlan125_received "../tv/cdatafile/c.mac_logger.autotvout_vlan125_received.dat"
#define AUTOTB_TVIN_vlan126_received "../tv/cdatafile/c.mac_logger.autotvin_vlan126_received.dat"
#define AUTOTB_TVOUT_vlan126_received "../tv/cdatafile/c.mac_logger.autotvout_vlan126_received.dat"
#define AUTOTB_TVIN_vlan127_received "../tv/cdatafile/c.mac_logger.autotvin_vlan127_received.dat"
#define AUTOTB_TVOUT_vlan127_received "../tv/cdatafile/c.mac_logger.autotvout_vlan127_received.dat"
#define AUTOTB_TVIN_vlan128_received "../tv/cdatafile/c.mac_logger.autotvin_vlan128_received.dat"
#define AUTOTB_TVOUT_vlan128_received "../tv/cdatafile/c.mac_logger.autotvout_vlan128_received.dat"
#define AUTOTB_TVIN_vlan129_received "../tv/cdatafile/c.mac_logger.autotvin_vlan129_received.dat"
#define AUTOTB_TVOUT_vlan129_received "../tv/cdatafile/c.mac_logger.autotvout_vlan129_received.dat"
#define AUTOTB_TVIN_droped "../tv/cdatafile/c.mac_logger.autotvin_droped.dat"
#define AUTOTB_TVOUT_droped "../tv/cdatafile/c.mac_logger.autotvout_droped.dat"
#define AUTOTB_TVIN_multicast_recv_enable "../tv/cdatafile/c.mac_logger.autotvin_multicast_recv_enable.dat"
#define AUTOTB_TVOUT_multicast_recv_enable "../tv/cdatafile/c.mac_logger.autotvout_multicast_recv_enable.dat"
#define AUTOTB_TVIN_unicast_filter_enable "../tv/cdatafile/c.mac_logger.autotvin_unicast_filter_enable.dat"
#define AUTOTB_TVOUT_unicast_filter_enable "../tv/cdatafile/c.mac_logger.autotvout_unicast_filter_enable.dat"
#define AUTOTB_TVIN_unicast_vlan100_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan100_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan100_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan100_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan100_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan100_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan100_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan100_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan101_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan101_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan101_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan101_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan101_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan101_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan101_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan101_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan102_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan102_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan102_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan102_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan102_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan102_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan102_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan102_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan103_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan103_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan103_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan103_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan103_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan103_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan103_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan103_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan104_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan104_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan104_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan104_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan104_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan104_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan104_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan104_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan105_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan105_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan105_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan105_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan105_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan105_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan105_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan105_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan106_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan106_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan106_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan106_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan106_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan106_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan106_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan106_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan107_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan107_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan107_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan107_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan107_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan107_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan107_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan107_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan108_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan108_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan108_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan108_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan108_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan108_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan108_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan108_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan109_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan109_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan109_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan109_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan109_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan109_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan109_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan109_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan110_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan110_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan110_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan110_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan110_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan110_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan110_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan110_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan111_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan111_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan111_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan111_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan111_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan111_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan111_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan111_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan112_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan112_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan112_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan112_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan112_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan112_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan112_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan112_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan113_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan113_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan113_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan113_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan113_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan113_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan113_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan113_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan114_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan114_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan114_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan114_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan114_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan114_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan114_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan114_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan115_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan115_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan115_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan115_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan115_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan115_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan115_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan115_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan116_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan116_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan116_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan116_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan116_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan116_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan116_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan116_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan117_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan117_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan117_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan117_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan117_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan117_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan117_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan117_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan118_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan118_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan118_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan118_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan118_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan118_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan118_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan118_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan119_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan119_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan119_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan119_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan119_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan119_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan119_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan119_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan120_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan120_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan120_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan120_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan120_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan120_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan120_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan120_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan121_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan121_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan121_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan121_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan121_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan121_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan121_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan121_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan122_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan122_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan122_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan122_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan122_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan122_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan122_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan122_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan123_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan123_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan123_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan123_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan123_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan123_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan123_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan123_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan124_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan124_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan124_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan124_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan124_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan124_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan124_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan124_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan125_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan125_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan125_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan125_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan125_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan125_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan125_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan125_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan126_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan126_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan126_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan126_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan126_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan126_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan126_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan126_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan127_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan127_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan127_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan127_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan127_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan127_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan127_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan127_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan128_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan128_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan128_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan128_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan128_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan128_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan128_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan128_macaddr_msb.dat"
#define AUTOTB_TVIN_unicast_vlan129_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan129_macaddr_lsb.dat"
#define AUTOTB_TVOUT_unicast_vlan129_macaddr_lsb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan129_macaddr_lsb.dat"
#define AUTOTB_TVIN_unicast_vlan129_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvin_unicast_vlan129_macaddr_msb.dat"
#define AUTOTB_TVOUT_unicast_vlan129_macaddr_msb "../tv/cdatafile/c.mac_logger.autotvout_unicast_vlan129_macaddr_msb.dat"
#define AUTOTB_TVIN_log_all_mask "../tv/cdatafile/c.mac_logger.autotvin_log_all_mask.dat"
#define AUTOTB_TVOUT_log_all_mask "../tv/cdatafile/c.mac_logger.autotvout_log_all_mask.dat"
#define AUTOTB_TVIN_fifo_axi_full_offset "../tv/cdatafile/c.mac_logger.autotvin_fifo_axi_full_offset.dat"
#define AUTOTB_TVOUT_fifo_axi_full_offset "../tv/cdatafile/c.mac_logger.autotvout_fifo_axi_full_offset.dat"
#define AUTOTB_TVIN_fifo_axi_full "../tv/cdatafile/c.mac_logger.autotvin_fifo_axi_full.dat"
#define AUTOTB_TVOUT_fifo_axi_full "../tv/cdatafile/c.mac_logger.autotvout_fifo_axi_full.dat"
#define AUTOTB_TVIN_mac_fifo "../tv/cdatafile/c.mac_logger.autotvin_mac_fifo.dat"
#define AUTOTB_TVOUT_mac_fifo "../tv/cdatafile/c.mac_logger.autotvout_mac_fifo.dat"
#define AUTOTB_TVIN_ps "../tv/cdatafile/c.mac_logger.autotvin_ps.dat"
#define AUTOTB_TVOUT_ps "../tv/cdatafile/c.mac_logger.autotvout_ps.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_vlan100_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan100_received.dat"
#define AUTOTB_TVOUT_PC_vlan101_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan101_received.dat"
#define AUTOTB_TVOUT_PC_vlan102_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan102_received.dat"
#define AUTOTB_TVOUT_PC_vlan103_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan103_received.dat"
#define AUTOTB_TVOUT_PC_vlan104_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan104_received.dat"
#define AUTOTB_TVOUT_PC_vlan105_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan105_received.dat"
#define AUTOTB_TVOUT_PC_vlan106_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan106_received.dat"
#define AUTOTB_TVOUT_PC_vlan107_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan107_received.dat"
#define AUTOTB_TVOUT_PC_vlan108_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan108_received.dat"
#define AUTOTB_TVOUT_PC_vlan109_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan109_received.dat"
#define AUTOTB_TVOUT_PC_vlan110_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan110_received.dat"
#define AUTOTB_TVOUT_PC_vlan111_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan111_received.dat"
#define AUTOTB_TVOUT_PC_vlan112_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan112_received.dat"
#define AUTOTB_TVOUT_PC_vlan113_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan113_received.dat"
#define AUTOTB_TVOUT_PC_vlan114_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan114_received.dat"
#define AUTOTB_TVOUT_PC_vlan115_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan115_received.dat"
#define AUTOTB_TVOUT_PC_vlan116_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan116_received.dat"
#define AUTOTB_TVOUT_PC_vlan117_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan117_received.dat"
#define AUTOTB_TVOUT_PC_vlan118_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan118_received.dat"
#define AUTOTB_TVOUT_PC_vlan119_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan119_received.dat"
#define AUTOTB_TVOUT_PC_vlan120_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan120_received.dat"
#define AUTOTB_TVOUT_PC_vlan121_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan121_received.dat"
#define AUTOTB_TVOUT_PC_vlan122_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan122_received.dat"
#define AUTOTB_TVOUT_PC_vlan123_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan123_received.dat"
#define AUTOTB_TVOUT_PC_vlan124_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan124_received.dat"
#define AUTOTB_TVOUT_PC_vlan125_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan125_received.dat"
#define AUTOTB_TVOUT_PC_vlan126_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan126_received.dat"
#define AUTOTB_TVOUT_PC_vlan127_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan127_received.dat"
#define AUTOTB_TVOUT_PC_vlan128_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan128_received.dat"
#define AUTOTB_TVOUT_PC_vlan129_received "../tv/rtldatafile/rtl.mac_logger.autotvout_vlan129_received.dat"
#define AUTOTB_TVOUT_PC_droped "../tv/rtldatafile/rtl.mac_logger.autotvout_droped.dat"
#define AUTOTB_TVOUT_PC_fifo_axi_full "../tv/rtldatafile/rtl.mac_logger.autotvout_fifo_axi_full.dat"
#define AUTOTB_TVOUT_PC_mac_fifo "../tv/rtldatafile/rtl.mac_logger.autotvout_mac_fifo.dat"
#define AUTOTB_TVOUT_PC_ps "../tv/rtldatafile/rtl.mac_logger.autotvout_ps.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void mac_logger_hw_stub_wrapper(void*, void*, void*, void*, void*, hls::sim::Byte<8>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_mac_logger_hw(void* __xlx_apatb_param_fifo, void* __xlx_apatb_param_ddr, void* __xlx_apatb_param_driver, void* __xlx_apatb_param_status, void* __xlx_apatb_param_writeStatus, hls::sim::Byte<8> __xlx_apatb_param_timestamp, void* __xlx_apatb_param_logger_vlan_enable_mask, void* __xlx_apatb_param_vlan100_received, void* __xlx_apatb_param_vlan101_received, void* __xlx_apatb_param_vlan102_received, void* __xlx_apatb_param_vlan103_received, void* __xlx_apatb_param_vlan104_received, void* __xlx_apatb_param_vlan105_received, void* __xlx_apatb_param_vlan106_received, void* __xlx_apatb_param_vlan107_received, void* __xlx_apatb_param_vlan108_received, void* __xlx_apatb_param_vlan109_received, void* __xlx_apatb_param_vlan110_received, void* __xlx_apatb_param_vlan111_received, void* __xlx_apatb_param_vlan112_received, void* __xlx_apatb_param_vlan113_received, void* __xlx_apatb_param_vlan114_received, void* __xlx_apatb_param_vlan115_received, void* __xlx_apatb_param_vlan116_received, void* __xlx_apatb_param_vlan117_received, void* __xlx_apatb_param_vlan118_received, void* __xlx_apatb_param_vlan119_received, void* __xlx_apatb_param_vlan120_received, void* __xlx_apatb_param_vlan121_received, void* __xlx_apatb_param_vlan122_received, void* __xlx_apatb_param_vlan123_received, void* __xlx_apatb_param_vlan124_received, void* __xlx_apatb_param_vlan125_received, void* __xlx_apatb_param_vlan126_received, void* __xlx_apatb_param_vlan127_received, void* __xlx_apatb_param_vlan128_received, void* __xlx_apatb_param_vlan129_received, void* __xlx_apatb_param_droped, void* __xlx_apatb_param_multicast_recv_enable, void* __xlx_apatb_param_unicast_filter_enable, void* __xlx_apatb_param_unicast_vlan100_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan100_macaddr_msb, void* __xlx_apatb_param_unicast_vlan101_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan101_macaddr_msb, void* __xlx_apatb_param_unicast_vlan102_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan102_macaddr_msb, void* __xlx_apatb_param_unicast_vlan103_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan103_macaddr_msb, void* __xlx_apatb_param_unicast_vlan104_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan104_macaddr_msb, void* __xlx_apatb_param_unicast_vlan105_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan105_macaddr_msb, void* __xlx_apatb_param_unicast_vlan106_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan106_macaddr_msb, void* __xlx_apatb_param_unicast_vlan107_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan107_macaddr_msb, void* __xlx_apatb_param_unicast_vlan108_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan108_macaddr_msb, void* __xlx_apatb_param_unicast_vlan109_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan109_macaddr_msb, void* __xlx_apatb_param_unicast_vlan110_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan110_macaddr_msb, void* __xlx_apatb_param_unicast_vlan111_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan111_macaddr_msb, void* __xlx_apatb_param_unicast_vlan112_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan112_macaddr_msb, void* __xlx_apatb_param_unicast_vlan113_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan113_macaddr_msb, void* __xlx_apatb_param_unicast_vlan114_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan114_macaddr_msb, void* __xlx_apatb_param_unicast_vlan115_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan115_macaddr_msb, void* __xlx_apatb_param_unicast_vlan116_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan116_macaddr_msb, void* __xlx_apatb_param_unicast_vlan117_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan117_macaddr_msb, void* __xlx_apatb_param_unicast_vlan118_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan118_macaddr_msb, void* __xlx_apatb_param_unicast_vlan119_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan119_macaddr_msb, void* __xlx_apatb_param_unicast_vlan120_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan120_macaddr_msb, void* __xlx_apatb_param_unicast_vlan121_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan121_macaddr_msb, void* __xlx_apatb_param_unicast_vlan122_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan122_macaddr_msb, void* __xlx_apatb_param_unicast_vlan123_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan123_macaddr_msb, void* __xlx_apatb_param_unicast_vlan124_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan124_macaddr_msb, void* __xlx_apatb_param_unicast_vlan125_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan125_macaddr_msb, void* __xlx_apatb_param_unicast_vlan126_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan126_macaddr_msb, void* __xlx_apatb_param_unicast_vlan127_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan127_macaddr_msb, void* __xlx_apatb_param_unicast_vlan128_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan128_macaddr_msb, void* __xlx_apatb_param_unicast_vlan129_macaddr_lsb, void* __xlx_apatb_param_unicast_vlan129_macaddr_msb, void* __xlx_apatb_param_log_all_mask, void* __xlx_apatb_param_fifo_axi_full)
{
  hls::sim::Byte<4> __xlx_offset_byte_param_fifo;
  static hls::sim::Register port0 {
    .name = "fifo",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_fifo),
#endif
  };
  port0.param = &__xlx_offset_byte_param_fifo;

  hls::sim::Byte<4> __xlx_offset_byte_param_ddr;
  static hls::sim::Register port1 {
    .name = "ddr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ddr),
#endif
  };
  port1.param = &__xlx_offset_byte_param_ddr;

  hls::sim::Byte<4> __xlx_offset_byte_param_driver;
  static hls::sim::Register port2 {
    .name = "driver",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_driver),
#endif
  };
  port2.param = &__xlx_offset_byte_param_driver;

  static hls::sim::Register port3 {
    .name = "status",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_status),
#endif
  };
  port3.param = __xlx_apatb_param_status;

  static hls::sim::Register port4 {
    .name = "writeStatus",
    .width = 16,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_writeStatus),
#endif
  };
  port4.param = __xlx_apatb_param_writeStatus;

  static hls::sim::Register port5 {
    .name = "timestamp",
    .width = 64,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_timestamp),
#endif
  };
  port5.param = &__xlx_apatb_param_timestamp;

  static hls::sim::Register port6 {
    .name = "logger_vlan_enable_mask",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_logger_vlan_enable_mask),
#endif
  };
  port6.param = __xlx_apatb_param_logger_vlan_enable_mask;

  static hls::sim::Register port7 {
    .name = "vlan100_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan100_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan100_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan100_received),
#endif
  };
  port7.param = __xlx_apatb_param_vlan100_received;

  static hls::sim::Register port8 {
    .name = "vlan101_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan101_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan101_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan101_received),
#endif
  };
  port8.param = __xlx_apatb_param_vlan101_received;

  static hls::sim::Register port9 {
    .name = "vlan102_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan102_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan102_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan102_received),
#endif
  };
  port9.param = __xlx_apatb_param_vlan102_received;

  static hls::sim::Register port10 {
    .name = "vlan103_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan103_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan103_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan103_received),
#endif
  };
  port10.param = __xlx_apatb_param_vlan103_received;

  static hls::sim::Register port11 {
    .name = "vlan104_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan104_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan104_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan104_received),
#endif
  };
  port11.param = __xlx_apatb_param_vlan104_received;

  static hls::sim::Register port12 {
    .name = "vlan105_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan105_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan105_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan105_received),
#endif
  };
  port12.param = __xlx_apatb_param_vlan105_received;

  static hls::sim::Register port13 {
    .name = "vlan106_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan106_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan106_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan106_received),
#endif
  };
  port13.param = __xlx_apatb_param_vlan106_received;

  static hls::sim::Register port14 {
    .name = "vlan107_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan107_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan107_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan107_received),
#endif
  };
  port14.param = __xlx_apatb_param_vlan107_received;

  static hls::sim::Register port15 {
    .name = "vlan108_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan108_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan108_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan108_received),
#endif
  };
  port15.param = __xlx_apatb_param_vlan108_received;

  static hls::sim::Register port16 {
    .name = "vlan109_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan109_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan109_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan109_received),
#endif
  };
  port16.param = __xlx_apatb_param_vlan109_received;

  static hls::sim::Register port17 {
    .name = "vlan110_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan110_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan110_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan110_received),
#endif
  };
  port17.param = __xlx_apatb_param_vlan110_received;

  static hls::sim::Register port18 {
    .name = "vlan111_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan111_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan111_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan111_received),
#endif
  };
  port18.param = __xlx_apatb_param_vlan111_received;

  static hls::sim::Register port19 {
    .name = "vlan112_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan112_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan112_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan112_received),
#endif
  };
  port19.param = __xlx_apatb_param_vlan112_received;

  static hls::sim::Register port20 {
    .name = "vlan113_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan113_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan113_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan113_received),
#endif
  };
  port20.param = __xlx_apatb_param_vlan113_received;

  static hls::sim::Register port21 {
    .name = "vlan114_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan114_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan114_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan114_received),
#endif
  };
  port21.param = __xlx_apatb_param_vlan114_received;

  static hls::sim::Register port22 {
    .name = "vlan115_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan115_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan115_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan115_received),
#endif
  };
  port22.param = __xlx_apatb_param_vlan115_received;

  static hls::sim::Register port23 {
    .name = "vlan116_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan116_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan116_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan116_received),
#endif
  };
  port23.param = __xlx_apatb_param_vlan116_received;

  static hls::sim::Register port24 {
    .name = "vlan117_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan117_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan117_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan117_received),
#endif
  };
  port24.param = __xlx_apatb_param_vlan117_received;

  static hls::sim::Register port25 {
    .name = "vlan118_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan118_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan118_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan118_received),
#endif
  };
  port25.param = __xlx_apatb_param_vlan118_received;

  static hls::sim::Register port26 {
    .name = "vlan119_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan119_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan119_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan119_received),
#endif
  };
  port26.param = __xlx_apatb_param_vlan119_received;

  static hls::sim::Register port27 {
    .name = "vlan120_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan120_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan120_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan120_received),
#endif
  };
  port27.param = __xlx_apatb_param_vlan120_received;

  static hls::sim::Register port28 {
    .name = "vlan121_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan121_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan121_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan121_received),
#endif
  };
  port28.param = __xlx_apatb_param_vlan121_received;

  static hls::sim::Register port29 {
    .name = "vlan122_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan122_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan122_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan122_received),
#endif
  };
  port29.param = __xlx_apatb_param_vlan122_received;

  static hls::sim::Register port30 {
    .name = "vlan123_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan123_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan123_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan123_received),
#endif
  };
  port30.param = __xlx_apatb_param_vlan123_received;

  static hls::sim::Register port31 {
    .name = "vlan124_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan124_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan124_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan124_received),
#endif
  };
  port31.param = __xlx_apatb_param_vlan124_received;

  static hls::sim::Register port32 {
    .name = "vlan125_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan125_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan125_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan125_received),
#endif
  };
  port32.param = __xlx_apatb_param_vlan125_received;

  static hls::sim::Register port33 {
    .name = "vlan126_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan126_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan126_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan126_received),
#endif
  };
  port33.param = __xlx_apatb_param_vlan126_received;

  static hls::sim::Register port34 {
    .name = "vlan127_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan127_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan127_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan127_received),
#endif
  };
  port34.param = __xlx_apatb_param_vlan127_received;

  static hls::sim::Register port35 {
    .name = "vlan128_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan128_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan128_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan128_received),
#endif
  };
  port35.param = __xlx_apatb_param_vlan128_received;

  static hls::sim::Register port36 {
    .name = "vlan129_received",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vlan129_received),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vlan129_received),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vlan129_received),
#endif
  };
  port36.param = __xlx_apatb_param_vlan129_received;

  static hls::sim::Register port37 {
    .name = "droped",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_droped),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_droped),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_droped),
#endif
  };
  port37.param = __xlx_apatb_param_droped;

  static hls::sim::Register port38 {
    .name = "multicast_recv_enable",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_multicast_recv_enable),
#endif
  };
  port38.param = __xlx_apatb_param_multicast_recv_enable;

  static hls::sim::Register port39 {
    .name = "unicast_filter_enable",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_filter_enable),
#endif
  };
  port39.param = __xlx_apatb_param_unicast_filter_enable;

  static hls::sim::Register port40 {
    .name = "unicast_vlan100_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan100_macaddr_lsb),
#endif
  };
  port40.param = __xlx_apatb_param_unicast_vlan100_macaddr_lsb;

  static hls::sim::Register port41 {
    .name = "unicast_vlan100_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan100_macaddr_msb),
#endif
  };
  port41.param = __xlx_apatb_param_unicast_vlan100_macaddr_msb;

  static hls::sim::Register port42 {
    .name = "unicast_vlan101_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan101_macaddr_lsb),
#endif
  };
  port42.param = __xlx_apatb_param_unicast_vlan101_macaddr_lsb;

  static hls::sim::Register port43 {
    .name = "unicast_vlan101_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan101_macaddr_msb),
#endif
  };
  port43.param = __xlx_apatb_param_unicast_vlan101_macaddr_msb;

  static hls::sim::Register port44 {
    .name = "unicast_vlan102_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan102_macaddr_lsb),
#endif
  };
  port44.param = __xlx_apatb_param_unicast_vlan102_macaddr_lsb;

  static hls::sim::Register port45 {
    .name = "unicast_vlan102_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan102_macaddr_msb),
#endif
  };
  port45.param = __xlx_apatb_param_unicast_vlan102_macaddr_msb;

  static hls::sim::Register port46 {
    .name = "unicast_vlan103_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan103_macaddr_lsb),
#endif
  };
  port46.param = __xlx_apatb_param_unicast_vlan103_macaddr_lsb;

  static hls::sim::Register port47 {
    .name = "unicast_vlan103_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan103_macaddr_msb),
#endif
  };
  port47.param = __xlx_apatb_param_unicast_vlan103_macaddr_msb;

  static hls::sim::Register port48 {
    .name = "unicast_vlan104_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan104_macaddr_lsb),
#endif
  };
  port48.param = __xlx_apatb_param_unicast_vlan104_macaddr_lsb;

  static hls::sim::Register port49 {
    .name = "unicast_vlan104_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan104_macaddr_msb),
#endif
  };
  port49.param = __xlx_apatb_param_unicast_vlan104_macaddr_msb;

  static hls::sim::Register port50 {
    .name = "unicast_vlan105_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan105_macaddr_lsb),
#endif
  };
  port50.param = __xlx_apatb_param_unicast_vlan105_macaddr_lsb;

  static hls::sim::Register port51 {
    .name = "unicast_vlan105_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan105_macaddr_msb),
#endif
  };
  port51.param = __xlx_apatb_param_unicast_vlan105_macaddr_msb;

  static hls::sim::Register port52 {
    .name = "unicast_vlan106_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan106_macaddr_lsb),
#endif
  };
  port52.param = __xlx_apatb_param_unicast_vlan106_macaddr_lsb;

  static hls::sim::Register port53 {
    .name = "unicast_vlan106_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan106_macaddr_msb),
#endif
  };
  port53.param = __xlx_apatb_param_unicast_vlan106_macaddr_msb;

  static hls::sim::Register port54 {
    .name = "unicast_vlan107_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan107_macaddr_lsb),
#endif
  };
  port54.param = __xlx_apatb_param_unicast_vlan107_macaddr_lsb;

  static hls::sim::Register port55 {
    .name = "unicast_vlan107_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan107_macaddr_msb),
#endif
  };
  port55.param = __xlx_apatb_param_unicast_vlan107_macaddr_msb;

  static hls::sim::Register port56 {
    .name = "unicast_vlan108_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan108_macaddr_lsb),
#endif
  };
  port56.param = __xlx_apatb_param_unicast_vlan108_macaddr_lsb;

  static hls::sim::Register port57 {
    .name = "unicast_vlan108_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan108_macaddr_msb),
#endif
  };
  port57.param = __xlx_apatb_param_unicast_vlan108_macaddr_msb;

  static hls::sim::Register port58 {
    .name = "unicast_vlan109_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan109_macaddr_lsb),
#endif
  };
  port58.param = __xlx_apatb_param_unicast_vlan109_macaddr_lsb;

  static hls::sim::Register port59 {
    .name = "unicast_vlan109_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan109_macaddr_msb),
#endif
  };
  port59.param = __xlx_apatb_param_unicast_vlan109_macaddr_msb;

  static hls::sim::Register port60 {
    .name = "unicast_vlan110_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan110_macaddr_lsb),
#endif
  };
  port60.param = __xlx_apatb_param_unicast_vlan110_macaddr_lsb;

  static hls::sim::Register port61 {
    .name = "unicast_vlan110_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan110_macaddr_msb),
#endif
  };
  port61.param = __xlx_apatb_param_unicast_vlan110_macaddr_msb;

  static hls::sim::Register port62 {
    .name = "unicast_vlan111_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan111_macaddr_lsb),
#endif
  };
  port62.param = __xlx_apatb_param_unicast_vlan111_macaddr_lsb;

  static hls::sim::Register port63 {
    .name = "unicast_vlan111_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan111_macaddr_msb),
#endif
  };
  port63.param = __xlx_apatb_param_unicast_vlan111_macaddr_msb;

  static hls::sim::Register port64 {
    .name = "unicast_vlan112_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan112_macaddr_lsb),
#endif
  };
  port64.param = __xlx_apatb_param_unicast_vlan112_macaddr_lsb;

  static hls::sim::Register port65 {
    .name = "unicast_vlan112_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan112_macaddr_msb),
#endif
  };
  port65.param = __xlx_apatb_param_unicast_vlan112_macaddr_msb;

  static hls::sim::Register port66 {
    .name = "unicast_vlan113_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan113_macaddr_lsb),
#endif
  };
  port66.param = __xlx_apatb_param_unicast_vlan113_macaddr_lsb;

  static hls::sim::Register port67 {
    .name = "unicast_vlan113_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan113_macaddr_msb),
#endif
  };
  port67.param = __xlx_apatb_param_unicast_vlan113_macaddr_msb;

  static hls::sim::Register port68 {
    .name = "unicast_vlan114_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan114_macaddr_lsb),
#endif
  };
  port68.param = __xlx_apatb_param_unicast_vlan114_macaddr_lsb;

  static hls::sim::Register port69 {
    .name = "unicast_vlan114_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan114_macaddr_msb),
#endif
  };
  port69.param = __xlx_apatb_param_unicast_vlan114_macaddr_msb;

  static hls::sim::Register port70 {
    .name = "unicast_vlan115_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan115_macaddr_lsb),
#endif
  };
  port70.param = __xlx_apatb_param_unicast_vlan115_macaddr_lsb;

  static hls::sim::Register port71 {
    .name = "unicast_vlan115_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan115_macaddr_msb),
#endif
  };
  port71.param = __xlx_apatb_param_unicast_vlan115_macaddr_msb;

  static hls::sim::Register port72 {
    .name = "unicast_vlan116_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan116_macaddr_lsb),
#endif
  };
  port72.param = __xlx_apatb_param_unicast_vlan116_macaddr_lsb;

  static hls::sim::Register port73 {
    .name = "unicast_vlan116_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan116_macaddr_msb),
#endif
  };
  port73.param = __xlx_apatb_param_unicast_vlan116_macaddr_msb;

  static hls::sim::Register port74 {
    .name = "unicast_vlan117_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan117_macaddr_lsb),
#endif
  };
  port74.param = __xlx_apatb_param_unicast_vlan117_macaddr_lsb;

  static hls::sim::Register port75 {
    .name = "unicast_vlan117_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan117_macaddr_msb),
#endif
  };
  port75.param = __xlx_apatb_param_unicast_vlan117_macaddr_msb;

  static hls::sim::Register port76 {
    .name = "unicast_vlan118_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan118_macaddr_lsb),
#endif
  };
  port76.param = __xlx_apatb_param_unicast_vlan118_macaddr_lsb;

  static hls::sim::Register port77 {
    .name = "unicast_vlan118_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan118_macaddr_msb),
#endif
  };
  port77.param = __xlx_apatb_param_unicast_vlan118_macaddr_msb;

  static hls::sim::Register port78 {
    .name = "unicast_vlan119_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan119_macaddr_lsb),
#endif
  };
  port78.param = __xlx_apatb_param_unicast_vlan119_macaddr_lsb;

  static hls::sim::Register port79 {
    .name = "unicast_vlan119_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan119_macaddr_msb),
#endif
  };
  port79.param = __xlx_apatb_param_unicast_vlan119_macaddr_msb;

  static hls::sim::Register port80 {
    .name = "unicast_vlan120_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan120_macaddr_lsb),
#endif
  };
  port80.param = __xlx_apatb_param_unicast_vlan120_macaddr_lsb;

  static hls::sim::Register port81 {
    .name = "unicast_vlan120_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan120_macaddr_msb),
#endif
  };
  port81.param = __xlx_apatb_param_unicast_vlan120_macaddr_msb;

  static hls::sim::Register port82 {
    .name = "unicast_vlan121_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan121_macaddr_lsb),
#endif
  };
  port82.param = __xlx_apatb_param_unicast_vlan121_macaddr_lsb;

  static hls::sim::Register port83 {
    .name = "unicast_vlan121_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan121_macaddr_msb),
#endif
  };
  port83.param = __xlx_apatb_param_unicast_vlan121_macaddr_msb;

  static hls::sim::Register port84 {
    .name = "unicast_vlan122_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan122_macaddr_lsb),
#endif
  };
  port84.param = __xlx_apatb_param_unicast_vlan122_macaddr_lsb;

  static hls::sim::Register port85 {
    .name = "unicast_vlan122_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan122_macaddr_msb),
#endif
  };
  port85.param = __xlx_apatb_param_unicast_vlan122_macaddr_msb;

  static hls::sim::Register port86 {
    .name = "unicast_vlan123_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan123_macaddr_lsb),
#endif
  };
  port86.param = __xlx_apatb_param_unicast_vlan123_macaddr_lsb;

  static hls::sim::Register port87 {
    .name = "unicast_vlan123_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan123_macaddr_msb),
#endif
  };
  port87.param = __xlx_apatb_param_unicast_vlan123_macaddr_msb;

  static hls::sim::Register port88 {
    .name = "unicast_vlan124_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan124_macaddr_lsb),
#endif
  };
  port88.param = __xlx_apatb_param_unicast_vlan124_macaddr_lsb;

  static hls::sim::Register port89 {
    .name = "unicast_vlan124_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan124_macaddr_msb),
#endif
  };
  port89.param = __xlx_apatb_param_unicast_vlan124_macaddr_msb;

  static hls::sim::Register port90 {
    .name = "unicast_vlan125_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan125_macaddr_lsb),
#endif
  };
  port90.param = __xlx_apatb_param_unicast_vlan125_macaddr_lsb;

  static hls::sim::Register port91 {
    .name = "unicast_vlan125_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan125_macaddr_msb),
#endif
  };
  port91.param = __xlx_apatb_param_unicast_vlan125_macaddr_msb;

  static hls::sim::Register port92 {
    .name = "unicast_vlan126_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan126_macaddr_lsb),
#endif
  };
  port92.param = __xlx_apatb_param_unicast_vlan126_macaddr_lsb;

  static hls::sim::Register port93 {
    .name = "unicast_vlan126_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan126_macaddr_msb),
#endif
  };
  port93.param = __xlx_apatb_param_unicast_vlan126_macaddr_msb;

  static hls::sim::Register port94 {
    .name = "unicast_vlan127_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan127_macaddr_lsb),
#endif
  };
  port94.param = __xlx_apatb_param_unicast_vlan127_macaddr_lsb;

  static hls::sim::Register port95 {
    .name = "unicast_vlan127_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan127_macaddr_msb),
#endif
  };
  port95.param = __xlx_apatb_param_unicast_vlan127_macaddr_msb;

  static hls::sim::Register port96 {
    .name = "unicast_vlan128_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan128_macaddr_lsb),
#endif
  };
  port96.param = __xlx_apatb_param_unicast_vlan128_macaddr_lsb;

  static hls::sim::Register port97 {
    .name = "unicast_vlan128_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan128_macaddr_msb),
#endif
  };
  port97.param = __xlx_apatb_param_unicast_vlan128_macaddr_msb;

  static hls::sim::Register port98 {
    .name = "unicast_vlan129_macaddr_lsb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan129_macaddr_lsb),
#endif
  };
  port98.param = __xlx_apatb_param_unicast_vlan129_macaddr_lsb;

  static hls::sim::Register port99 {
    .name = "unicast_vlan129_macaddr_msb",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_unicast_vlan129_macaddr_msb),
#endif
  };
  port99.param = __xlx_apatb_param_unicast_vlan129_macaddr_msb;

  static hls::sim::Register port100 {
    .name = "log_all_mask",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_log_all_mask),
#endif
  };
  port100.param = __xlx_apatb_param_log_all_mask;

  hls::sim::Byte<4> __xlx_offset_byte_param_fifo_axi_full;
  static hls::sim::Register port101 {
    .name = "fifo_axi_full_offset",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_fifo_axi_full_offset),
#endif
  };
  port101.param = &__xlx_offset_byte_param_fifo_axi_full;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port102 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port102 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "fifo_axi_full" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_fifo_axi_full),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_fifo_axi_full),
#endif
#endif
  };
  port102.param = { __xlx_apatb_param_fifo_axi_full };
  port102.depth = { 1028 };
  port102.offset = {  };
  port102.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port103 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port103 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "mac_fifo" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_mac_fifo),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_mac_fifo),
#endif
#endif
  };
  port103.param = { __xlx_apatb_param_fifo };
  port103.depth = { 5120 };
  port103.offset = {  };
  port103.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port104 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port104 {
#endif
    .width = 64,
    .asize = 8,
    .hbm = false,
    .name = { "ps" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_ps),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_ps),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_ps),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_ps),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_ps),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ps),
#endif
#endif
  };
  __xlx_offset_byte_param_ddr = 0*8;
  __xlx_offset_byte_param_driver = 102400*8;
  port104.param = { __xlx_apatb_param_ddr, __xlx_apatb_param_driver };
  port104.depth = { 102400, 102400 };
  port104.offset = { 0, 102400 };
  port104.hasWrite = { true, true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port7);
    check(port8);
    check(port9);
    check(port10);
    check(port11);
    check(port12);
    check(port13);
    check(port14);
    check(port15);
    check(port16);
    check(port17);
    check(port18);
    check(port19);
    check(port20);
    check(port21);
    check(port22);
    check(port23);
    check(port24);
    check(port25);
    check(port26);
    check(port27);
    check(port28);
    check(port29);
    check(port30);
    check(port31);
    check(port32);
    check(port33);
    check(port34);
    check(port35);
    check(port36);
    check(port37);
    check(port104);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    dump(port70, port70.iwriter, tcl.AESL_transaction);
    dump(port71, port71.iwriter, tcl.AESL_transaction);
    dump(port72, port72.iwriter, tcl.AESL_transaction);
    dump(port73, port73.iwriter, tcl.AESL_transaction);
    dump(port74, port74.iwriter, tcl.AESL_transaction);
    dump(port75, port75.iwriter, tcl.AESL_transaction);
    dump(port76, port76.iwriter, tcl.AESL_transaction);
    dump(port77, port77.iwriter, tcl.AESL_transaction);
    dump(port78, port78.iwriter, tcl.AESL_transaction);
    dump(port79, port79.iwriter, tcl.AESL_transaction);
    dump(port80, port80.iwriter, tcl.AESL_transaction);
    dump(port81, port81.iwriter, tcl.AESL_transaction);
    dump(port82, port82.iwriter, tcl.AESL_transaction);
    dump(port83, port83.iwriter, tcl.AESL_transaction);
    dump(port84, port84.iwriter, tcl.AESL_transaction);
    dump(port85, port85.iwriter, tcl.AESL_transaction);
    dump(port86, port86.iwriter, tcl.AESL_transaction);
    dump(port87, port87.iwriter, tcl.AESL_transaction);
    dump(port88, port88.iwriter, tcl.AESL_transaction);
    dump(port89, port89.iwriter, tcl.AESL_transaction);
    dump(port90, port90.iwriter, tcl.AESL_transaction);
    dump(port91, port91.iwriter, tcl.AESL_transaction);
    dump(port92, port92.iwriter, tcl.AESL_transaction);
    dump(port93, port93.iwriter, tcl.AESL_transaction);
    dump(port94, port94.iwriter, tcl.AESL_transaction);
    dump(port95, port95.iwriter, tcl.AESL_transaction);
    dump(port96, port96.iwriter, tcl.AESL_transaction);
    dump(port97, port97.iwriter, tcl.AESL_transaction);
    dump(port98, port98.iwriter, tcl.AESL_transaction);
    dump(port99, port99.iwriter, tcl.AESL_transaction);
    dump(port100, port100.iwriter, tcl.AESL_transaction);
    dump(port101, port101.iwriter, tcl.AESL_transaction);
    dump(port102, port102.iwriter, tcl.AESL_transaction);
    dump(port103, port103.iwriter, tcl.AESL_transaction);
    dump(port104, port104.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    port73.doTCL(tcl);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    port80.doTCL(tcl);
    port81.doTCL(tcl);
    port82.doTCL(tcl);
    port83.doTCL(tcl);
    port84.doTCL(tcl);
    port85.doTCL(tcl);
    port86.doTCL(tcl);
    port87.doTCL(tcl);
    port88.doTCL(tcl);
    port89.doTCL(tcl);
    port90.doTCL(tcl);
    port91.doTCL(tcl);
    port92.doTCL(tcl);
    port93.doTCL(tcl);
    port94.doTCL(tcl);
    port95.doTCL(tcl);
    port96.doTCL(tcl);
    port97.doTCL(tcl);
    port98.doTCL(tcl);
    port99.doTCL(tcl);
    port100.doTCL(tcl);
    port101.doTCL(tcl);
    port102.doTCL(tcl);
    port103.doTCL(tcl);
    port104.doTCL(tcl);
    CodeState = CALL_C_DUT;
    mac_logger_hw_stub_wrapper(__xlx_apatb_param_fifo, __xlx_apatb_param_ddr, __xlx_apatb_param_driver, __xlx_apatb_param_status, __xlx_apatb_param_writeStatus, __xlx_apatb_param_timestamp, __xlx_apatb_param_logger_vlan_enable_mask, __xlx_apatb_param_vlan100_received, __xlx_apatb_param_vlan101_received, __xlx_apatb_param_vlan102_received, __xlx_apatb_param_vlan103_received, __xlx_apatb_param_vlan104_received, __xlx_apatb_param_vlan105_received, __xlx_apatb_param_vlan106_received, __xlx_apatb_param_vlan107_received, __xlx_apatb_param_vlan108_received, __xlx_apatb_param_vlan109_received, __xlx_apatb_param_vlan110_received, __xlx_apatb_param_vlan111_received, __xlx_apatb_param_vlan112_received, __xlx_apatb_param_vlan113_received, __xlx_apatb_param_vlan114_received, __xlx_apatb_param_vlan115_received, __xlx_apatb_param_vlan116_received, __xlx_apatb_param_vlan117_received, __xlx_apatb_param_vlan118_received, __xlx_apatb_param_vlan119_received, __xlx_apatb_param_vlan120_received, __xlx_apatb_param_vlan121_received, __xlx_apatb_param_vlan122_received, __xlx_apatb_param_vlan123_received, __xlx_apatb_param_vlan124_received, __xlx_apatb_param_vlan125_received, __xlx_apatb_param_vlan126_received, __xlx_apatb_param_vlan127_received, __xlx_apatb_param_vlan128_received, __xlx_apatb_param_vlan129_received, __xlx_apatb_param_droped, __xlx_apatb_param_multicast_recv_enable, __xlx_apatb_param_unicast_filter_enable, __xlx_apatb_param_unicast_vlan100_macaddr_lsb, __xlx_apatb_param_unicast_vlan100_macaddr_msb, __xlx_apatb_param_unicast_vlan101_macaddr_lsb, __xlx_apatb_param_unicast_vlan101_macaddr_msb, __xlx_apatb_param_unicast_vlan102_macaddr_lsb, __xlx_apatb_param_unicast_vlan102_macaddr_msb, __xlx_apatb_param_unicast_vlan103_macaddr_lsb, __xlx_apatb_param_unicast_vlan103_macaddr_msb, __xlx_apatb_param_unicast_vlan104_macaddr_lsb, __xlx_apatb_param_unicast_vlan104_macaddr_msb, __xlx_apatb_param_unicast_vlan105_macaddr_lsb, __xlx_apatb_param_unicast_vlan105_macaddr_msb, __xlx_apatb_param_unicast_vlan106_macaddr_lsb, __xlx_apatb_param_unicast_vlan106_macaddr_msb, __xlx_apatb_param_unicast_vlan107_macaddr_lsb, __xlx_apatb_param_unicast_vlan107_macaddr_msb, __xlx_apatb_param_unicast_vlan108_macaddr_lsb, __xlx_apatb_param_unicast_vlan108_macaddr_msb, __xlx_apatb_param_unicast_vlan109_macaddr_lsb, __xlx_apatb_param_unicast_vlan109_macaddr_msb, __xlx_apatb_param_unicast_vlan110_macaddr_lsb, __xlx_apatb_param_unicast_vlan110_macaddr_msb, __xlx_apatb_param_unicast_vlan111_macaddr_lsb, __xlx_apatb_param_unicast_vlan111_macaddr_msb, __xlx_apatb_param_unicast_vlan112_macaddr_lsb, __xlx_apatb_param_unicast_vlan112_macaddr_msb, __xlx_apatb_param_unicast_vlan113_macaddr_lsb, __xlx_apatb_param_unicast_vlan113_macaddr_msb, __xlx_apatb_param_unicast_vlan114_macaddr_lsb, __xlx_apatb_param_unicast_vlan114_macaddr_msb, __xlx_apatb_param_unicast_vlan115_macaddr_lsb, __xlx_apatb_param_unicast_vlan115_macaddr_msb, __xlx_apatb_param_unicast_vlan116_macaddr_lsb, __xlx_apatb_param_unicast_vlan116_macaddr_msb, __xlx_apatb_param_unicast_vlan117_macaddr_lsb, __xlx_apatb_param_unicast_vlan117_macaddr_msb, __xlx_apatb_param_unicast_vlan118_macaddr_lsb, __xlx_apatb_param_unicast_vlan118_macaddr_msb, __xlx_apatb_param_unicast_vlan119_macaddr_lsb, __xlx_apatb_param_unicast_vlan119_macaddr_msb, __xlx_apatb_param_unicast_vlan120_macaddr_lsb, __xlx_apatb_param_unicast_vlan120_macaddr_msb, __xlx_apatb_param_unicast_vlan121_macaddr_lsb, __xlx_apatb_param_unicast_vlan121_macaddr_msb, __xlx_apatb_param_unicast_vlan122_macaddr_lsb, __xlx_apatb_param_unicast_vlan122_macaddr_msb, __xlx_apatb_param_unicast_vlan123_macaddr_lsb, __xlx_apatb_param_unicast_vlan123_macaddr_msb, __xlx_apatb_param_unicast_vlan124_macaddr_lsb, __xlx_apatb_param_unicast_vlan124_macaddr_msb, __xlx_apatb_param_unicast_vlan125_macaddr_lsb, __xlx_apatb_param_unicast_vlan125_macaddr_msb, __xlx_apatb_param_unicast_vlan126_macaddr_lsb, __xlx_apatb_param_unicast_vlan126_macaddr_msb, __xlx_apatb_param_unicast_vlan127_macaddr_lsb, __xlx_apatb_param_unicast_vlan127_macaddr_msb, __xlx_apatb_param_unicast_vlan128_macaddr_lsb, __xlx_apatb_param_unicast_vlan128_macaddr_msb, __xlx_apatb_param_unicast_vlan129_macaddr_lsb, __xlx_apatb_param_unicast_vlan129_macaddr_msb, __xlx_apatb_param_log_all_mask, __xlx_apatb_param_fifo_axi_full);
    CodeState = DUMP_OUTPUTS;
    dump(port7, port7.owriter, tcl.AESL_transaction);
    dump(port8, port8.owriter, tcl.AESL_transaction);
    dump(port9, port9.owriter, tcl.AESL_transaction);
    dump(port10, port10.owriter, tcl.AESL_transaction);
    dump(port11, port11.owriter, tcl.AESL_transaction);
    dump(port12, port12.owriter, tcl.AESL_transaction);
    dump(port13, port13.owriter, tcl.AESL_transaction);
    dump(port14, port14.owriter, tcl.AESL_transaction);
    dump(port15, port15.owriter, tcl.AESL_transaction);
    dump(port16, port16.owriter, tcl.AESL_transaction);
    dump(port17, port17.owriter, tcl.AESL_transaction);
    dump(port18, port18.owriter, tcl.AESL_transaction);
    dump(port19, port19.owriter, tcl.AESL_transaction);
    dump(port20, port20.owriter, tcl.AESL_transaction);
    dump(port21, port21.owriter, tcl.AESL_transaction);
    dump(port22, port22.owriter, tcl.AESL_transaction);
    dump(port23, port23.owriter, tcl.AESL_transaction);
    dump(port24, port24.owriter, tcl.AESL_transaction);
    dump(port25, port25.owriter, tcl.AESL_transaction);
    dump(port26, port26.owriter, tcl.AESL_transaction);
    dump(port27, port27.owriter, tcl.AESL_transaction);
    dump(port28, port28.owriter, tcl.AESL_transaction);
    dump(port29, port29.owriter, tcl.AESL_transaction);
    dump(port30, port30.owriter, tcl.AESL_transaction);
    dump(port31, port31.owriter, tcl.AESL_transaction);
    dump(port32, port32.owriter, tcl.AESL_transaction);
    dump(port33, port33.owriter, tcl.AESL_transaction);
    dump(port34, port34.owriter, tcl.AESL_transaction);
    dump(port35, port35.owriter, tcl.AESL_transaction);
    dump(port36, port36.owriter, tcl.AESL_transaction);
    dump(port37, port37.owriter, tcl.AESL_transaction);
    dump(port104, port104.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}