//**************************************************************************//
// Copyright (c) 1999-2016  Digital Core Design sp. z o.o. sp. k. (DCD)     //
//**************************************************************************//
// Please review the terms of the license agreement before using this file. //
// If you are not an authorized user), please destroy this source code file //
// and notify DCD immediately that you inadvertently received an            //
// unauthorized copy.                                                       //
//**************************************************************************//

//////////////////////////////////////////////////////////////////////////////
// Project name         : DAXIWRAP
// Project description  : AXI BUS Wrapper
//
// File name            : DAXIWRAP.V
//
// Design Engineer      : T.Sz.
// Version              : 1.00
// Last modification    : 2016-08-04
//////////////////////////////////////////////////////////////////////////////

`timescale 1 ns / 1 ns // timescale for following modules

module DAXIWRAP (
//////////////////////////////////////////////////////////////////////////////
//  AXI Clock and RESET
//////////////////////////////////////////////////////////////////////////////
  axi_aclk,
  axi_aresetn,

//////////////////////////////////////////////////////////////////////////////
//  AXI Write Address Channel
//////////////////////////////////////////////////////////////////////////////
  axi_awaddr,
  axi_awprot,
  axi_awvalid,
  axi_awready,

//////////////////////////////////////////////////////////////////////////////
//  AXI Write Data Channel
//////////////////////////////////////////////////////////////////////////////
  axi_wdata,
  axi_wstrb,
  axi_wvalid,
  axi_wready,
    
//////////////////////////////////////////////////////////////////////////////
//  AXI Write Response Channel
//////////////////////////////////////////////////////////////////////////////
  axi_bresp,
  axi_bvalid,
  axi_bready,
    
//////////////////////////////////////////////////////////////////////////////
//  AXI Read Address Channel
//////////////////////////////////////////////////////////////////////////////
  axi_araddr,
  axi_arprot,
  axi_arvalid,
  axi_arready,

//////////////////////////////////////////////////////////////////////////////
//  AXI Read Data Channel
//////////////////////////////////////////////////////////////////////////////
  axi_rdata,
  axi_rresp,
  axi_rvalid,
  axi_rready,
    
//////////////////////////////////////////////////////////////////////////////
//  Single SYSMUX-P BUS 
//////////////////////////////////////////////////////////////////////////////
  pio_readyi,
  pio_datard,
  pio_clk,
  pio_rst,
  pio_addr,
  pio_be,
  pio_wr,
  pio_rd,
  pio_cs,
  pio_datawr
);
//////////////////////////////////////////////////////////////////////////////
//  Parameters
//////////////////////////////////////////////////////////////////////////////
  parameter WRITE_FIRST =    1'b1;
  parameter ADDR_WIDTH=         8;
  parameter DATA_WIDTH=        32;
  parameter RST_ACTIVE_HIGH= 1'b1;

//////////////////////////////////////////////////////////////////////////////
//  PINS Direction Definiton
//////////////////////////////////////////////////////////////////////////////
/* AXI Bus Interface */
  input                   axi_aclk;
  input                   axi_aresetn;
  input  [ADDR_WIDTH-1:0] axi_awaddr;
  input  [2 : 0]          axi_awprot;
  input                   axi_awvalid;
  output                  axi_awready;
  input  [31 : 0]         axi_wdata;
  input  [3: 0]           axi_wstrb;
  input                   axi_wvalid;
  output                  axi_wready;
  output [1 : 0]          axi_bresp;
  output                  axi_bvalid;
  input                   axi_bready;
  input  [ADDR_WIDTH-1:0] axi_araddr;
  input  [2 : 0]          axi_arprot;
  input                   axi_arvalid;
  output                  axi_arready;
  output [31 : 0]         axi_rdata;
  output [1 : 0]          axi_rresp;
  output                  axi_rvalid;
  input                   axi_rready;
    
/* SYSMUX Peripheral protocol */
  input                      pio_readyi;
  input  [DATA_WIDTH-1:0]    pio_datard;
  output                     pio_clk;
  output                     pio_rst;
  output [ADDR_WIDTH-1:0]    pio_addr;
  output [3:0]               pio_be;
  output                     pio_wr;
  output                     pio_rd;
  output                     pio_cs;
  output [DATA_WIDTH-1:0]    pio_datawr;
  
//////////////////////////////////////////////////////////////////////////////
// Signals
//////////////////////////////////////////////////////////////////////////////
/* AXI Interface related */
  reg [ADDR_WIDTH-1:0] axi_araddr_reg;
  reg [ADDR_WIDTH-1:0] axi_awaddr_reg;
  reg                  axi_awvalid_reg;
  reg                  axi_arvalid_reg;
             
  reg [DATA_WIDTH-1:0] axi_rdata_reg;
  reg                  axi_rdata_req_reg;
  reg                  axi_wdata_req_reg;
  wire                 axi_awack;
  wire                 axi_arack;
  
  reg                  axi_bvalid_reg;
             
  reg                  axi_wready_reg;
  reg                  axi_rvalid_reg;
  wire                 axi_aconflict;  /*< Address channel conflict */
  wire                 axi_areset;
  
/* Peripheral Interface related */
  wire                 pio_rd_s;
  wire                 pio_wr_s;
  
//////////////////////////////////////////////////////////////////////////////
//  Architecture
//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
// AXI Interface implementation 
//////////////////////////////////////////////////////////////////////////////
  always @(posedge axi_areset or posedge axi_aclk)
  if (axi_areset) begin
      axi_awvalid_reg<=   1'b0;
      axi_arvalid_reg<=   1'b0;
      axi_awaddr_reg<=    {ADDR_WIDTH{1'b0}};
      axi_araddr_reg<=    {ADDR_WIDTH{1'b0}};
      axi_wdata_req_reg<= 1'b0;
      axi_rdata_req_reg<= 1'b0;
      axi_rdata_reg<=     {DATA_WIDTH{1'b0}};
      axi_rvalid_reg<=    1'b0;
      axi_bvalid_reg<=    1'b0;
  end else begin
    if (axi_arvalid_reg)
      axi_arvalid_reg<= 1'b0;
    else if (axi_arack) begin
      axi_araddr_reg<=    axi_araddr;
      axi_arvalid_reg<=   1'b1;
      axi_rdata_req_reg<= 1'b1;
    end      
    
    if (axi_rvalid_reg && axi_rready)
      axi_rvalid_reg<= 1'b0;
    else if (pio_rd_s && pio_readyi) begin
      axi_rdata_reg<= pio_datard;
      axi_rvalid_reg<= 1'b1;
      axi_rdata_req_reg<= 1'b0;
    end
    
    if (axi_wvalid && axi_wdata_req_reg && pio_readyi) begin
      axi_wdata_req_reg<= 1'b0;
      axi_awvalid_reg<=   1'b0;
    end else if (axi_awack) begin
      axi_awaddr_reg<=    axi_awaddr;
      axi_wdata_req_reg<= 1'b1;
      axi_awvalid_reg<=   1'b1;
    end
    
    if (axi_bvalid_reg && axi_bready)
      axi_bvalid_reg<= 1'b0;
    else if (axi_awvalid_reg && axi_wready)
      axi_bvalid_reg<= 1'b1;
  end

  assign axi_aconflict= /*< Write access first */
      (axi_arvalid && axi_awvalid && 
       !axi_awvalid_reg && !axi_arvalid_reg) ? 1'b1 : 1'b0;
       
  assign axi_arack= 
      ((axi_arvalid && !axi_awvalid_reg) &&
      (!WRITE_FIRST || (WRITE_FIRST && !axi_aconflict))) ? 1'b1 : 1'b0; 
       
  assign axi_awack= 
      (axi_awvalid && !axi_arvalid_reg && 
      (WRITE_FIRST || (!WRITE_FIRST && !axi_aconflict))) ? 1'b1 : 1'b0; 

//////////////////////////////////////////////////////////////////////////////
// Data channels implementation
//////////////////////////////////////////////////////////////////////////////
  assign axi_areset= ~axi_aresetn;
  
  assign axi_awready= axi_awack;
  assign axi_arready= axi_arack;
  assign axi_wready= pio_readyi & axi_wdata_req_reg & ~axi_rdata_req_reg;
  assign axi_bvalid= axi_bvalid_reg;
  assign axi_rvalid=  axi_rvalid_reg & ~axi_wdata_req_reg;
  assign axi_rdata=  
    (pio_rd_s) ? pio_datard : axi_rdata_reg;

//////////////////////////////////////////////////////////////////////////////
// Peripheral interface synchronisation
//////////////////////////////////////////////////////////////////////////////
  assign pio_clk=    axi_aclk;
  
  assign pio_addr=   (pio_wr)                 ? axi_awaddr_reg : 
                     (pio_rd_s && axi_arack)  ? axi_araddr:
                                                axi_araddr_reg;
                     
  assign pio_datawr= axi_wdata;
  assign pio_be=     axi_wstrb;
  
  assign pio_wr=     pio_wr_s;
  assign pio_wr_s=   
    (axi_wdata_req_reg && !axi_rdata_req_reg && axi_wvalid) ? 1'b1 : 1'b0;
  
  assign pio_rd= pio_rd_s;
  assign pio_rd_s= 
    (((axi_rdata_req_reg && !axi_rvalid_reg ) || axi_arack) &&
      !axi_wdata_req_reg) ? 1'b1 : 1'b0;
  
  assign pio_cs= pio_wr | pio_rd_s;
  assign pio_rst=
    (RST_ACTIVE_HIGH) ? axi_areset : axi_aresetn;

//////////////////////////////////////////////////////////////////////////////
// Responses
//////////////////////////////////////////////////////////////////////////////
  assign axi_rresp= 2'd0;
  assign axi_bresp= 2'd0;
endmodule