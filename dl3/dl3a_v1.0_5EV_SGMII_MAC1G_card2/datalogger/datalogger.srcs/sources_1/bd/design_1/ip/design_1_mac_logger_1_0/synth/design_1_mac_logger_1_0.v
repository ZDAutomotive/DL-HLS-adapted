// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:mac_logger:1.0
// IP Revision: 2112819837

(* X_CORE_INFO = "mac_logger,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_mac_logger_1_0,mac_logger,{}" *)
(* CORE_GENERATION_INFO = "design_1_mac_logger_1_0,mac_logger,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=mac_logger,x_ipVersion=1.0,x_ipCoreRevision=2112819837,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_AXILITES_ADDR_WIDTH=10,C_S_AXI_AXILITES_DATA_WIDTH=32,C_M_AXI_FIFO_AXI_FULL_ID_WIDTH=1,C_M_AXI_FIFO_AXI_FULL_ADDR_WIDTH=64,C_M_AXI_FIFO_AXI_FULL_DATA_WIDTH=32,C_M_AXI_FIFO_AXI_FULL_AWUSER_WIDTH=1,C_M_AXI_FIFO_AXI_FULL_ARUSER_WIDTH=1,C_M_AXI_FIFO_AXI_FULL_WUSER_WIDTH=1,C_M_AXI_FIFO_AXI\
_FULL_RUSER_WIDTH=1,C_M_AXI_FIFO_AXI_FULL_BUSER_WIDTH=1,C_M_AXI_FIFO_AXI_FULL_USER_VALUE=0x00000000,C_M_AXI_FIFO_AXI_FULL_PROT_VALUE=000,C_M_AXI_FIFO_AXI_FULL_CACHE_VALUE=0011,C_M_AXI_MAC_FIFO_ID_WIDTH=1,C_M_AXI_MAC_FIFO_ADDR_WIDTH=64,C_M_AXI_MAC_FIFO_DATA_WIDTH=32,C_M_AXI_MAC_FIFO_AWUSER_WIDTH=1,C_M_AXI_MAC_FIFO_ARUSER_WIDTH=1,C_M_AXI_MAC_FIFO_WUSER_WIDTH=1,C_M_AXI_MAC_FIFO_RUSER_WIDTH=1,C_M_AXI_MAC_FIFO_BUSER_WIDTH=1,C_M_AXI_MAC_FIFO_USER_VALUE=0x00000000,C_M_AXI_MAC_FIFO_PROT_VALUE=000,C_M_AX\
I_MAC_FIFO_CACHE_VALUE=0011,C_M_AXI_PS_ID_WIDTH=1,C_M_AXI_PS_ADDR_WIDTH=64,C_M_AXI_PS_DATA_WIDTH=64,C_M_AXI_PS_AWUSER_WIDTH=1,C_M_AXI_PS_ARUSER_WIDTH=1,C_M_AXI_PS_WUSER_WIDTH=1,C_M_AXI_PS_RUSER_WIDTH=1,C_M_AXI_PS_BUSER_WIDTH=1,C_M_AXI_PS_USER_VALUE=0x00000000,C_M_AXI_PS_PROT_VALUE=000,C_M_AXI_PS_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_mac_logger_1_0 (
  s_axi_axilites_AWADDR,
  s_axi_axilites_AWVALID,
  s_axi_axilites_AWREADY,
  s_axi_axilites_WDATA,
  s_axi_axilites_WSTRB,
  s_axi_axilites_WVALID,
  s_axi_axilites_WREADY,
  s_axi_axilites_BRESP,
  s_axi_axilites_BVALID,
  s_axi_axilites_BREADY,
  s_axi_axilites_ARADDR,
  s_axi_axilites_ARVALID,
  s_axi_axilites_ARREADY,
  s_axi_axilites_RDATA,
  s_axi_axilites_RRESP,
  s_axi_axilites_RVALID,
  s_axi_axilites_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_fifo_axi_full_AWID,
  m_axi_fifo_axi_full_AWADDR,
  m_axi_fifo_axi_full_AWLEN,
  m_axi_fifo_axi_full_AWSIZE,
  m_axi_fifo_axi_full_AWBURST,
  m_axi_fifo_axi_full_AWLOCK,
  m_axi_fifo_axi_full_AWREGION,
  m_axi_fifo_axi_full_AWCACHE,
  m_axi_fifo_axi_full_AWPROT,
  m_axi_fifo_axi_full_AWQOS,
  m_axi_fifo_axi_full_AWVALID,
  m_axi_fifo_axi_full_AWREADY,
  m_axi_fifo_axi_full_WID,
  m_axi_fifo_axi_full_WDATA,
  m_axi_fifo_axi_full_WSTRB,
  m_axi_fifo_axi_full_WLAST,
  m_axi_fifo_axi_full_WVALID,
  m_axi_fifo_axi_full_WREADY,
  m_axi_fifo_axi_full_BID,
  m_axi_fifo_axi_full_BRESP,
  m_axi_fifo_axi_full_BVALID,
  m_axi_fifo_axi_full_BREADY,
  m_axi_fifo_axi_full_ARID,
  m_axi_fifo_axi_full_ARADDR,
  m_axi_fifo_axi_full_ARLEN,
  m_axi_fifo_axi_full_ARSIZE,
  m_axi_fifo_axi_full_ARBURST,
  m_axi_fifo_axi_full_ARLOCK,
  m_axi_fifo_axi_full_ARREGION,
  m_axi_fifo_axi_full_ARCACHE,
  m_axi_fifo_axi_full_ARPROT,
  m_axi_fifo_axi_full_ARQOS,
  m_axi_fifo_axi_full_ARVALID,
  m_axi_fifo_axi_full_ARREADY,
  m_axi_fifo_axi_full_RID,
  m_axi_fifo_axi_full_RDATA,
  m_axi_fifo_axi_full_RRESP,
  m_axi_fifo_axi_full_RLAST,
  m_axi_fifo_axi_full_RVALID,
  m_axi_fifo_axi_full_RREADY,
  m_axi_mac_fifo_AWADDR,
  m_axi_mac_fifo_AWLEN,
  m_axi_mac_fifo_AWSIZE,
  m_axi_mac_fifo_AWBURST,
  m_axi_mac_fifo_AWLOCK,
  m_axi_mac_fifo_AWREGION,
  m_axi_mac_fifo_AWCACHE,
  m_axi_mac_fifo_AWPROT,
  m_axi_mac_fifo_AWQOS,
  m_axi_mac_fifo_AWVALID,
  m_axi_mac_fifo_AWREADY,
  m_axi_mac_fifo_WDATA,
  m_axi_mac_fifo_WSTRB,
  m_axi_mac_fifo_WLAST,
  m_axi_mac_fifo_WVALID,
  m_axi_mac_fifo_WREADY,
  m_axi_mac_fifo_BRESP,
  m_axi_mac_fifo_BVALID,
  m_axi_mac_fifo_BREADY,
  m_axi_mac_fifo_ARADDR,
  m_axi_mac_fifo_ARLEN,
  m_axi_mac_fifo_ARSIZE,
  m_axi_mac_fifo_ARBURST,
  m_axi_mac_fifo_ARLOCK,
  m_axi_mac_fifo_ARREGION,
  m_axi_mac_fifo_ARCACHE,
  m_axi_mac_fifo_ARPROT,
  m_axi_mac_fifo_ARQOS,
  m_axi_mac_fifo_ARVALID,
  m_axi_mac_fifo_ARREADY,
  m_axi_mac_fifo_RDATA,
  m_axi_mac_fifo_RRESP,
  m_axi_mac_fifo_RLAST,
  m_axi_mac_fifo_RVALID,
  m_axi_mac_fifo_RREADY,
  m_axi_ps_AWADDR,
  m_axi_ps_AWLEN,
  m_axi_ps_AWSIZE,
  m_axi_ps_AWBURST,
  m_axi_ps_AWLOCK,
  m_axi_ps_AWREGION,
  m_axi_ps_AWCACHE,
  m_axi_ps_AWPROT,
  m_axi_ps_AWQOS,
  m_axi_ps_AWVALID,
  m_axi_ps_AWREADY,
  m_axi_ps_WDATA,
  m_axi_ps_WSTRB,
  m_axi_ps_WLAST,
  m_axi_ps_WVALID,
  m_axi_ps_WREADY,
  m_axi_ps_BRESP,
  m_axi_ps_BVALID,
  m_axi_ps_BREADY,
  m_axi_ps_ARADDR,
  m_axi_ps_ARLEN,
  m_axi_ps_ARSIZE,
  m_axi_ps_ARBURST,
  m_axi_ps_ARLOCK,
  m_axi_ps_ARREGION,
  m_axi_ps_ARCACHE,
  m_axi_ps_ARPROT,
  m_axi_ps_ARQOS,
  m_axi_ps_ARVALID,
  m_axi_ps_ARREADY,
  m_axi_ps_RDATA,
  m_axi_ps_RRESP,
  m_axi_ps_RLAST,
  m_axi_ps_RVALID,
  m_axi_ps_RREADY,
  timestamp
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites AWADDR" *)
input wire [9 : 0] s_axi_axilites_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites AWVALID" *)
input wire s_axi_axilites_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites AWREADY" *)
output wire s_axi_axilites_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites WDATA" *)
input wire [31 : 0] s_axi_axilites_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites WSTRB" *)
input wire [3 : 0] s_axi_axilites_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites WVALID" *)
input wire s_axi_axilites_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites WREADY" *)
output wire s_axi_axilites_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites BRESP" *)
output wire [1 : 0] s_axi_axilites_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites BVALID" *)
output wire s_axi_axilites_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites BREADY" *)
input wire s_axi_axilites_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites ARADDR" *)
input wire [9 : 0] s_axi_axilites_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites ARVALID" *)
input wire s_axi_axilites_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites ARREADY" *)
output wire s_axi_axilites_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites RDATA" *)
output wire [31 : 0] s_axi_axilites_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites RRESP" *)
output wire [1 : 0] s_axi_axilites_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites RVALID" *)
output wire s_axi_axilites_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_axilites, ADDR_WIDTH 10, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999985, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THR\
EADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_axilites RREADY" *)
input wire s_axi_axilites_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_axilites:m_axi_fifo_axi_full:m_axi_mac_fifo:m_axi_ps, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999985, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWID" *)
output wire [0 : 0] m_axi_fifo_axi_full_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWADDR" *)
output wire [63 : 0] m_axi_fifo_axi_full_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWLEN" *)
output wire [7 : 0] m_axi_fifo_axi_full_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWSIZE" *)
output wire [2 : 0] m_axi_fifo_axi_full_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWBURST" *)
output wire [1 : 0] m_axi_fifo_axi_full_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWLOCK" *)
output wire [1 : 0] m_axi_fifo_axi_full_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWREGION" *)
output wire [3 : 0] m_axi_fifo_axi_full_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWCACHE" *)
output wire [3 : 0] m_axi_fifo_axi_full_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWPROT" *)
output wire [2 : 0] m_axi_fifo_axi_full_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWQOS" *)
output wire [3 : 0] m_axi_fifo_axi_full_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWVALID" *)
output wire m_axi_fifo_axi_full_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full AWREADY" *)
input wire m_axi_fifo_axi_full_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full WID" *)
output wire [0 : 0] m_axi_fifo_axi_full_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full WDATA" *)
output wire [31 : 0] m_axi_fifo_axi_full_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full WSTRB" *)
output wire [3 : 0] m_axi_fifo_axi_full_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full WLAST" *)
output wire m_axi_fifo_axi_full_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full WVALID" *)
output wire m_axi_fifo_axi_full_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full WREADY" *)
input wire m_axi_fifo_axi_full_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full BID" *)
input wire [0 : 0] m_axi_fifo_axi_full_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full BRESP" *)
input wire [1 : 0] m_axi_fifo_axi_full_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full BVALID" *)
input wire m_axi_fifo_axi_full_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full BREADY" *)
output wire m_axi_fifo_axi_full_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARID" *)
output wire [0 : 0] m_axi_fifo_axi_full_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARADDR" *)
output wire [63 : 0] m_axi_fifo_axi_full_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARLEN" *)
output wire [7 : 0] m_axi_fifo_axi_full_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARSIZE" *)
output wire [2 : 0] m_axi_fifo_axi_full_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARBURST" *)
output wire [1 : 0] m_axi_fifo_axi_full_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARLOCK" *)
output wire [1 : 0] m_axi_fifo_axi_full_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARREGION" *)
output wire [3 : 0] m_axi_fifo_axi_full_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARCACHE" *)
output wire [3 : 0] m_axi_fifo_axi_full_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARPROT" *)
output wire [2 : 0] m_axi_fifo_axi_full_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARQOS" *)
output wire [3 : 0] m_axi_fifo_axi_full_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARVALID" *)
output wire m_axi_fifo_axi_full_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full ARREADY" *)
input wire m_axi_fifo_axi_full_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full RID" *)
input wire [0 : 0] m_axi_fifo_axi_full_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full RDATA" *)
input wire [31 : 0] m_axi_fifo_axi_full_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full RRESP" *)
input wire [1 : 0] m_axi_fifo_axi_full_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full RLAST" *)
input wire m_axi_fifo_axi_full_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full RVALID" *)
input wire m_axi_fifo_axi_full_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_fifo_axi_full, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 99999985, ID_WIDTH 1, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_\
DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_fifo_axi_full RREADY" *)
output wire m_axi_fifo_axi_full_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWADDR" *)
output wire [63 : 0] m_axi_mac_fifo_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWLEN" *)
output wire [7 : 0] m_axi_mac_fifo_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWSIZE" *)
output wire [2 : 0] m_axi_mac_fifo_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWBURST" *)
output wire [1 : 0] m_axi_mac_fifo_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWLOCK" *)
output wire [1 : 0] m_axi_mac_fifo_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWREGION" *)
output wire [3 : 0] m_axi_mac_fifo_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWCACHE" *)
output wire [3 : 0] m_axi_mac_fifo_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWPROT" *)
output wire [2 : 0] m_axi_mac_fifo_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWQOS" *)
output wire [3 : 0] m_axi_mac_fifo_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWVALID" *)
output wire m_axi_mac_fifo_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo AWREADY" *)
input wire m_axi_mac_fifo_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo WDATA" *)
output wire [31 : 0] m_axi_mac_fifo_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo WSTRB" *)
output wire [3 : 0] m_axi_mac_fifo_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo WLAST" *)
output wire m_axi_mac_fifo_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo WVALID" *)
output wire m_axi_mac_fifo_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo WREADY" *)
input wire m_axi_mac_fifo_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo BRESP" *)
input wire [1 : 0] m_axi_mac_fifo_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo BVALID" *)
input wire m_axi_mac_fifo_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo BREADY" *)
output wire m_axi_mac_fifo_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARADDR" *)
output wire [63 : 0] m_axi_mac_fifo_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARLEN" *)
output wire [7 : 0] m_axi_mac_fifo_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARSIZE" *)
output wire [2 : 0] m_axi_mac_fifo_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARBURST" *)
output wire [1 : 0] m_axi_mac_fifo_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARLOCK" *)
output wire [1 : 0] m_axi_mac_fifo_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARREGION" *)
output wire [3 : 0] m_axi_mac_fifo_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARCACHE" *)
output wire [3 : 0] m_axi_mac_fifo_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARPROT" *)
output wire [2 : 0] m_axi_mac_fifo_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARQOS" *)
output wire [3 : 0] m_axi_mac_fifo_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARVALID" *)
output wire m_axi_mac_fifo_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo ARREADY" *)
input wire m_axi_mac_fifo_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo RDATA" *)
input wire [31 : 0] m_axi_mac_fifo_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo RRESP" *)
input wire [1 : 0] m_axi_mac_fifo_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo RLAST" *)
input wire m_axi_mac_fifo_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo RVALID" *)
input wire m_axi_mac_fifo_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_mac_fifo, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 99999985, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAI\
N design_1_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_mac_fifo RREADY" *)
output wire m_axi_mac_fifo_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWADDR" *)
output wire [63 : 0] m_axi_ps_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWLEN" *)
output wire [7 : 0] m_axi_ps_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWSIZE" *)
output wire [2 : 0] m_axi_ps_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWBURST" *)
output wire [1 : 0] m_axi_ps_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWLOCK" *)
output wire [1 : 0] m_axi_ps_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWREGION" *)
output wire [3 : 0] m_axi_ps_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWCACHE" *)
output wire [3 : 0] m_axi_ps_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWPROT" *)
output wire [2 : 0] m_axi_ps_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWQOS" *)
output wire [3 : 0] m_axi_ps_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWVALID" *)
output wire m_axi_ps_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps AWREADY" *)
input wire m_axi_ps_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps WDATA" *)
output wire [63 : 0] m_axi_ps_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps WSTRB" *)
output wire [7 : 0] m_axi_ps_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps WLAST" *)
output wire m_axi_ps_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps WVALID" *)
output wire m_axi_ps_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps WREADY" *)
input wire m_axi_ps_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps BRESP" *)
input wire [1 : 0] m_axi_ps_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps BVALID" *)
input wire m_axi_ps_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps BREADY" *)
output wire m_axi_ps_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARADDR" *)
output wire [63 : 0] m_axi_ps_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARLEN" *)
output wire [7 : 0] m_axi_ps_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARSIZE" *)
output wire [2 : 0] m_axi_ps_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARBURST" *)
output wire [1 : 0] m_axi_ps_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARLOCK" *)
output wire [1 : 0] m_axi_ps_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARREGION" *)
output wire [3 : 0] m_axi_ps_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARCACHE" *)
output wire [3 : 0] m_axi_ps_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARPROT" *)
output wire [2 : 0] m_axi_ps_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARQOS" *)
output wire [3 : 0] m_axi_ps_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARVALID" *)
output wire m_axi_ps_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps ARREADY" *)
input wire m_axi_ps_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps RDATA" *)
input wire [63 : 0] m_axi_ps_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps RRESP" *)
input wire [1 : 0] m_axi_ps_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps RLAST" *)
input wire m_axi_ps_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps RVALID" *)
input wire m_axi_ps_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_ps, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 64, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 64, FREQ_HZ 99999985, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN des\
ign_1_zynq_ultra_ps_e_0_0_pl_clk1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps RREADY" *)
output wire m_axi_ps_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME timestamp, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 timestamp DATA" *)
input wire [63 : 0] timestamp;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  mac_logger #(
    .C_S_AXI_AXILITES_ADDR_WIDTH(10),
    .C_S_AXI_AXILITES_DATA_WIDTH(32),
    .C_M_AXI_FIFO_AXI_FULL_ID_WIDTH(1),
    .C_M_AXI_FIFO_AXI_FULL_ADDR_WIDTH(64),
    .C_M_AXI_FIFO_AXI_FULL_DATA_WIDTH(32),
    .C_M_AXI_FIFO_AXI_FULL_AWUSER_WIDTH(1),
    .C_M_AXI_FIFO_AXI_FULL_ARUSER_WIDTH(1),
    .C_M_AXI_FIFO_AXI_FULL_WUSER_WIDTH(1),
    .C_M_AXI_FIFO_AXI_FULL_RUSER_WIDTH(1),
    .C_M_AXI_FIFO_AXI_FULL_BUSER_WIDTH(1),
    .C_M_AXI_FIFO_AXI_FULL_USER_VALUE(32'H00000000),
    .C_M_AXI_FIFO_AXI_FULL_PROT_VALUE(3'B000),
    .C_M_AXI_FIFO_AXI_FULL_CACHE_VALUE(4'B0011),
    .C_M_AXI_MAC_FIFO_ID_WIDTH(1),
    .C_M_AXI_MAC_FIFO_ADDR_WIDTH(64),
    .C_M_AXI_MAC_FIFO_DATA_WIDTH(32),
    .C_M_AXI_MAC_FIFO_AWUSER_WIDTH(1),
    .C_M_AXI_MAC_FIFO_ARUSER_WIDTH(1),
    .C_M_AXI_MAC_FIFO_WUSER_WIDTH(1),
    .C_M_AXI_MAC_FIFO_RUSER_WIDTH(1),
    .C_M_AXI_MAC_FIFO_BUSER_WIDTH(1),
    .C_M_AXI_MAC_FIFO_USER_VALUE(32'H00000000),
    .C_M_AXI_MAC_FIFO_PROT_VALUE(3'B000),
    .C_M_AXI_MAC_FIFO_CACHE_VALUE(4'B0011),
    .C_M_AXI_PS_ID_WIDTH(1),
    .C_M_AXI_PS_ADDR_WIDTH(64),
    .C_M_AXI_PS_DATA_WIDTH(64),
    .C_M_AXI_PS_AWUSER_WIDTH(1),
    .C_M_AXI_PS_ARUSER_WIDTH(1),
    .C_M_AXI_PS_WUSER_WIDTH(1),
    .C_M_AXI_PS_RUSER_WIDTH(1),
    .C_M_AXI_PS_BUSER_WIDTH(1),
    .C_M_AXI_PS_USER_VALUE(32'H00000000),
    .C_M_AXI_PS_PROT_VALUE(3'B000),
    .C_M_AXI_PS_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_axilites_AWADDR(s_axi_axilites_AWADDR),
    .s_axi_axilites_AWVALID(s_axi_axilites_AWVALID),
    .s_axi_axilites_AWREADY(s_axi_axilites_AWREADY),
    .s_axi_axilites_WDATA(s_axi_axilites_WDATA),
    .s_axi_axilites_WSTRB(s_axi_axilites_WSTRB),
    .s_axi_axilites_WVALID(s_axi_axilites_WVALID),
    .s_axi_axilites_WREADY(s_axi_axilites_WREADY),
    .s_axi_axilites_BRESP(s_axi_axilites_BRESP),
    .s_axi_axilites_BVALID(s_axi_axilites_BVALID),
    .s_axi_axilites_BREADY(s_axi_axilites_BREADY),
    .s_axi_axilites_ARADDR(s_axi_axilites_ARADDR),
    .s_axi_axilites_ARVALID(s_axi_axilites_ARVALID),
    .s_axi_axilites_ARREADY(s_axi_axilites_ARREADY),
    .s_axi_axilites_RDATA(s_axi_axilites_RDATA),
    .s_axi_axilites_RRESP(s_axi_axilites_RRESP),
    .s_axi_axilites_RVALID(s_axi_axilites_RVALID),
    .s_axi_axilites_RREADY(s_axi_axilites_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_fifo_axi_full_AWID(m_axi_fifo_axi_full_AWID),
    .m_axi_fifo_axi_full_AWADDR(m_axi_fifo_axi_full_AWADDR),
    .m_axi_fifo_axi_full_AWLEN(m_axi_fifo_axi_full_AWLEN),
    .m_axi_fifo_axi_full_AWSIZE(m_axi_fifo_axi_full_AWSIZE),
    .m_axi_fifo_axi_full_AWBURST(m_axi_fifo_axi_full_AWBURST),
    .m_axi_fifo_axi_full_AWLOCK(m_axi_fifo_axi_full_AWLOCK),
    .m_axi_fifo_axi_full_AWREGION(m_axi_fifo_axi_full_AWREGION),
    .m_axi_fifo_axi_full_AWCACHE(m_axi_fifo_axi_full_AWCACHE),
    .m_axi_fifo_axi_full_AWPROT(m_axi_fifo_axi_full_AWPROT),
    .m_axi_fifo_axi_full_AWQOS(m_axi_fifo_axi_full_AWQOS),
    .m_axi_fifo_axi_full_AWUSER(),
    .m_axi_fifo_axi_full_AWVALID(m_axi_fifo_axi_full_AWVALID),
    .m_axi_fifo_axi_full_AWREADY(m_axi_fifo_axi_full_AWREADY),
    .m_axi_fifo_axi_full_WID(m_axi_fifo_axi_full_WID),
    .m_axi_fifo_axi_full_WDATA(m_axi_fifo_axi_full_WDATA),
    .m_axi_fifo_axi_full_WSTRB(m_axi_fifo_axi_full_WSTRB),
    .m_axi_fifo_axi_full_WLAST(m_axi_fifo_axi_full_WLAST),
    .m_axi_fifo_axi_full_WUSER(),
    .m_axi_fifo_axi_full_WVALID(m_axi_fifo_axi_full_WVALID),
    .m_axi_fifo_axi_full_WREADY(m_axi_fifo_axi_full_WREADY),
    .m_axi_fifo_axi_full_BID(m_axi_fifo_axi_full_BID),
    .m_axi_fifo_axi_full_BRESP(m_axi_fifo_axi_full_BRESP),
    .m_axi_fifo_axi_full_BUSER(1'B0),
    .m_axi_fifo_axi_full_BVALID(m_axi_fifo_axi_full_BVALID),
    .m_axi_fifo_axi_full_BREADY(m_axi_fifo_axi_full_BREADY),
    .m_axi_fifo_axi_full_ARID(m_axi_fifo_axi_full_ARID),
    .m_axi_fifo_axi_full_ARADDR(m_axi_fifo_axi_full_ARADDR),
    .m_axi_fifo_axi_full_ARLEN(m_axi_fifo_axi_full_ARLEN),
    .m_axi_fifo_axi_full_ARSIZE(m_axi_fifo_axi_full_ARSIZE),
    .m_axi_fifo_axi_full_ARBURST(m_axi_fifo_axi_full_ARBURST),
    .m_axi_fifo_axi_full_ARLOCK(m_axi_fifo_axi_full_ARLOCK),
    .m_axi_fifo_axi_full_ARREGION(m_axi_fifo_axi_full_ARREGION),
    .m_axi_fifo_axi_full_ARCACHE(m_axi_fifo_axi_full_ARCACHE),
    .m_axi_fifo_axi_full_ARPROT(m_axi_fifo_axi_full_ARPROT),
    .m_axi_fifo_axi_full_ARQOS(m_axi_fifo_axi_full_ARQOS),
    .m_axi_fifo_axi_full_ARUSER(),
    .m_axi_fifo_axi_full_ARVALID(m_axi_fifo_axi_full_ARVALID),
    .m_axi_fifo_axi_full_ARREADY(m_axi_fifo_axi_full_ARREADY),
    .m_axi_fifo_axi_full_RID(m_axi_fifo_axi_full_RID),
    .m_axi_fifo_axi_full_RDATA(m_axi_fifo_axi_full_RDATA),
    .m_axi_fifo_axi_full_RRESP(m_axi_fifo_axi_full_RRESP),
    .m_axi_fifo_axi_full_RLAST(m_axi_fifo_axi_full_RLAST),
    .m_axi_fifo_axi_full_RUSER(1'B0),
    .m_axi_fifo_axi_full_RVALID(m_axi_fifo_axi_full_RVALID),
    .m_axi_fifo_axi_full_RREADY(m_axi_fifo_axi_full_RREADY),
    .m_axi_mac_fifo_AWID(),
    .m_axi_mac_fifo_AWADDR(m_axi_mac_fifo_AWADDR),
    .m_axi_mac_fifo_AWLEN(m_axi_mac_fifo_AWLEN),
    .m_axi_mac_fifo_AWSIZE(m_axi_mac_fifo_AWSIZE),
    .m_axi_mac_fifo_AWBURST(m_axi_mac_fifo_AWBURST),
    .m_axi_mac_fifo_AWLOCK(m_axi_mac_fifo_AWLOCK),
    .m_axi_mac_fifo_AWREGION(m_axi_mac_fifo_AWREGION),
    .m_axi_mac_fifo_AWCACHE(m_axi_mac_fifo_AWCACHE),
    .m_axi_mac_fifo_AWPROT(m_axi_mac_fifo_AWPROT),
    .m_axi_mac_fifo_AWQOS(m_axi_mac_fifo_AWQOS),
    .m_axi_mac_fifo_AWUSER(),
    .m_axi_mac_fifo_AWVALID(m_axi_mac_fifo_AWVALID),
    .m_axi_mac_fifo_AWREADY(m_axi_mac_fifo_AWREADY),
    .m_axi_mac_fifo_WID(),
    .m_axi_mac_fifo_WDATA(m_axi_mac_fifo_WDATA),
    .m_axi_mac_fifo_WSTRB(m_axi_mac_fifo_WSTRB),
    .m_axi_mac_fifo_WLAST(m_axi_mac_fifo_WLAST),
    .m_axi_mac_fifo_WUSER(),
    .m_axi_mac_fifo_WVALID(m_axi_mac_fifo_WVALID),
    .m_axi_mac_fifo_WREADY(m_axi_mac_fifo_WREADY),
    .m_axi_mac_fifo_BID(1'B0),
    .m_axi_mac_fifo_BRESP(m_axi_mac_fifo_BRESP),
    .m_axi_mac_fifo_BUSER(1'B0),
    .m_axi_mac_fifo_BVALID(m_axi_mac_fifo_BVALID),
    .m_axi_mac_fifo_BREADY(m_axi_mac_fifo_BREADY),
    .m_axi_mac_fifo_ARID(),
    .m_axi_mac_fifo_ARADDR(m_axi_mac_fifo_ARADDR),
    .m_axi_mac_fifo_ARLEN(m_axi_mac_fifo_ARLEN),
    .m_axi_mac_fifo_ARSIZE(m_axi_mac_fifo_ARSIZE),
    .m_axi_mac_fifo_ARBURST(m_axi_mac_fifo_ARBURST),
    .m_axi_mac_fifo_ARLOCK(m_axi_mac_fifo_ARLOCK),
    .m_axi_mac_fifo_ARREGION(m_axi_mac_fifo_ARREGION),
    .m_axi_mac_fifo_ARCACHE(m_axi_mac_fifo_ARCACHE),
    .m_axi_mac_fifo_ARPROT(m_axi_mac_fifo_ARPROT),
    .m_axi_mac_fifo_ARQOS(m_axi_mac_fifo_ARQOS),
    .m_axi_mac_fifo_ARUSER(),
    .m_axi_mac_fifo_ARVALID(m_axi_mac_fifo_ARVALID),
    .m_axi_mac_fifo_ARREADY(m_axi_mac_fifo_ARREADY),
    .m_axi_mac_fifo_RID(1'B0),
    .m_axi_mac_fifo_RDATA(m_axi_mac_fifo_RDATA),
    .m_axi_mac_fifo_RRESP(m_axi_mac_fifo_RRESP),
    .m_axi_mac_fifo_RLAST(m_axi_mac_fifo_RLAST),
    .m_axi_mac_fifo_RUSER(1'B0),
    .m_axi_mac_fifo_RVALID(m_axi_mac_fifo_RVALID),
    .m_axi_mac_fifo_RREADY(m_axi_mac_fifo_RREADY),
    .m_axi_ps_AWID(),
    .m_axi_ps_AWADDR(m_axi_ps_AWADDR),
    .m_axi_ps_AWLEN(m_axi_ps_AWLEN),
    .m_axi_ps_AWSIZE(m_axi_ps_AWSIZE),
    .m_axi_ps_AWBURST(m_axi_ps_AWBURST),
    .m_axi_ps_AWLOCK(m_axi_ps_AWLOCK),
    .m_axi_ps_AWREGION(m_axi_ps_AWREGION),
    .m_axi_ps_AWCACHE(m_axi_ps_AWCACHE),
    .m_axi_ps_AWPROT(m_axi_ps_AWPROT),
    .m_axi_ps_AWQOS(m_axi_ps_AWQOS),
    .m_axi_ps_AWUSER(),
    .m_axi_ps_AWVALID(m_axi_ps_AWVALID),
    .m_axi_ps_AWREADY(m_axi_ps_AWREADY),
    .m_axi_ps_WID(),
    .m_axi_ps_WDATA(m_axi_ps_WDATA),
    .m_axi_ps_WSTRB(m_axi_ps_WSTRB),
    .m_axi_ps_WLAST(m_axi_ps_WLAST),
    .m_axi_ps_WUSER(),
    .m_axi_ps_WVALID(m_axi_ps_WVALID),
    .m_axi_ps_WREADY(m_axi_ps_WREADY),
    .m_axi_ps_BID(1'B0),
    .m_axi_ps_BRESP(m_axi_ps_BRESP),
    .m_axi_ps_BUSER(1'B0),
    .m_axi_ps_BVALID(m_axi_ps_BVALID),
    .m_axi_ps_BREADY(m_axi_ps_BREADY),
    .m_axi_ps_ARID(),
    .m_axi_ps_ARADDR(m_axi_ps_ARADDR),
    .m_axi_ps_ARLEN(m_axi_ps_ARLEN),
    .m_axi_ps_ARSIZE(m_axi_ps_ARSIZE),
    .m_axi_ps_ARBURST(m_axi_ps_ARBURST),
    .m_axi_ps_ARLOCK(m_axi_ps_ARLOCK),
    .m_axi_ps_ARREGION(m_axi_ps_ARREGION),
    .m_axi_ps_ARCACHE(m_axi_ps_ARCACHE),
    .m_axi_ps_ARPROT(m_axi_ps_ARPROT),
    .m_axi_ps_ARQOS(m_axi_ps_ARQOS),
    .m_axi_ps_ARUSER(),
    .m_axi_ps_ARVALID(m_axi_ps_ARVALID),
    .m_axi_ps_ARREADY(m_axi_ps_ARREADY),
    .m_axi_ps_RID(1'B0),
    .m_axi_ps_RDATA(m_axi_ps_RDATA),
    .m_axi_ps_RRESP(m_axi_ps_RRESP),
    .m_axi_ps_RLAST(m_axi_ps_RLAST),
    .m_axi_ps_RUSER(1'B0),
    .m_axi_ps_RVALID(m_axi_ps_RVALID),
    .m_axi_ps_RREADY(m_axi_ps_RREADY),
    .timestamp(timestamp)
  );
endmodule
