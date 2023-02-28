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


// IP VLNV: xilinx.com:hls:clu:1.0
// IP Revision: 2112815767

(* X_CORE_INFO = "clu,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_clu_0_0,clu,{}" *)
(* CORE_GENERATION_INFO = "design_1_clu_0_0,clu,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=clu,x_ipVersion=1.0,x_ipCoreRevision=2112815767,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_EN_ADDR_WIDTH=8,C_S_AXI_EN_DATA_WIDTH=32,C_M_AXI_CLU_ADDR_ID_WIDTH=1,C_M_AXI_CLU_ADDR_ADDR_WIDTH=64,C_M_AXI_CLU_ADDR_DATA_WIDTH=32,C_M_AXI_CLU_ADDR_AWUSER_WIDTH=1,C_M_AXI_CLU_ADDR_ARUSER_WIDTH=1,C_M_AXI_CLU_ADDR_WUSER_WIDTH=1,C_M_AXI_CLU_ADDR_RUSER_WIDTH=1,C_M_AXI_CLU_ADDR_BUSER_WIDTH=1,C_M_AXI_CLU_ADDR_U\
SER_VALUE=0x00000000,C_M_AXI_CLU_ADDR_PROT_VALUE=000,C_M_AXI_CLU_ADDR_CACHE_VALUE=0011,C_M_AXI_PS_DDR_ID_WIDTH=1,C_M_AXI_PS_DDR_ADDR_WIDTH=64,C_M_AXI_PS_DDR_DATA_WIDTH=32,C_M_AXI_PS_DDR_AWUSER_WIDTH=1,C_M_AXI_PS_DDR_ARUSER_WIDTH=1,C_M_AXI_PS_DDR_WUSER_WIDTH=1,C_M_AXI_PS_DDR_RUSER_WIDTH=1,C_M_AXI_PS_DDR_BUSER_WIDTH=1,C_M_AXI_PS_DDR_USER_VALUE=0x00000000,C_M_AXI_PS_DDR_PROT_VALUE=000,C_M_AXI_PS_DDR_CACHE_VALUE=0011}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_clu_0_0 (
  s_axi_EN_AWADDR,
  s_axi_EN_AWVALID,
  s_axi_EN_AWREADY,
  s_axi_EN_WDATA,
  s_axi_EN_WSTRB,
  s_axi_EN_WVALID,
  s_axi_EN_WREADY,
  s_axi_EN_BRESP,
  s_axi_EN_BVALID,
  s_axi_EN_BREADY,
  s_axi_EN_ARADDR,
  s_axi_EN_ARVALID,
  s_axi_EN_ARREADY,
  s_axi_EN_RDATA,
  s_axi_EN_RRESP,
  s_axi_EN_RVALID,
  s_axi_EN_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_clu_addr_AWADDR,
  m_axi_clu_addr_AWLEN,
  m_axi_clu_addr_AWSIZE,
  m_axi_clu_addr_AWBURST,
  m_axi_clu_addr_AWLOCK,
  m_axi_clu_addr_AWREGION,
  m_axi_clu_addr_AWCACHE,
  m_axi_clu_addr_AWPROT,
  m_axi_clu_addr_AWQOS,
  m_axi_clu_addr_AWVALID,
  m_axi_clu_addr_AWREADY,
  m_axi_clu_addr_WDATA,
  m_axi_clu_addr_WSTRB,
  m_axi_clu_addr_WLAST,
  m_axi_clu_addr_WVALID,
  m_axi_clu_addr_WREADY,
  m_axi_clu_addr_BRESP,
  m_axi_clu_addr_BVALID,
  m_axi_clu_addr_BREADY,
  m_axi_clu_addr_ARADDR,
  m_axi_clu_addr_ARLEN,
  m_axi_clu_addr_ARSIZE,
  m_axi_clu_addr_ARBURST,
  m_axi_clu_addr_ARLOCK,
  m_axi_clu_addr_ARREGION,
  m_axi_clu_addr_ARCACHE,
  m_axi_clu_addr_ARPROT,
  m_axi_clu_addr_ARQOS,
  m_axi_clu_addr_ARVALID,
  m_axi_clu_addr_ARREADY,
  m_axi_clu_addr_RDATA,
  m_axi_clu_addr_RRESP,
  m_axi_clu_addr_RLAST,
  m_axi_clu_addr_RVALID,
  m_axi_clu_addr_RREADY,
  m_axi_ps_ddr_AWADDR,
  m_axi_ps_ddr_AWLEN,
  m_axi_ps_ddr_AWSIZE,
  m_axi_ps_ddr_AWBURST,
  m_axi_ps_ddr_AWLOCK,
  m_axi_ps_ddr_AWREGION,
  m_axi_ps_ddr_AWCACHE,
  m_axi_ps_ddr_AWPROT,
  m_axi_ps_ddr_AWQOS,
  m_axi_ps_ddr_AWVALID,
  m_axi_ps_ddr_AWREADY,
  m_axi_ps_ddr_WDATA,
  m_axi_ps_ddr_WSTRB,
  m_axi_ps_ddr_WLAST,
  m_axi_ps_ddr_WVALID,
  m_axi_ps_ddr_WREADY,
  m_axi_ps_ddr_BRESP,
  m_axi_ps_ddr_BVALID,
  m_axi_ps_ddr_BREADY,
  m_axi_ps_ddr_ARADDR,
  m_axi_ps_ddr_ARLEN,
  m_axi_ps_ddr_ARSIZE,
  m_axi_ps_ddr_ARBURST,
  m_axi_ps_ddr_ARLOCK,
  m_axi_ps_ddr_ARREGION,
  m_axi_ps_ddr_ARCACHE,
  m_axi_ps_ddr_ARPROT,
  m_axi_ps_ddr_ARQOS,
  m_axi_ps_ddr_ARVALID,
  m_axi_ps_ddr_ARREADY,
  m_axi_ps_ddr_RDATA,
  m_axi_ps_ddr_RRESP,
  m_axi_ps_ddr_RLAST,
  m_axi_ps_ddr_RVALID,
  m_axi_ps_ddr_RREADY,
  timestamp
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN AWADDR" *)
input wire [7 : 0] s_axi_EN_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN AWVALID" *)
input wire s_axi_EN_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN AWREADY" *)
output wire s_axi_EN_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN WDATA" *)
input wire [31 : 0] s_axi_EN_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN WSTRB" *)
input wire [3 : 0] s_axi_EN_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN WVALID" *)
input wire s_axi_EN_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN WREADY" *)
output wire s_axi_EN_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN BRESP" *)
output wire [1 : 0] s_axi_EN_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN BVALID" *)
output wire s_axi_EN_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN BREADY" *)
input wire s_axi_EN_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN ARADDR" *)
input wire [7 : 0] s_axi_EN_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN ARVALID" *)
input wire s_axi_EN_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN ARREADY" *)
output wire s_axi_EN_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN RDATA" *)
output wire [31 : 0] s_axi_EN_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN RRESP" *)
output wire [1 : 0] s_axi_EN_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN RVALID" *)
output wire s_axi_EN_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_EN, ADDR_WIDTH 8, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999985, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1,\
 NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_EN RREADY" *)
input wire s_axi_EN_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_EN:m_axi_clu_addr:m_axi_ps_ddr, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999985, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWADDR" *)
output wire [63 : 0] m_axi_clu_addr_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWLEN" *)
output wire [7 : 0] m_axi_clu_addr_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWSIZE" *)
output wire [2 : 0] m_axi_clu_addr_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWBURST" *)
output wire [1 : 0] m_axi_clu_addr_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWLOCK" *)
output wire [1 : 0] m_axi_clu_addr_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWREGION" *)
output wire [3 : 0] m_axi_clu_addr_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWCACHE" *)
output wire [3 : 0] m_axi_clu_addr_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWPROT" *)
output wire [2 : 0] m_axi_clu_addr_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWQOS" *)
output wire [3 : 0] m_axi_clu_addr_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWVALID" *)
output wire m_axi_clu_addr_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr AWREADY" *)
input wire m_axi_clu_addr_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr WDATA" *)
output wire [31 : 0] m_axi_clu_addr_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr WSTRB" *)
output wire [3 : 0] m_axi_clu_addr_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr WLAST" *)
output wire m_axi_clu_addr_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr WVALID" *)
output wire m_axi_clu_addr_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr WREADY" *)
input wire m_axi_clu_addr_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr BRESP" *)
input wire [1 : 0] m_axi_clu_addr_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr BVALID" *)
input wire m_axi_clu_addr_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr BREADY" *)
output wire m_axi_clu_addr_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARADDR" *)
output wire [63 : 0] m_axi_clu_addr_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARLEN" *)
output wire [7 : 0] m_axi_clu_addr_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARSIZE" *)
output wire [2 : 0] m_axi_clu_addr_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARBURST" *)
output wire [1 : 0] m_axi_clu_addr_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARLOCK" *)
output wire [1 : 0] m_axi_clu_addr_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARREGION" *)
output wire [3 : 0] m_axi_clu_addr_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARCACHE" *)
output wire [3 : 0] m_axi_clu_addr_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARPROT" *)
output wire [2 : 0] m_axi_clu_addr_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARQOS" *)
output wire [3 : 0] m_axi_clu_addr_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARVALID" *)
output wire m_axi_clu_addr_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr ARREADY" *)
input wire m_axi_clu_addr_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr RDATA" *)
input wire [31 : 0] m_axi_clu_addr_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr RRESP" *)
input wire [1 : 0] m_axi_clu_addr_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr RLAST" *)
input wire m_axi_clu_addr_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr RVALID" *)
input wire m_axi_clu_addr_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_clu_addr, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 99999985, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMA\
IN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_clu_addr RREADY" *)
output wire m_axi_clu_addr_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWADDR" *)
output wire [63 : 0] m_axi_ps_ddr_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWLEN" *)
output wire [7 : 0] m_axi_ps_ddr_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWSIZE" *)
output wire [2 : 0] m_axi_ps_ddr_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWBURST" *)
output wire [1 : 0] m_axi_ps_ddr_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWLOCK" *)
output wire [1 : 0] m_axi_ps_ddr_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWREGION" *)
output wire [3 : 0] m_axi_ps_ddr_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWCACHE" *)
output wire [3 : 0] m_axi_ps_ddr_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWPROT" *)
output wire [2 : 0] m_axi_ps_ddr_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWQOS" *)
output wire [3 : 0] m_axi_ps_ddr_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWVALID" *)
output wire m_axi_ps_ddr_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr AWREADY" *)
input wire m_axi_ps_ddr_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr WDATA" *)
output wire [31 : 0] m_axi_ps_ddr_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr WSTRB" *)
output wire [3 : 0] m_axi_ps_ddr_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr WLAST" *)
output wire m_axi_ps_ddr_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr WVALID" *)
output wire m_axi_ps_ddr_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr WREADY" *)
input wire m_axi_ps_ddr_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr BRESP" *)
input wire [1 : 0] m_axi_ps_ddr_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr BVALID" *)
input wire m_axi_ps_ddr_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr BREADY" *)
output wire m_axi_ps_ddr_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARADDR" *)
output wire [63 : 0] m_axi_ps_ddr_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARLEN" *)
output wire [7 : 0] m_axi_ps_ddr_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARSIZE" *)
output wire [2 : 0] m_axi_ps_ddr_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARBURST" *)
output wire [1 : 0] m_axi_ps_ddr_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARLOCK" *)
output wire [1 : 0] m_axi_ps_ddr_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARREGION" *)
output wire [3 : 0] m_axi_ps_ddr_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARCACHE" *)
output wire [3 : 0] m_axi_ps_ddr_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARPROT" *)
output wire [2 : 0] m_axi_ps_ddr_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARQOS" *)
output wire [3 : 0] m_axi_ps_ddr_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARVALID" *)
output wire m_axi_ps_ddr_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr ARREADY" *)
input wire m_axi_ps_ddr_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr RDATA" *)
input wire [31 : 0] m_axi_ps_ddr_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr RRESP" *)
input wire [1 : 0] m_axi_ps_ddr_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr RLAST" *)
input wire m_axi_ps_ddr_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr RVALID" *)
input wire m_axi_ps_ddr_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_ps_ddr, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, MAX_BURST_LENGTH 256, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 99999985, ID_WIDTH 0, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN\
 design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_ps_ddr RREADY" *)
output wire m_axi_ps_ddr_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME timestamp, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 timestamp DATA" *)
input wire [63 : 0] timestamp;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  clu #(
    .C_S_AXI_EN_ADDR_WIDTH(8),
    .C_S_AXI_EN_DATA_WIDTH(32),
    .C_M_AXI_CLU_ADDR_ID_WIDTH(1),
    .C_M_AXI_CLU_ADDR_ADDR_WIDTH(64),
    .C_M_AXI_CLU_ADDR_DATA_WIDTH(32),
    .C_M_AXI_CLU_ADDR_AWUSER_WIDTH(1),
    .C_M_AXI_CLU_ADDR_ARUSER_WIDTH(1),
    .C_M_AXI_CLU_ADDR_WUSER_WIDTH(1),
    .C_M_AXI_CLU_ADDR_RUSER_WIDTH(1),
    .C_M_AXI_CLU_ADDR_BUSER_WIDTH(1),
    .C_M_AXI_CLU_ADDR_USER_VALUE(32'H00000000),
    .C_M_AXI_CLU_ADDR_PROT_VALUE(3'B000),
    .C_M_AXI_CLU_ADDR_CACHE_VALUE(4'B0011),
    .C_M_AXI_PS_DDR_ID_WIDTH(1),
    .C_M_AXI_PS_DDR_ADDR_WIDTH(64),
    .C_M_AXI_PS_DDR_DATA_WIDTH(32),
    .C_M_AXI_PS_DDR_AWUSER_WIDTH(1),
    .C_M_AXI_PS_DDR_ARUSER_WIDTH(1),
    .C_M_AXI_PS_DDR_WUSER_WIDTH(1),
    .C_M_AXI_PS_DDR_RUSER_WIDTH(1),
    .C_M_AXI_PS_DDR_BUSER_WIDTH(1),
    .C_M_AXI_PS_DDR_USER_VALUE(32'H00000000),
    .C_M_AXI_PS_DDR_PROT_VALUE(3'B000),
    .C_M_AXI_PS_DDR_CACHE_VALUE(4'B0011)
  ) inst (
    .s_axi_EN_AWADDR(s_axi_EN_AWADDR),
    .s_axi_EN_AWVALID(s_axi_EN_AWVALID),
    .s_axi_EN_AWREADY(s_axi_EN_AWREADY),
    .s_axi_EN_WDATA(s_axi_EN_WDATA),
    .s_axi_EN_WSTRB(s_axi_EN_WSTRB),
    .s_axi_EN_WVALID(s_axi_EN_WVALID),
    .s_axi_EN_WREADY(s_axi_EN_WREADY),
    .s_axi_EN_BRESP(s_axi_EN_BRESP),
    .s_axi_EN_BVALID(s_axi_EN_BVALID),
    .s_axi_EN_BREADY(s_axi_EN_BREADY),
    .s_axi_EN_ARADDR(s_axi_EN_ARADDR),
    .s_axi_EN_ARVALID(s_axi_EN_ARVALID),
    .s_axi_EN_ARREADY(s_axi_EN_ARREADY),
    .s_axi_EN_RDATA(s_axi_EN_RDATA),
    .s_axi_EN_RRESP(s_axi_EN_RRESP),
    .s_axi_EN_RVALID(s_axi_EN_RVALID),
    .s_axi_EN_RREADY(s_axi_EN_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_clu_addr_AWID(),
    .m_axi_clu_addr_AWADDR(m_axi_clu_addr_AWADDR),
    .m_axi_clu_addr_AWLEN(m_axi_clu_addr_AWLEN),
    .m_axi_clu_addr_AWSIZE(m_axi_clu_addr_AWSIZE),
    .m_axi_clu_addr_AWBURST(m_axi_clu_addr_AWBURST),
    .m_axi_clu_addr_AWLOCK(m_axi_clu_addr_AWLOCK),
    .m_axi_clu_addr_AWREGION(m_axi_clu_addr_AWREGION),
    .m_axi_clu_addr_AWCACHE(m_axi_clu_addr_AWCACHE),
    .m_axi_clu_addr_AWPROT(m_axi_clu_addr_AWPROT),
    .m_axi_clu_addr_AWQOS(m_axi_clu_addr_AWQOS),
    .m_axi_clu_addr_AWUSER(),
    .m_axi_clu_addr_AWVALID(m_axi_clu_addr_AWVALID),
    .m_axi_clu_addr_AWREADY(m_axi_clu_addr_AWREADY),
    .m_axi_clu_addr_WID(),
    .m_axi_clu_addr_WDATA(m_axi_clu_addr_WDATA),
    .m_axi_clu_addr_WSTRB(m_axi_clu_addr_WSTRB),
    .m_axi_clu_addr_WLAST(m_axi_clu_addr_WLAST),
    .m_axi_clu_addr_WUSER(),
    .m_axi_clu_addr_WVALID(m_axi_clu_addr_WVALID),
    .m_axi_clu_addr_WREADY(m_axi_clu_addr_WREADY),
    .m_axi_clu_addr_BID(1'B0),
    .m_axi_clu_addr_BRESP(m_axi_clu_addr_BRESP),
    .m_axi_clu_addr_BUSER(1'B0),
    .m_axi_clu_addr_BVALID(m_axi_clu_addr_BVALID),
    .m_axi_clu_addr_BREADY(m_axi_clu_addr_BREADY),
    .m_axi_clu_addr_ARID(),
    .m_axi_clu_addr_ARADDR(m_axi_clu_addr_ARADDR),
    .m_axi_clu_addr_ARLEN(m_axi_clu_addr_ARLEN),
    .m_axi_clu_addr_ARSIZE(m_axi_clu_addr_ARSIZE),
    .m_axi_clu_addr_ARBURST(m_axi_clu_addr_ARBURST),
    .m_axi_clu_addr_ARLOCK(m_axi_clu_addr_ARLOCK),
    .m_axi_clu_addr_ARREGION(m_axi_clu_addr_ARREGION),
    .m_axi_clu_addr_ARCACHE(m_axi_clu_addr_ARCACHE),
    .m_axi_clu_addr_ARPROT(m_axi_clu_addr_ARPROT),
    .m_axi_clu_addr_ARQOS(m_axi_clu_addr_ARQOS),
    .m_axi_clu_addr_ARUSER(),
    .m_axi_clu_addr_ARVALID(m_axi_clu_addr_ARVALID),
    .m_axi_clu_addr_ARREADY(m_axi_clu_addr_ARREADY),
    .m_axi_clu_addr_RID(1'B0),
    .m_axi_clu_addr_RDATA(m_axi_clu_addr_RDATA),
    .m_axi_clu_addr_RRESP(m_axi_clu_addr_RRESP),
    .m_axi_clu_addr_RLAST(m_axi_clu_addr_RLAST),
    .m_axi_clu_addr_RUSER(1'B0),
    .m_axi_clu_addr_RVALID(m_axi_clu_addr_RVALID),
    .m_axi_clu_addr_RREADY(m_axi_clu_addr_RREADY),
    .m_axi_ps_ddr_AWID(),
    .m_axi_ps_ddr_AWADDR(m_axi_ps_ddr_AWADDR),
    .m_axi_ps_ddr_AWLEN(m_axi_ps_ddr_AWLEN),
    .m_axi_ps_ddr_AWSIZE(m_axi_ps_ddr_AWSIZE),
    .m_axi_ps_ddr_AWBURST(m_axi_ps_ddr_AWBURST),
    .m_axi_ps_ddr_AWLOCK(m_axi_ps_ddr_AWLOCK),
    .m_axi_ps_ddr_AWREGION(m_axi_ps_ddr_AWREGION),
    .m_axi_ps_ddr_AWCACHE(m_axi_ps_ddr_AWCACHE),
    .m_axi_ps_ddr_AWPROT(m_axi_ps_ddr_AWPROT),
    .m_axi_ps_ddr_AWQOS(m_axi_ps_ddr_AWQOS),
    .m_axi_ps_ddr_AWUSER(),
    .m_axi_ps_ddr_AWVALID(m_axi_ps_ddr_AWVALID),
    .m_axi_ps_ddr_AWREADY(m_axi_ps_ddr_AWREADY),
    .m_axi_ps_ddr_WID(),
    .m_axi_ps_ddr_WDATA(m_axi_ps_ddr_WDATA),
    .m_axi_ps_ddr_WSTRB(m_axi_ps_ddr_WSTRB),
    .m_axi_ps_ddr_WLAST(m_axi_ps_ddr_WLAST),
    .m_axi_ps_ddr_WUSER(),
    .m_axi_ps_ddr_WVALID(m_axi_ps_ddr_WVALID),
    .m_axi_ps_ddr_WREADY(m_axi_ps_ddr_WREADY),
    .m_axi_ps_ddr_BID(1'B0),
    .m_axi_ps_ddr_BRESP(m_axi_ps_ddr_BRESP),
    .m_axi_ps_ddr_BUSER(1'B0),
    .m_axi_ps_ddr_BVALID(m_axi_ps_ddr_BVALID),
    .m_axi_ps_ddr_BREADY(m_axi_ps_ddr_BREADY),
    .m_axi_ps_ddr_ARID(),
    .m_axi_ps_ddr_ARADDR(m_axi_ps_ddr_ARADDR),
    .m_axi_ps_ddr_ARLEN(m_axi_ps_ddr_ARLEN),
    .m_axi_ps_ddr_ARSIZE(m_axi_ps_ddr_ARSIZE),
    .m_axi_ps_ddr_ARBURST(m_axi_ps_ddr_ARBURST),
    .m_axi_ps_ddr_ARLOCK(m_axi_ps_ddr_ARLOCK),
    .m_axi_ps_ddr_ARREGION(m_axi_ps_ddr_ARREGION),
    .m_axi_ps_ddr_ARCACHE(m_axi_ps_ddr_ARCACHE),
    .m_axi_ps_ddr_ARPROT(m_axi_ps_ddr_ARPROT),
    .m_axi_ps_ddr_ARQOS(m_axi_ps_ddr_ARQOS),
    .m_axi_ps_ddr_ARUSER(),
    .m_axi_ps_ddr_ARVALID(m_axi_ps_ddr_ARVALID),
    .m_axi_ps_ddr_ARREADY(m_axi_ps_ddr_ARREADY),
    .m_axi_ps_ddr_RID(1'B0),
    .m_axi_ps_ddr_RDATA(m_axi_ps_ddr_RDATA),
    .m_axi_ps_ddr_RRESP(m_axi_ps_ddr_RRESP),
    .m_axi_ps_ddr_RLAST(m_axi_ps_ddr_RLAST),
    .m_axi_ps_ddr_RUSER(1'B0),
    .m_axi_ps_ddr_RVALID(m_axi_ps_ddr_RVALID),
    .m_axi_ps_ddr_RREADY(m_axi_ps_ddr_RREADY),
    .timestamp(timestamp)
  );
endmodule
