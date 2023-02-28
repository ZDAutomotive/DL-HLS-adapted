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


//------------------------------------------------------------------------------------
// Filename:    design_1_zynq_ultra_ps_e_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//   Aldec Riviera-PRO Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module design_1_zynq_ultra_ps_e_0_0 (
  input bit_as_bool maxihpm0_fpd_aclk,
  output bit [15 : 0] maxigp0_awid,
  output bit [39 : 0] maxigp0_awaddr,
  output bit [7 : 0] maxigp0_awlen,
  output bit [2 : 0] maxigp0_awsize,
  output bit [1 : 0] maxigp0_awburst,
  output bit_as_bool maxigp0_awlock,
  output bit [3 : 0] maxigp0_awcache,
  output bit [2 : 0] maxigp0_awprot,
  output bit_as_bool maxigp0_awvalid,
  output bit [15 : 0] maxigp0_awuser,
  input bit_as_bool maxigp0_awready,
  output bit [31 : 0] maxigp0_wdata,
  output bit [3 : 0] maxigp0_wstrb,
  output bit_as_bool maxigp0_wlast,
  output bit_as_bool maxigp0_wvalid,
  input bit_as_bool maxigp0_wready,
  input bit [15 : 0] maxigp0_bid,
  input bit [1 : 0] maxigp0_bresp,
  input bit_as_bool maxigp0_bvalid,
  output bit_as_bool maxigp0_bready,
  output bit [15 : 0] maxigp0_arid,
  output bit [39 : 0] maxigp0_araddr,
  output bit [7 : 0] maxigp0_arlen,
  output bit [2 : 0] maxigp0_arsize,
  output bit [1 : 0] maxigp0_arburst,
  output bit_as_bool maxigp0_arlock,
  output bit [3 : 0] maxigp0_arcache,
  output bit [2 : 0] maxigp0_arprot,
  output bit_as_bool maxigp0_arvalid,
  output bit [15 : 0] maxigp0_aruser,
  input bit_as_bool maxigp0_arready,
  input bit [15 : 0] maxigp0_rid,
  input bit [31 : 0] maxigp0_rdata,
  input bit [1 : 0] maxigp0_rresp,
  input bit_as_bool maxigp0_rlast,
  input bit_as_bool maxigp0_rvalid,
  output bit_as_bool maxigp0_rready,
  output bit [3 : 0] maxigp0_awqos,
  output bit [3 : 0] maxigp0_arqos,
  input bit_as_bool maxihpm1_fpd_aclk,
  output bit [15 : 0] maxigp1_awid,
  output bit [39 : 0] maxigp1_awaddr,
  output bit [7 : 0] maxigp1_awlen,
  output bit [2 : 0] maxigp1_awsize,
  output bit [1 : 0] maxigp1_awburst,
  output bit_as_bool maxigp1_awlock,
  output bit [3 : 0] maxigp1_awcache,
  output bit [2 : 0] maxigp1_awprot,
  output bit_as_bool maxigp1_awvalid,
  output bit [15 : 0] maxigp1_awuser,
  input bit_as_bool maxigp1_awready,
  output bit [31 : 0] maxigp1_wdata,
  output bit [3 : 0] maxigp1_wstrb,
  output bit_as_bool maxigp1_wlast,
  output bit_as_bool maxigp1_wvalid,
  input bit_as_bool maxigp1_wready,
  input bit [15 : 0] maxigp1_bid,
  input bit [1 : 0] maxigp1_bresp,
  input bit_as_bool maxigp1_bvalid,
  output bit_as_bool maxigp1_bready,
  output bit [15 : 0] maxigp1_arid,
  output bit [39 : 0] maxigp1_araddr,
  output bit [7 : 0] maxigp1_arlen,
  output bit [2 : 0] maxigp1_arsize,
  output bit [1 : 0] maxigp1_arburst,
  output bit_as_bool maxigp1_arlock,
  output bit [3 : 0] maxigp1_arcache,
  output bit [2 : 0] maxigp1_arprot,
  output bit_as_bool maxigp1_arvalid,
  output bit [15 : 0] maxigp1_aruser,
  input bit_as_bool maxigp1_arready,
  input bit [15 : 0] maxigp1_rid,
  input bit [31 : 0] maxigp1_rdata,
  input bit [1 : 0] maxigp1_rresp,
  input bit_as_bool maxigp1_rlast,
  input bit_as_bool maxigp1_rvalid,
  output bit_as_bool maxigp1_rready,
  output bit [3 : 0] maxigp1_awqos,
  output bit [3 : 0] maxigp1_arqos,
  input bit_as_bool saxihp0_fpd_aclk,
  input bit_as_bool saxigp2_aruser,
  input bit_as_bool saxigp2_awuser,
  input bit [5 : 0] saxigp2_awid,
  input bit [48 : 0] saxigp2_awaddr,
  input bit [7 : 0] saxigp2_awlen,
  input bit [2 : 0] saxigp2_awsize,
  input bit [1 : 0] saxigp2_awburst,
  input bit_as_bool saxigp2_awlock,
  input bit [3 : 0] saxigp2_awcache,
  input bit [2 : 0] saxigp2_awprot,
  input bit_as_bool saxigp2_awvalid,
  output bit_as_bool saxigp2_awready,
  input bit [127 : 0] saxigp2_wdata,
  input bit [15 : 0] saxigp2_wstrb,
  input bit_as_bool saxigp2_wlast,
  input bit_as_bool saxigp2_wvalid,
  output bit_as_bool saxigp2_wready,
  output bit [5 : 0] saxigp2_bid,
  output bit [1 : 0] saxigp2_bresp,
  output bit_as_bool saxigp2_bvalid,
  input bit_as_bool saxigp2_bready,
  input bit [5 : 0] saxigp2_arid,
  input bit [48 : 0] saxigp2_araddr,
  input bit [7 : 0] saxigp2_arlen,
  input bit [2 : 0] saxigp2_arsize,
  input bit [1 : 0] saxigp2_arburst,
  input bit_as_bool saxigp2_arlock,
  input bit [3 : 0] saxigp2_arcache,
  input bit [2 : 0] saxigp2_arprot,
  input bit_as_bool saxigp2_arvalid,
  output bit_as_bool saxigp2_arready,
  output bit [5 : 0] saxigp2_rid,
  output bit [127 : 0] saxigp2_rdata,
  output bit [1 : 0] saxigp2_rresp,
  output bit_as_bool saxigp2_rlast,
  output bit_as_bool saxigp2_rvalid,
  input bit_as_bool saxigp2_rready,
  input bit [3 : 0] saxigp2_awqos,
  input bit [3 : 0] saxigp2_arqos,
  input bit_as_bool saxihp1_fpd_aclk,
  input bit_as_bool saxigp3_aruser,
  input bit_as_bool saxigp3_awuser,
  input bit [5 : 0] saxigp3_awid,
  input bit [48 : 0] saxigp3_awaddr,
  input bit [7 : 0] saxigp3_awlen,
  input bit [2 : 0] saxigp3_awsize,
  input bit [1 : 0] saxigp3_awburst,
  input bit_as_bool saxigp3_awlock,
  input bit [3 : 0] saxigp3_awcache,
  input bit [2 : 0] saxigp3_awprot,
  input bit_as_bool saxigp3_awvalid,
  output bit_as_bool saxigp3_awready,
  input bit [127 : 0] saxigp3_wdata,
  input bit [15 : 0] saxigp3_wstrb,
  input bit_as_bool saxigp3_wlast,
  input bit_as_bool saxigp3_wvalid,
  output bit_as_bool saxigp3_wready,
  output bit [5 : 0] saxigp3_bid,
  output bit [1 : 0] saxigp3_bresp,
  output bit_as_bool saxigp3_bvalid,
  input bit_as_bool saxigp3_bready,
  input bit [5 : 0] saxigp3_arid,
  input bit [48 : 0] saxigp3_araddr,
  input bit [7 : 0] saxigp3_arlen,
  input bit [2 : 0] saxigp3_arsize,
  input bit [1 : 0] saxigp3_arburst,
  input bit_as_bool saxigp3_arlock,
  input bit [3 : 0] saxigp3_arcache,
  input bit [2 : 0] saxigp3_arprot,
  input bit_as_bool saxigp3_arvalid,
  output bit_as_bool saxigp3_arready,
  output bit [5 : 0] saxigp3_rid,
  output bit [127 : 0] saxigp3_rdata,
  output bit [1 : 0] saxigp3_rresp,
  output bit_as_bool saxigp3_rlast,
  output bit_as_bool saxigp3_rvalid,
  input bit_as_bool saxigp3_rready,
  input bit [3 : 0] saxigp3_awqos,
  input bit [3 : 0] saxigp3_arqos,
  input bit_as_bool emio_enet0_gmii_rx_clk,
  output bit [2 : 0] emio_enet0_speed_mode,
  input bit_as_bool emio_enet0_gmii_crs,
  input bit_as_bool emio_enet0_gmii_col,
  input bit [7 : 0] emio_enet0_gmii_rxd,
  input bit_as_bool emio_enet0_gmii_rx_er,
  input bit_as_bool emio_enet0_gmii_rx_dv,
  input bit_as_bool emio_enet0_gmii_tx_clk,
  output bit [7 : 0] emio_enet0_gmii_txd,
  output bit_as_bool emio_enet0_gmii_tx_en,
  output bit_as_bool emio_enet0_gmii_tx_er,
  output bit_as_bool emio_enet0_mdio_mdc,
  input bit_as_bool emio_enet0_mdio_i,
  output bit_as_bool emio_enet0_mdio_o,
  output bit_as_bool emio_enet0_mdio_t,
  input bit_as_bool emio_enet1_gmii_rx_clk,
  output bit [2 : 0] emio_enet1_speed_mode,
  input bit_as_bool emio_enet1_gmii_crs,
  input bit_as_bool emio_enet1_gmii_col,
  input bit [7 : 0] emio_enet1_gmii_rxd,
  input bit_as_bool emio_enet1_gmii_rx_er,
  input bit_as_bool emio_enet1_gmii_rx_dv,
  input bit_as_bool emio_enet1_gmii_tx_clk,
  output bit [7 : 0] emio_enet1_gmii_txd,
  output bit_as_bool emio_enet1_gmii_tx_en,
  output bit_as_bool emio_enet1_gmii_tx_er,
  output bit_as_bool emio_enet1_mdio_mdc,
  input bit_as_bool emio_enet1_mdio_i,
  output bit_as_bool emio_enet1_mdio_o,
  output bit_as_bool emio_enet1_mdio_t,
  input bit_as_bool emio_enet2_gmii_rx_clk,
  output bit [2 : 0] emio_enet2_speed_mode,
  input bit_as_bool emio_enet2_gmii_crs,
  input bit_as_bool emio_enet2_gmii_col,
  input bit [7 : 0] emio_enet2_gmii_rxd,
  input bit_as_bool emio_enet2_gmii_rx_er,
  input bit_as_bool emio_enet2_gmii_rx_dv,
  input bit_as_bool emio_enet2_gmii_tx_clk,
  output bit [7 : 0] emio_enet2_gmii_txd,
  output bit_as_bool emio_enet2_gmii_tx_en,
  output bit_as_bool emio_enet2_gmii_tx_er,
  output bit_as_bool emio_enet2_mdio_mdc,
  input bit_as_bool emio_enet2_mdio_i,
  output bit_as_bool emio_enet2_mdio_o,
  output bit_as_bool emio_enet2_mdio_t,
  input bit [1 : 0] emio_enet0_tsu_inc_ctrl,
  output bit_as_bool emio_enet0_tsu_timer_cmp_val,
  input bit [1 : 0] emio_enet1_tsu_inc_ctrl,
  output bit_as_bool emio_enet1_tsu_timer_cmp_val,
  input bit [1 : 0] emio_enet2_tsu_inc_ctrl,
  output bit_as_bool emio_enet2_tsu_timer_cmp_val,
  output bit [93 : 0] emio_enet0_enet_tsu_timer_cnt,
  input bit_as_bool emio_enet0_ext_int_in,
  input bit_as_bool emio_enet1_ext_int_in,
  input bit_as_bool emio_enet2_ext_int_in,
  output bit [1 : 0] emio_enet0_dma_bus_width,
  output bit [1 : 0] emio_enet1_dma_bus_width,
  output bit [1 : 0] emio_enet2_dma_bus_width,
  input bit [3 : 0] emio_gpio_i,
  output bit [3 : 0] emio_gpio_o,
  output bit [3 : 0] emio_gpio_t,
  input bit [0 : 0] pl_ps_irq0,
  input bit [0 : 0] pl_ps_irq1,
  output bit_as_bool pl_resetn0,
  output bit_as_bool pl_clk0,
  output bit_as_bool pl_clk1
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module design_1_zynq_ultra_ps_e_0_0 (maxihpm0_fpd_aclk,maxigp0_awid,maxigp0_awaddr,maxigp0_awlen,maxigp0_awsize,maxigp0_awburst,maxigp0_awlock,maxigp0_awcache,maxigp0_awprot,maxigp0_awvalid,maxigp0_awuser,maxigp0_awready,maxigp0_wdata,maxigp0_wstrb,maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid,maxigp0_bresp,maxigp0_bvalid,maxigp0_bready,maxigp0_arid,maxigp0_araddr,maxigp0_arlen,maxigp0_arsize,maxigp0_arburst,maxigp0_arlock,maxigp0_arcache,maxigp0_arprot,maxigp0_arvalid,maxigp0_aruser,maxigp0_arready,maxigp0_rid,maxigp0_rdata,maxigp0_rresp,maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos,maxigp0_arqos,maxihpm1_fpd_aclk,maxigp1_awid,maxigp1_awaddr,maxigp1_awlen,maxigp1_awsize,maxigp1_awburst,maxigp1_awlock,maxigp1_awcache,maxigp1_awprot,maxigp1_awvalid,maxigp1_awuser,maxigp1_awready,maxigp1_wdata,maxigp1_wstrb,maxigp1_wlast,maxigp1_wvalid,maxigp1_wready,maxigp1_bid,maxigp1_bresp,maxigp1_bvalid,maxigp1_bready,maxigp1_arid,maxigp1_araddr,maxigp1_arlen,maxigp1_arsize,maxigp1_arburst,maxigp1_arlock,maxigp1_arcache,maxigp1_arprot,maxigp1_arvalid,maxigp1_aruser,maxigp1_arready,maxigp1_rid,maxigp1_rdata,maxigp1_rresp,maxigp1_rlast,maxigp1_rvalid,maxigp1_rready,maxigp1_awqos,maxigp1_arqos,saxihp0_fpd_aclk,saxigp2_aruser,saxigp2_awuser,saxigp2_awid,saxigp2_awaddr,saxigp2_awlen,saxigp2_awsize,saxigp2_awburst,saxigp2_awlock,saxigp2_awcache,saxigp2_awprot,saxigp2_awvalid,saxigp2_awready,saxigp2_wdata,saxigp2_wstrb,saxigp2_wlast,saxigp2_wvalid,saxigp2_wready,saxigp2_bid,saxigp2_bresp,saxigp2_bvalid,saxigp2_bready,saxigp2_arid,saxigp2_araddr,saxigp2_arlen,saxigp2_arsize,saxigp2_arburst,saxigp2_arlock,saxigp2_arcache,saxigp2_arprot,saxigp2_arvalid,saxigp2_arready,saxigp2_rid,saxigp2_rdata,saxigp2_rresp,saxigp2_rlast,saxigp2_rvalid,saxigp2_rready,saxigp2_awqos,saxigp2_arqos,saxihp1_fpd_aclk,saxigp3_aruser,saxigp3_awuser,saxigp3_awid,saxigp3_awaddr,saxigp3_awlen,saxigp3_awsize,saxigp3_awburst,saxigp3_awlock,saxigp3_awcache,saxigp3_awprot,saxigp3_awvalid,saxigp3_awready,saxigp3_wdata,saxigp3_wstrb,saxigp3_wlast,saxigp3_wvalid,saxigp3_wready,saxigp3_bid,saxigp3_bresp,saxigp3_bvalid,saxigp3_bready,saxigp3_arid,saxigp3_araddr,saxigp3_arlen,saxigp3_arsize,saxigp3_arburst,saxigp3_arlock,saxigp3_arcache,saxigp3_arprot,saxigp3_arvalid,saxigp3_arready,saxigp3_rid,saxigp3_rdata,saxigp3_rresp,saxigp3_rlast,saxigp3_rvalid,saxigp3_rready,saxigp3_awqos,saxigp3_arqos,emio_enet0_gmii_rx_clk,emio_enet0_speed_mode,emio_enet0_gmii_crs,emio_enet0_gmii_col,emio_enet0_gmii_rxd,emio_enet0_gmii_rx_er,emio_enet0_gmii_rx_dv,emio_enet0_gmii_tx_clk,emio_enet0_gmii_txd,emio_enet0_gmii_tx_en,emio_enet0_gmii_tx_er,emio_enet0_mdio_mdc,emio_enet0_mdio_i,emio_enet0_mdio_o,emio_enet0_mdio_t,emio_enet1_gmii_rx_clk,emio_enet1_speed_mode,emio_enet1_gmii_crs,emio_enet1_gmii_col,emio_enet1_gmii_rxd,emio_enet1_gmii_rx_er,emio_enet1_gmii_rx_dv,emio_enet1_gmii_tx_clk,emio_enet1_gmii_txd,emio_enet1_gmii_tx_en,emio_enet1_gmii_tx_er,emio_enet1_mdio_mdc,emio_enet1_mdio_i,emio_enet1_mdio_o,emio_enet1_mdio_t,emio_enet2_gmii_rx_clk,emio_enet2_speed_mode,emio_enet2_gmii_crs,emio_enet2_gmii_col,emio_enet2_gmii_rxd,emio_enet2_gmii_rx_er,emio_enet2_gmii_rx_dv,emio_enet2_gmii_tx_clk,emio_enet2_gmii_txd,emio_enet2_gmii_tx_en,emio_enet2_gmii_tx_er,emio_enet2_mdio_mdc,emio_enet2_mdio_i,emio_enet2_mdio_o,emio_enet2_mdio_t,emio_enet0_tsu_inc_ctrl,emio_enet0_tsu_timer_cmp_val,emio_enet1_tsu_inc_ctrl,emio_enet1_tsu_timer_cmp_val,emio_enet2_tsu_inc_ctrl,emio_enet2_tsu_timer_cmp_val,emio_enet0_enet_tsu_timer_cnt,emio_enet0_ext_int_in,emio_enet1_ext_int_in,emio_enet2_ext_int_in,emio_enet0_dma_bus_width,emio_enet1_dma_bus_width,emio_enet2_dma_bus_width,emio_gpio_i,emio_gpio_o,emio_gpio_t,pl_ps_irq0,pl_ps_irq1,pl_resetn0,pl_clk0,pl_clk1)
(* integer foreign = "SystemC";
*);
  input bit maxihpm0_fpd_aclk;
  output wire [15 : 0] maxigp0_awid;
  output wire [39 : 0] maxigp0_awaddr;
  output wire [7 : 0] maxigp0_awlen;
  output wire [2 : 0] maxigp0_awsize;
  output wire [1 : 0] maxigp0_awburst;
  output wire maxigp0_awlock;
  output wire [3 : 0] maxigp0_awcache;
  output wire [2 : 0] maxigp0_awprot;
  output wire maxigp0_awvalid;
  output wire [15 : 0] maxigp0_awuser;
  input bit maxigp0_awready;
  output wire [31 : 0] maxigp0_wdata;
  output wire [3 : 0] maxigp0_wstrb;
  output wire maxigp0_wlast;
  output wire maxigp0_wvalid;
  input bit maxigp0_wready;
  input bit [15 : 0] maxigp0_bid;
  input bit [1 : 0] maxigp0_bresp;
  input bit maxigp0_bvalid;
  output wire maxigp0_bready;
  output wire [15 : 0] maxigp0_arid;
  output wire [39 : 0] maxigp0_araddr;
  output wire [7 : 0] maxigp0_arlen;
  output wire [2 : 0] maxigp0_arsize;
  output wire [1 : 0] maxigp0_arburst;
  output wire maxigp0_arlock;
  output wire [3 : 0] maxigp0_arcache;
  output wire [2 : 0] maxigp0_arprot;
  output wire maxigp0_arvalid;
  output wire [15 : 0] maxigp0_aruser;
  input bit maxigp0_arready;
  input bit [15 : 0] maxigp0_rid;
  input bit [31 : 0] maxigp0_rdata;
  input bit [1 : 0] maxigp0_rresp;
  input bit maxigp0_rlast;
  input bit maxigp0_rvalid;
  output wire maxigp0_rready;
  output wire [3 : 0] maxigp0_awqos;
  output wire [3 : 0] maxigp0_arqos;
  input bit maxihpm1_fpd_aclk;
  output wire [15 : 0] maxigp1_awid;
  output wire [39 : 0] maxigp1_awaddr;
  output wire [7 : 0] maxigp1_awlen;
  output wire [2 : 0] maxigp1_awsize;
  output wire [1 : 0] maxigp1_awburst;
  output wire maxigp1_awlock;
  output wire [3 : 0] maxigp1_awcache;
  output wire [2 : 0] maxigp1_awprot;
  output wire maxigp1_awvalid;
  output wire [15 : 0] maxigp1_awuser;
  input bit maxigp1_awready;
  output wire [31 : 0] maxigp1_wdata;
  output wire [3 : 0] maxigp1_wstrb;
  output wire maxigp1_wlast;
  output wire maxigp1_wvalid;
  input bit maxigp1_wready;
  input bit [15 : 0] maxigp1_bid;
  input bit [1 : 0] maxigp1_bresp;
  input bit maxigp1_bvalid;
  output wire maxigp1_bready;
  output wire [15 : 0] maxigp1_arid;
  output wire [39 : 0] maxigp1_araddr;
  output wire [7 : 0] maxigp1_arlen;
  output wire [2 : 0] maxigp1_arsize;
  output wire [1 : 0] maxigp1_arburst;
  output wire maxigp1_arlock;
  output wire [3 : 0] maxigp1_arcache;
  output wire [2 : 0] maxigp1_arprot;
  output wire maxigp1_arvalid;
  output wire [15 : 0] maxigp1_aruser;
  input bit maxigp1_arready;
  input bit [15 : 0] maxigp1_rid;
  input bit [31 : 0] maxigp1_rdata;
  input bit [1 : 0] maxigp1_rresp;
  input bit maxigp1_rlast;
  input bit maxigp1_rvalid;
  output wire maxigp1_rready;
  output wire [3 : 0] maxigp1_awqos;
  output wire [3 : 0] maxigp1_arqos;
  input bit saxihp0_fpd_aclk;
  input bit saxigp2_aruser;
  input bit saxigp2_awuser;
  input bit [5 : 0] saxigp2_awid;
  input bit [48 : 0] saxigp2_awaddr;
  input bit [7 : 0] saxigp2_awlen;
  input bit [2 : 0] saxigp2_awsize;
  input bit [1 : 0] saxigp2_awburst;
  input bit saxigp2_awlock;
  input bit [3 : 0] saxigp2_awcache;
  input bit [2 : 0] saxigp2_awprot;
  input bit saxigp2_awvalid;
  output wire saxigp2_awready;
  input bit [127 : 0] saxigp2_wdata;
  input bit [15 : 0] saxigp2_wstrb;
  input bit saxigp2_wlast;
  input bit saxigp2_wvalid;
  output wire saxigp2_wready;
  output wire [5 : 0] saxigp2_bid;
  output wire [1 : 0] saxigp2_bresp;
  output wire saxigp2_bvalid;
  input bit saxigp2_bready;
  input bit [5 : 0] saxigp2_arid;
  input bit [48 : 0] saxigp2_araddr;
  input bit [7 : 0] saxigp2_arlen;
  input bit [2 : 0] saxigp2_arsize;
  input bit [1 : 0] saxigp2_arburst;
  input bit saxigp2_arlock;
  input bit [3 : 0] saxigp2_arcache;
  input bit [2 : 0] saxigp2_arprot;
  input bit saxigp2_arvalid;
  output wire saxigp2_arready;
  output wire [5 : 0] saxigp2_rid;
  output wire [127 : 0] saxigp2_rdata;
  output wire [1 : 0] saxigp2_rresp;
  output wire saxigp2_rlast;
  output wire saxigp2_rvalid;
  input bit saxigp2_rready;
  input bit [3 : 0] saxigp2_awqos;
  input bit [3 : 0] saxigp2_arqos;
  input bit saxihp1_fpd_aclk;
  input bit saxigp3_aruser;
  input bit saxigp3_awuser;
  input bit [5 : 0] saxigp3_awid;
  input bit [48 : 0] saxigp3_awaddr;
  input bit [7 : 0] saxigp3_awlen;
  input bit [2 : 0] saxigp3_awsize;
  input bit [1 : 0] saxigp3_awburst;
  input bit saxigp3_awlock;
  input bit [3 : 0] saxigp3_awcache;
  input bit [2 : 0] saxigp3_awprot;
  input bit saxigp3_awvalid;
  output wire saxigp3_awready;
  input bit [127 : 0] saxigp3_wdata;
  input bit [15 : 0] saxigp3_wstrb;
  input bit saxigp3_wlast;
  input bit saxigp3_wvalid;
  output wire saxigp3_wready;
  output wire [5 : 0] saxigp3_bid;
  output wire [1 : 0] saxigp3_bresp;
  output wire saxigp3_bvalid;
  input bit saxigp3_bready;
  input bit [5 : 0] saxigp3_arid;
  input bit [48 : 0] saxigp3_araddr;
  input bit [7 : 0] saxigp3_arlen;
  input bit [2 : 0] saxigp3_arsize;
  input bit [1 : 0] saxigp3_arburst;
  input bit saxigp3_arlock;
  input bit [3 : 0] saxigp3_arcache;
  input bit [2 : 0] saxigp3_arprot;
  input bit saxigp3_arvalid;
  output wire saxigp3_arready;
  output wire [5 : 0] saxigp3_rid;
  output wire [127 : 0] saxigp3_rdata;
  output wire [1 : 0] saxigp3_rresp;
  output wire saxigp3_rlast;
  output wire saxigp3_rvalid;
  input bit saxigp3_rready;
  input bit [3 : 0] saxigp3_awqos;
  input bit [3 : 0] saxigp3_arqos;
  input bit emio_enet0_gmii_rx_clk;
  output wire [2 : 0] emio_enet0_speed_mode;
  input bit emio_enet0_gmii_crs;
  input bit emio_enet0_gmii_col;
  input bit [7 : 0] emio_enet0_gmii_rxd;
  input bit emio_enet0_gmii_rx_er;
  input bit emio_enet0_gmii_rx_dv;
  input bit emio_enet0_gmii_tx_clk;
  output wire [7 : 0] emio_enet0_gmii_txd;
  output wire emio_enet0_gmii_tx_en;
  output wire emio_enet0_gmii_tx_er;
  output wire emio_enet0_mdio_mdc;
  input bit emio_enet0_mdio_i;
  output wire emio_enet0_mdio_o;
  output wire emio_enet0_mdio_t;
  input bit emio_enet1_gmii_rx_clk;
  output wire [2 : 0] emio_enet1_speed_mode;
  input bit emio_enet1_gmii_crs;
  input bit emio_enet1_gmii_col;
  input bit [7 : 0] emio_enet1_gmii_rxd;
  input bit emio_enet1_gmii_rx_er;
  input bit emio_enet1_gmii_rx_dv;
  input bit emio_enet1_gmii_tx_clk;
  output wire [7 : 0] emio_enet1_gmii_txd;
  output wire emio_enet1_gmii_tx_en;
  output wire emio_enet1_gmii_tx_er;
  output wire emio_enet1_mdio_mdc;
  input bit emio_enet1_mdio_i;
  output wire emio_enet1_mdio_o;
  output wire emio_enet1_mdio_t;
  input bit emio_enet2_gmii_rx_clk;
  output wire [2 : 0] emio_enet2_speed_mode;
  input bit emio_enet2_gmii_crs;
  input bit emio_enet2_gmii_col;
  input bit [7 : 0] emio_enet2_gmii_rxd;
  input bit emio_enet2_gmii_rx_er;
  input bit emio_enet2_gmii_rx_dv;
  input bit emio_enet2_gmii_tx_clk;
  output wire [7 : 0] emio_enet2_gmii_txd;
  output wire emio_enet2_gmii_tx_en;
  output wire emio_enet2_gmii_tx_er;
  output wire emio_enet2_mdio_mdc;
  input bit emio_enet2_mdio_i;
  output wire emio_enet2_mdio_o;
  output wire emio_enet2_mdio_t;
  input bit [1 : 0] emio_enet0_tsu_inc_ctrl;
  output wire emio_enet0_tsu_timer_cmp_val;
  input bit [1 : 0] emio_enet1_tsu_inc_ctrl;
  output wire emio_enet1_tsu_timer_cmp_val;
  input bit [1 : 0] emio_enet2_tsu_inc_ctrl;
  output wire emio_enet2_tsu_timer_cmp_val;
  output wire [93 : 0] emio_enet0_enet_tsu_timer_cnt;
  input bit emio_enet0_ext_int_in;
  input bit emio_enet1_ext_int_in;
  input bit emio_enet2_ext_int_in;
  output wire [1 : 0] emio_enet0_dma_bus_width;
  output wire [1 : 0] emio_enet1_dma_bus_width;
  output wire [1 : 0] emio_enet2_dma_bus_width;
  input bit [3 : 0] emio_gpio_i;
  output wire [3 : 0] emio_gpio_o;
  output wire [3 : 0] emio_gpio_t;
  input bit [0 : 0] pl_ps_irq0;
  input bit [0 : 0] pl_ps_irq1;
  output wire pl_resetn0;
  output wire pl_clk0;
  output wire pl_clk1;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module design_1_zynq_ultra_ps_e_0_0 (maxihpm0_fpd_aclk,maxigp0_awid,maxigp0_awaddr,maxigp0_awlen,maxigp0_awsize,maxigp0_awburst,maxigp0_awlock,maxigp0_awcache,maxigp0_awprot,maxigp0_awvalid,maxigp0_awuser,maxigp0_awready,maxigp0_wdata,maxigp0_wstrb,maxigp0_wlast,maxigp0_wvalid,maxigp0_wready,maxigp0_bid,maxigp0_bresp,maxigp0_bvalid,maxigp0_bready,maxigp0_arid,maxigp0_araddr,maxigp0_arlen,maxigp0_arsize,maxigp0_arburst,maxigp0_arlock,maxigp0_arcache,maxigp0_arprot,maxigp0_arvalid,maxigp0_aruser,maxigp0_arready,maxigp0_rid,maxigp0_rdata,maxigp0_rresp,maxigp0_rlast,maxigp0_rvalid,maxigp0_rready,maxigp0_awqos,maxigp0_arqos,maxihpm1_fpd_aclk,maxigp1_awid,maxigp1_awaddr,maxigp1_awlen,maxigp1_awsize,maxigp1_awburst,maxigp1_awlock,maxigp1_awcache,maxigp1_awprot,maxigp1_awvalid,maxigp1_awuser,maxigp1_awready,maxigp1_wdata,maxigp1_wstrb,maxigp1_wlast,maxigp1_wvalid,maxigp1_wready,maxigp1_bid,maxigp1_bresp,maxigp1_bvalid,maxigp1_bready,maxigp1_arid,maxigp1_araddr,maxigp1_arlen,maxigp1_arsize,maxigp1_arburst,maxigp1_arlock,maxigp1_arcache,maxigp1_arprot,maxigp1_arvalid,maxigp1_aruser,maxigp1_arready,maxigp1_rid,maxigp1_rdata,maxigp1_rresp,maxigp1_rlast,maxigp1_rvalid,maxigp1_rready,maxigp1_awqos,maxigp1_arqos,saxihp0_fpd_aclk,saxigp2_aruser,saxigp2_awuser,saxigp2_awid,saxigp2_awaddr,saxigp2_awlen,saxigp2_awsize,saxigp2_awburst,saxigp2_awlock,saxigp2_awcache,saxigp2_awprot,saxigp2_awvalid,saxigp2_awready,saxigp2_wdata,saxigp2_wstrb,saxigp2_wlast,saxigp2_wvalid,saxigp2_wready,saxigp2_bid,saxigp2_bresp,saxigp2_bvalid,saxigp2_bready,saxigp2_arid,saxigp2_araddr,saxigp2_arlen,saxigp2_arsize,saxigp2_arburst,saxigp2_arlock,saxigp2_arcache,saxigp2_arprot,saxigp2_arvalid,saxigp2_arready,saxigp2_rid,saxigp2_rdata,saxigp2_rresp,saxigp2_rlast,saxigp2_rvalid,saxigp2_rready,saxigp2_awqos,saxigp2_arqos,saxihp1_fpd_aclk,saxigp3_aruser,saxigp3_awuser,saxigp3_awid,saxigp3_awaddr,saxigp3_awlen,saxigp3_awsize,saxigp3_awburst,saxigp3_awlock,saxigp3_awcache,saxigp3_awprot,saxigp3_awvalid,saxigp3_awready,saxigp3_wdata,saxigp3_wstrb,saxigp3_wlast,saxigp3_wvalid,saxigp3_wready,saxigp3_bid,saxigp3_bresp,saxigp3_bvalid,saxigp3_bready,saxigp3_arid,saxigp3_araddr,saxigp3_arlen,saxigp3_arsize,saxigp3_arburst,saxigp3_arlock,saxigp3_arcache,saxigp3_arprot,saxigp3_arvalid,saxigp3_arready,saxigp3_rid,saxigp3_rdata,saxigp3_rresp,saxigp3_rlast,saxigp3_rvalid,saxigp3_rready,saxigp3_awqos,saxigp3_arqos,emio_enet0_gmii_rx_clk,emio_enet0_speed_mode,emio_enet0_gmii_crs,emio_enet0_gmii_col,emio_enet0_gmii_rxd,emio_enet0_gmii_rx_er,emio_enet0_gmii_rx_dv,emio_enet0_gmii_tx_clk,emio_enet0_gmii_txd,emio_enet0_gmii_tx_en,emio_enet0_gmii_tx_er,emio_enet0_mdio_mdc,emio_enet0_mdio_i,emio_enet0_mdio_o,emio_enet0_mdio_t,emio_enet1_gmii_rx_clk,emio_enet1_speed_mode,emio_enet1_gmii_crs,emio_enet1_gmii_col,emio_enet1_gmii_rxd,emio_enet1_gmii_rx_er,emio_enet1_gmii_rx_dv,emio_enet1_gmii_tx_clk,emio_enet1_gmii_txd,emio_enet1_gmii_tx_en,emio_enet1_gmii_tx_er,emio_enet1_mdio_mdc,emio_enet1_mdio_i,emio_enet1_mdio_o,emio_enet1_mdio_t,emio_enet2_gmii_rx_clk,emio_enet2_speed_mode,emio_enet2_gmii_crs,emio_enet2_gmii_col,emio_enet2_gmii_rxd,emio_enet2_gmii_rx_er,emio_enet2_gmii_rx_dv,emio_enet2_gmii_tx_clk,emio_enet2_gmii_txd,emio_enet2_gmii_tx_en,emio_enet2_gmii_tx_er,emio_enet2_mdio_mdc,emio_enet2_mdio_i,emio_enet2_mdio_o,emio_enet2_mdio_t,emio_enet0_tsu_inc_ctrl,emio_enet0_tsu_timer_cmp_val,emio_enet1_tsu_inc_ctrl,emio_enet1_tsu_timer_cmp_val,emio_enet2_tsu_inc_ctrl,emio_enet2_tsu_timer_cmp_val,emio_enet0_enet_tsu_timer_cnt,emio_enet0_ext_int_in,emio_enet1_ext_int_in,emio_enet2_ext_int_in,emio_enet0_dma_bus_width,emio_enet1_dma_bus_width,emio_enet2_dma_bus_width,emio_gpio_i,emio_gpio_o,emio_gpio_t,pl_ps_irq0,pl_ps_irq1,pl_resetn0,pl_clk0,pl_clk1)
  input bit maxihpm0_fpd_aclk;
  output wire [15 : 0] maxigp0_awid;
  output wire [39 : 0] maxigp0_awaddr;
  output wire [7 : 0] maxigp0_awlen;
  output wire [2 : 0] maxigp0_awsize;
  output wire [1 : 0] maxigp0_awburst;
  output wire maxigp0_awlock;
  output wire [3 : 0] maxigp0_awcache;
  output wire [2 : 0] maxigp0_awprot;
  output wire maxigp0_awvalid;
  output wire [15 : 0] maxigp0_awuser;
  input bit maxigp0_awready;
  output wire [31 : 0] maxigp0_wdata;
  output wire [3 : 0] maxigp0_wstrb;
  output wire maxigp0_wlast;
  output wire maxigp0_wvalid;
  input bit maxigp0_wready;
  input bit [15 : 0] maxigp0_bid;
  input bit [1 : 0] maxigp0_bresp;
  input bit maxigp0_bvalid;
  output wire maxigp0_bready;
  output wire [15 : 0] maxigp0_arid;
  output wire [39 : 0] maxigp0_araddr;
  output wire [7 : 0] maxigp0_arlen;
  output wire [2 : 0] maxigp0_arsize;
  output wire [1 : 0] maxigp0_arburst;
  output wire maxigp0_arlock;
  output wire [3 : 0] maxigp0_arcache;
  output wire [2 : 0] maxigp0_arprot;
  output wire maxigp0_arvalid;
  output wire [15 : 0] maxigp0_aruser;
  input bit maxigp0_arready;
  input bit [15 : 0] maxigp0_rid;
  input bit [31 : 0] maxigp0_rdata;
  input bit [1 : 0] maxigp0_rresp;
  input bit maxigp0_rlast;
  input bit maxigp0_rvalid;
  output wire maxigp0_rready;
  output wire [3 : 0] maxigp0_awqos;
  output wire [3 : 0] maxigp0_arqos;
  input bit maxihpm1_fpd_aclk;
  output wire [15 : 0] maxigp1_awid;
  output wire [39 : 0] maxigp1_awaddr;
  output wire [7 : 0] maxigp1_awlen;
  output wire [2 : 0] maxigp1_awsize;
  output wire [1 : 0] maxigp1_awburst;
  output wire maxigp1_awlock;
  output wire [3 : 0] maxigp1_awcache;
  output wire [2 : 0] maxigp1_awprot;
  output wire maxigp1_awvalid;
  output wire [15 : 0] maxigp1_awuser;
  input bit maxigp1_awready;
  output wire [31 : 0] maxigp1_wdata;
  output wire [3 : 0] maxigp1_wstrb;
  output wire maxigp1_wlast;
  output wire maxigp1_wvalid;
  input bit maxigp1_wready;
  input bit [15 : 0] maxigp1_bid;
  input bit [1 : 0] maxigp1_bresp;
  input bit maxigp1_bvalid;
  output wire maxigp1_bready;
  output wire [15 : 0] maxigp1_arid;
  output wire [39 : 0] maxigp1_araddr;
  output wire [7 : 0] maxigp1_arlen;
  output wire [2 : 0] maxigp1_arsize;
  output wire [1 : 0] maxigp1_arburst;
  output wire maxigp1_arlock;
  output wire [3 : 0] maxigp1_arcache;
  output wire [2 : 0] maxigp1_arprot;
  output wire maxigp1_arvalid;
  output wire [15 : 0] maxigp1_aruser;
  input bit maxigp1_arready;
  input bit [15 : 0] maxigp1_rid;
  input bit [31 : 0] maxigp1_rdata;
  input bit [1 : 0] maxigp1_rresp;
  input bit maxigp1_rlast;
  input bit maxigp1_rvalid;
  output wire maxigp1_rready;
  output wire [3 : 0] maxigp1_awqos;
  output wire [3 : 0] maxigp1_arqos;
  input bit saxihp0_fpd_aclk;
  input bit saxigp2_aruser;
  input bit saxigp2_awuser;
  input bit [5 : 0] saxigp2_awid;
  input bit [48 : 0] saxigp2_awaddr;
  input bit [7 : 0] saxigp2_awlen;
  input bit [2 : 0] saxigp2_awsize;
  input bit [1 : 0] saxigp2_awburst;
  input bit saxigp2_awlock;
  input bit [3 : 0] saxigp2_awcache;
  input bit [2 : 0] saxigp2_awprot;
  input bit saxigp2_awvalid;
  output wire saxigp2_awready;
  input bit [127 : 0] saxigp2_wdata;
  input bit [15 : 0] saxigp2_wstrb;
  input bit saxigp2_wlast;
  input bit saxigp2_wvalid;
  output wire saxigp2_wready;
  output wire [5 : 0] saxigp2_bid;
  output wire [1 : 0] saxigp2_bresp;
  output wire saxigp2_bvalid;
  input bit saxigp2_bready;
  input bit [5 : 0] saxigp2_arid;
  input bit [48 : 0] saxigp2_araddr;
  input bit [7 : 0] saxigp2_arlen;
  input bit [2 : 0] saxigp2_arsize;
  input bit [1 : 0] saxigp2_arburst;
  input bit saxigp2_arlock;
  input bit [3 : 0] saxigp2_arcache;
  input bit [2 : 0] saxigp2_arprot;
  input bit saxigp2_arvalid;
  output wire saxigp2_arready;
  output wire [5 : 0] saxigp2_rid;
  output wire [127 : 0] saxigp2_rdata;
  output wire [1 : 0] saxigp2_rresp;
  output wire saxigp2_rlast;
  output wire saxigp2_rvalid;
  input bit saxigp2_rready;
  input bit [3 : 0] saxigp2_awqos;
  input bit [3 : 0] saxigp2_arqos;
  input bit saxihp1_fpd_aclk;
  input bit saxigp3_aruser;
  input bit saxigp3_awuser;
  input bit [5 : 0] saxigp3_awid;
  input bit [48 : 0] saxigp3_awaddr;
  input bit [7 : 0] saxigp3_awlen;
  input bit [2 : 0] saxigp3_awsize;
  input bit [1 : 0] saxigp3_awburst;
  input bit saxigp3_awlock;
  input bit [3 : 0] saxigp3_awcache;
  input bit [2 : 0] saxigp3_awprot;
  input bit saxigp3_awvalid;
  output wire saxigp3_awready;
  input bit [127 : 0] saxigp3_wdata;
  input bit [15 : 0] saxigp3_wstrb;
  input bit saxigp3_wlast;
  input bit saxigp3_wvalid;
  output wire saxigp3_wready;
  output wire [5 : 0] saxigp3_bid;
  output wire [1 : 0] saxigp3_bresp;
  output wire saxigp3_bvalid;
  input bit saxigp3_bready;
  input bit [5 : 0] saxigp3_arid;
  input bit [48 : 0] saxigp3_araddr;
  input bit [7 : 0] saxigp3_arlen;
  input bit [2 : 0] saxigp3_arsize;
  input bit [1 : 0] saxigp3_arburst;
  input bit saxigp3_arlock;
  input bit [3 : 0] saxigp3_arcache;
  input bit [2 : 0] saxigp3_arprot;
  input bit saxigp3_arvalid;
  output wire saxigp3_arready;
  output wire [5 : 0] saxigp3_rid;
  output wire [127 : 0] saxigp3_rdata;
  output wire [1 : 0] saxigp3_rresp;
  output wire saxigp3_rlast;
  output wire saxigp3_rvalid;
  input bit saxigp3_rready;
  input bit [3 : 0] saxigp3_awqos;
  input bit [3 : 0] saxigp3_arqos;
  input bit emio_enet0_gmii_rx_clk;
  output wire [2 : 0] emio_enet0_speed_mode;
  input bit emio_enet0_gmii_crs;
  input bit emio_enet0_gmii_col;
  input bit [7 : 0] emio_enet0_gmii_rxd;
  input bit emio_enet0_gmii_rx_er;
  input bit emio_enet0_gmii_rx_dv;
  input bit emio_enet0_gmii_tx_clk;
  output wire [7 : 0] emio_enet0_gmii_txd;
  output wire emio_enet0_gmii_tx_en;
  output wire emio_enet0_gmii_tx_er;
  output wire emio_enet0_mdio_mdc;
  input bit emio_enet0_mdio_i;
  output wire emio_enet0_mdio_o;
  output wire emio_enet0_mdio_t;
  input bit emio_enet1_gmii_rx_clk;
  output wire [2 : 0] emio_enet1_speed_mode;
  input bit emio_enet1_gmii_crs;
  input bit emio_enet1_gmii_col;
  input bit [7 : 0] emio_enet1_gmii_rxd;
  input bit emio_enet1_gmii_rx_er;
  input bit emio_enet1_gmii_rx_dv;
  input bit emio_enet1_gmii_tx_clk;
  output wire [7 : 0] emio_enet1_gmii_txd;
  output wire emio_enet1_gmii_tx_en;
  output wire emio_enet1_gmii_tx_er;
  output wire emio_enet1_mdio_mdc;
  input bit emio_enet1_mdio_i;
  output wire emio_enet1_mdio_o;
  output wire emio_enet1_mdio_t;
  input bit emio_enet2_gmii_rx_clk;
  output wire [2 : 0] emio_enet2_speed_mode;
  input bit emio_enet2_gmii_crs;
  input bit emio_enet2_gmii_col;
  input bit [7 : 0] emio_enet2_gmii_rxd;
  input bit emio_enet2_gmii_rx_er;
  input bit emio_enet2_gmii_rx_dv;
  input bit emio_enet2_gmii_tx_clk;
  output wire [7 : 0] emio_enet2_gmii_txd;
  output wire emio_enet2_gmii_tx_en;
  output wire emio_enet2_gmii_tx_er;
  output wire emio_enet2_mdio_mdc;
  input bit emio_enet2_mdio_i;
  output wire emio_enet2_mdio_o;
  output wire emio_enet2_mdio_t;
  input bit [1 : 0] emio_enet0_tsu_inc_ctrl;
  output wire emio_enet0_tsu_timer_cmp_val;
  input bit [1 : 0] emio_enet1_tsu_inc_ctrl;
  output wire emio_enet1_tsu_timer_cmp_val;
  input bit [1 : 0] emio_enet2_tsu_inc_ctrl;
  output wire emio_enet2_tsu_timer_cmp_val;
  output wire [93 : 0] emio_enet0_enet_tsu_timer_cnt;
  input bit emio_enet0_ext_int_in;
  input bit emio_enet1_ext_int_in;
  input bit emio_enet2_ext_int_in;
  output wire [1 : 0] emio_enet0_dma_bus_width;
  output wire [1 : 0] emio_enet1_dma_bus_width;
  output wire [1 : 0] emio_enet2_dma_bus_width;
  input bit [3 : 0] emio_gpio_i;
  output wire [3 : 0] emio_gpio_o;
  output wire [3 : 0] emio_gpio_t;
  input bit [0 : 0] pl_ps_irq0;
  input bit [0 : 0] pl_ps_irq1;
  output wire pl_resetn0;
  output wire pl_clk0;
  output wire pl_clk1;
endmodule
`endif
