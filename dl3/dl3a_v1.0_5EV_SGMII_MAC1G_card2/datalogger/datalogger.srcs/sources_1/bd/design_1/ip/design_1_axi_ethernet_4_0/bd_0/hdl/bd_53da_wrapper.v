//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_53da_wrapper.bd
//Design : bd_53da_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_53da_wrapper
   (axi_rxd_arstn,
    axi_rxs_arstn,
    axi_txc_arstn,
    axi_txd_arstn,
    axis_clk,
    gtpowergood,
    gtref_clk,
    interrupt,
    m_axis_rxd_tdata,
    m_axis_rxd_tkeep,
    m_axis_rxd_tlast,
    m_axis_rxd_tready,
    m_axis_rxd_tvalid,
    m_axis_rxs_tdata,
    m_axis_rxs_tkeep,
    m_axis_rxs_tlast,
    m_axis_rxs_tready,
    m_axis_rxs_tvalid,
    mac_irq,
    mdio_mdc,
    mdio_mdio_io,
    mmcm_locked,
    mmcm_reset_out,
    phy_rst_n,
    pma_reset,
    ref_clk,
    rxoutclk,
    rxuserclk,
    rxuserclk2,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_lite_clk,
    s_axi_lite_resetn,
    s_axi_rdata,
    s_axi_rready,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wdata,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axis_txc_tdata,
    s_axis_txc_tkeep,
    s_axis_txc_tlast,
    s_axis_txc_tready,
    s_axis_txc_tvalid,
    s_axis_txd_tdata,
    s_axis_txd_tkeep,
    s_axis_txd_tlast,
    s_axis_txd_tready,
    s_axis_txd_tvalid,
    sgmii_rxn,
    sgmii_rxp,
    sgmii_txn,
    sgmii_txp,
    signal_detect,
    txoutclk,
    userclk,
    userclk2);
  input axi_rxd_arstn;
  input axi_rxs_arstn;
  input axi_txc_arstn;
  input axi_txd_arstn;
  input axis_clk;
  output gtpowergood;
  input gtref_clk;
  output interrupt;
  output [31:0]m_axis_rxd_tdata;
  output [3:0]m_axis_rxd_tkeep;
  output m_axis_rxd_tlast;
  input m_axis_rxd_tready;
  output m_axis_rxd_tvalid;
  output [31:0]m_axis_rxs_tdata;
  output [3:0]m_axis_rxs_tkeep;
  output m_axis_rxs_tlast;
  input m_axis_rxs_tready;
  output m_axis_rxs_tvalid;
  output mac_irq;
  output mdio_mdc;
  inout mdio_mdio_io;
  input mmcm_locked;
  output mmcm_reset_out;
  output [0:0]phy_rst_n;
  input pma_reset;
  input ref_clk;
  output rxoutclk;
  input rxuserclk;
  input rxuserclk2;
  input [17:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [17:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_lite_clk;
  input s_axi_lite_resetn;
  output [31:0]s_axi_rdata;
  input s_axi_rready;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input [31:0]s_axi_wdata;
  output s_axi_wready;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  input [31:0]s_axis_txc_tdata;
  input [3:0]s_axis_txc_tkeep;
  input s_axis_txc_tlast;
  output s_axis_txc_tready;
  input s_axis_txc_tvalid;
  input [31:0]s_axis_txd_tdata;
  input [3:0]s_axis_txd_tkeep;
  input s_axis_txd_tlast;
  output s_axis_txd_tready;
  input s_axis_txd_tvalid;
  input sgmii_rxn;
  input sgmii_rxp;
  output sgmii_txn;
  output sgmii_txp;
  input signal_detect;
  output txoutclk;
  input userclk;
  input userclk2;

  wire axi_rxd_arstn;
  wire axi_rxs_arstn;
  wire axi_txc_arstn;
  wire axi_txd_arstn;
  wire axis_clk;
  wire gtpowergood;
  wire gtref_clk;
  wire interrupt;
  wire [31:0]m_axis_rxd_tdata;
  wire [3:0]m_axis_rxd_tkeep;
  wire m_axis_rxd_tlast;
  wire m_axis_rxd_tready;
  wire m_axis_rxd_tvalid;
  wire [31:0]m_axis_rxs_tdata;
  wire [3:0]m_axis_rxs_tkeep;
  wire m_axis_rxs_tlast;
  wire m_axis_rxs_tready;
  wire m_axis_rxs_tvalid;
  wire mac_irq;
  wire mdio_mdc;
  wire mdio_mdio_i;
  wire mdio_mdio_io;
  wire mdio_mdio_o;
  wire mdio_mdio_t;
  wire mmcm_locked;
  wire mmcm_reset_out;
  wire [0:0]phy_rst_n;
  wire pma_reset;
  wire ref_clk;
  wire rxoutclk;
  wire rxuserclk;
  wire rxuserclk2;
  wire [17:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [17:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire s_axi_lite_clk;
  wire s_axi_lite_resetn;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_txc_tdata;
  wire [3:0]s_axis_txc_tkeep;
  wire s_axis_txc_tlast;
  wire s_axis_txc_tready;
  wire s_axis_txc_tvalid;
  wire [31:0]s_axis_txd_tdata;
  wire [3:0]s_axis_txd_tkeep;
  wire s_axis_txd_tlast;
  wire s_axis_txd_tready;
  wire s_axis_txd_tvalid;
  wire sgmii_rxn;
  wire sgmii_rxp;
  wire sgmii_txn;
  wire sgmii_txp;
  wire signal_detect;
  wire txoutclk;
  wire userclk;
  wire userclk2;

  bd_53da bd_53da_i
       (.axi_rxd_arstn(axi_rxd_arstn),
        .axi_rxs_arstn(axi_rxs_arstn),
        .axi_txc_arstn(axi_txc_arstn),
        .axi_txd_arstn(axi_txd_arstn),
        .axis_clk(axis_clk),
        .gtpowergood(gtpowergood),
        .gtref_clk(gtref_clk),
        .interrupt(interrupt),
        .m_axis_rxd_tdata(m_axis_rxd_tdata),
        .m_axis_rxd_tkeep(m_axis_rxd_tkeep),
        .m_axis_rxd_tlast(m_axis_rxd_tlast),
        .m_axis_rxd_tready(m_axis_rxd_tready),
        .m_axis_rxd_tvalid(m_axis_rxd_tvalid),
        .m_axis_rxs_tdata(m_axis_rxs_tdata),
        .m_axis_rxs_tkeep(m_axis_rxs_tkeep),
        .m_axis_rxs_tlast(m_axis_rxs_tlast),
        .m_axis_rxs_tready(m_axis_rxs_tready),
        .m_axis_rxs_tvalid(m_axis_rxs_tvalid),
        .mac_irq(mac_irq),
        .mdio_mdc(mdio_mdc),
        .mdio_mdio_i(mdio_mdio_i),
        .mdio_mdio_o(mdio_mdio_o),
        .mdio_mdio_t(mdio_mdio_t),
        .mmcm_locked(mmcm_locked),
        .mmcm_reset_out(mmcm_reset_out),
        .phy_rst_n(phy_rst_n),
        .pma_reset(pma_reset),
        .ref_clk(ref_clk),
        .rxoutclk(rxoutclk),
        .rxuserclk(rxuserclk),
        .rxuserclk2(rxuserclk2),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_lite_clk(s_axi_lite_clk),
        .s_axi_lite_resetn(s_axi_lite_resetn),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_txc_tdata(s_axis_txc_tdata),
        .s_axis_txc_tkeep(s_axis_txc_tkeep),
        .s_axis_txc_tlast(s_axis_txc_tlast),
        .s_axis_txc_tready(s_axis_txc_tready),
        .s_axis_txc_tvalid(s_axis_txc_tvalid),
        .s_axis_txd_tdata(s_axis_txd_tdata),
        .s_axis_txd_tkeep(s_axis_txd_tkeep),
        .s_axis_txd_tlast(s_axis_txd_tlast),
        .s_axis_txd_tready(s_axis_txd_tready),
        .s_axis_txd_tvalid(s_axis_txd_tvalid),
        .sgmii_rxn(sgmii_rxn),
        .sgmii_rxp(sgmii_rxp),
        .sgmii_txn(sgmii_txn),
        .sgmii_txp(sgmii_txp),
        .signal_detect(signal_detect),
        .txoutclk(txoutclk),
        .userclk(userclk),
        .userclk2(userclk2));
  IOBUF mdio_mdio_iobuf
       (.I(mdio_mdio_o),
        .IO(mdio_mdio_io),
        .O(mdio_mdio_i),
        .T(mdio_mdio_t));
endmodule
