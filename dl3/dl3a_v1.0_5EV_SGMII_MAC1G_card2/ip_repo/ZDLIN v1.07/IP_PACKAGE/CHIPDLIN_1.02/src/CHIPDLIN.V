//**************************************************************************//
// Copyright (c) 1999-2019  Digital Core Design sp. z o.o. sp. k. (DCD)     //
//**************************************************************************//
// Please review the terms of the license agreement before using this file. //
// If you are not an authorized user, please destroy this source code file  //
// and   notify   DCD  immediately  that  you  inadvertently  received  an  //
// unauthorized copy.                                                       //
//**************************************************************************//
//////////////////////////////////////////////////////////////////////////////
// Project name         : DCPU32                                            //
// Project description  : DCPU32 32-bit Microprocessor Unit                 //
//                                                                          //
// File name            : CHIPDLIN.V                                        //
// Purpose              : DLIN top level modelue with APB                   //
//                                                                          //
// Destination library  : DCPU32_LIB                                        //
//                                                                          //
// Design Engineer      : M.K.                                              //
// Version              : 1.00                                              //
// Last modification    : 2019-06-25                                        //
//////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ns // timescale for following modules

module CHIPDLIN #(
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,

  ////////////////////////////////////////////////////////////////////////////
  // DLIN input
  ////////////////////////////////////////////////////////////////////////////
  input wire rxdi,                               

  ////////////////////////////////////////////////////////////////////////////
  // DLIN output
  ////////////////////////////////////////////////////////////////////////////
  output wire txdo,  
  
  ////////////////////////////////////////////////////////////////////////////
  // DLIN interrupt output
  ////////////////////////////////////////////////////////////////////////////
  output wire irq,
  
  ////////////////////////////////////////////////////////////////////////////
  // DLIN sleep output
  ////////////////////////////////////////////////////////////////////////////  
  output wire sleep
  );
  
  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Signals
  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Wrapper-Peripheral interconnection signals
  wire                        pio_readyi;
    
  wire [31:0]                     pio_datard;
  wire                            pio_clk;
  wire                            pio_rst;
  wire [C_S00_AXI_ADDR_WIDTH-1:0] pio_addr;
  wire [3:0]                      pio_be;
  wire                            pio_wr;
  wire                            pio_rd;
  wire                            pio_cs;
  wire [31:0]                     pio_datawr;  
  
  wire [7:0] pio_datard_int;
  wire [7:0] pio_datawr_int;
  
  assign pio_readyi = 1'b1;
  
  assign pio_datard = {24'h00_00_00, pio_datard_int};
  
  assign pio_datawr_int = (pio_be==4'b1000) ? pio_datawr[31:24] :
                          (pio_be==4'b0100) ? pio_datawr[23:16] :
                          (pio_be==4'b0010) ? pio_datawr[15: 8] :
                                              pio_datawr[ 7: 0] ;

  ////////////////////////////////////////////////////////////////////////////
  DLIN  U_DLIN
  ////////////////////////////////////////////////////////////////////////////
    (
      .clk              (pio_clk),
      .rst              (pio_rst),
      .moden            (1'b1),
      .scan_enable      (1'b0),
      .rxdi             (rxdi),
      .addr             (pio_addr[5:2]), 
      .datai            (pio_datawr_int),
      .cs               (~pio_cs),
      .rd               (~pio_rd),
      .wr               (~pio_wr),
      .datao            (pio_datard_int),
      .irq              (irq),
      .sleep            (sleep),
      .txdo             (txdo)
     ); 
     
     wire [C_S00_AXI_DATA_WIDTH-1 : 0] axi_wdata;
     wire [C_S00_AXI_DATA_WIDTH-1 : 0] axi_rdata;
     
     
  ////////////////////////////////////////////////////////////////////////////
  // AXI-4 Lite Wrapper
  ////////////////////////////////////////////////////////////////////////////
  DAXIWRAP U_DAXIWRAP(
    .axi_aclk      (s00_axi_aclk),    
    .axi_aresetn   (s00_axi_aresetn),
    .axi_awaddr    (s00_axi_awaddr),  
    .axi_awprot    (s00_axi_awprot), 
    .axi_awvalid   (s00_axi_awvalid),
    .axi_awready   (s00_axi_awready),
    .axi_wdata     (s00_axi_wdata),
    .axi_wstrb     (s00_axi_wstrb), 
    .axi_wvalid    (s00_axi_wvalid), 
    .axi_wready    (s00_axi_wready),
    .axi_bresp     (s00_axi_bresp),
    .axi_bvalid    (s00_axi_bvalid),
    .axi_bready    (s00_axi_bready), 
    .axi_araddr    (s00_axi_araddr), 
    .axi_arprot    (s00_axi_arprot), 
    .axi_arvalid   (s00_axi_arvalid), 
    .axi_arready   (s00_axi_arready),
    .axi_rdata     (s00_axi_rdata),
    .axi_rresp     (s00_axi_rresp),  
    .axi_rvalid    (s00_axi_rvalid),  
    .axi_rready    (s00_axi_rready), 
    .pio_readyi    (pio_readyi),
    .pio_clk       (pio_clk), 
    .pio_rst       (pio_rst),
    .pio_addr      (pio_addr),
    .pio_be        (pio_be),
    .pio_wr        (pio_wr),
    .pio_rd        (pio_rd),
    .pio_cs        (pio_cs),
    .pio_datawr    (pio_datawr),
    .pio_datard    (pio_datard)
  );

  defparam U_DAXIWRAP.ADDR_WIDTH= C_S00_AXI_ADDR_WIDTH;
  defparam U_DAXIWRAP.DATA_WIDTH= 32;
  defparam U_DAXIWRAP.RST_ACTIVE_HIGH= 1'b1;     
endmodule
