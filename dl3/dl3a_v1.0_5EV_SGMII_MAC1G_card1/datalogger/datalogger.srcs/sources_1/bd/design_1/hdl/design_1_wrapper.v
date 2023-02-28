//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Tue Feb 14 15:34:47 2023
//Host        : ZD-IGS-S042 running 64-bit Ubuntu 18.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GPIO_tri_io,
    card1_can_rx_0,
    card1_can_rx_1,
    card1_can_rx_10,
    card1_can_rx_11,
    card1_can_rx_2,
    card1_can_rx_3,
    card1_can_rx_4,
    card1_can_rx_5,
    card1_can_rx_6,
    card1_can_rx_7,
    card1_can_rx_8,
    card1_can_rx_9,
    card1_can_tx_0,
    card1_can_tx_1,
    card1_can_tx_10,
    card1_can_tx_11,
    card1_can_tx_2,
    card1_can_tx_3,
    card1_can_tx_4,
    card1_can_tx_5,
    card1_can_tx_6,
    card1_can_tx_7,
    card1_can_tx_8,
    card1_can_tx_9,
    lin_rx_0,
    lin_rx_1,
    lin_rx_10,
    lin_rx_11,
    lin_rx_2,
    lin_rx_3,
    lin_rx_4,
    lin_rx_5,
    lin_rx_6,
    lin_rx_7,
    lin_rx_8,
    lin_rx_9,
    lin_tx_0,
    lin_tx_1,
    lin_tx_10,
    lin_tx_11,
    lin_tx_2,
    lin_tx_3,
    lin_tx_4,
    lin_tx_5,
    lin_tx_6,
    lin_tx_7,
    lin_tx_8,
    lin_tx_9,
    mdio_ps_enet0_mdc,
    mdio_ps_enet0_mdio_io,
    mdio_ps_enet1_mdc,
    mdio_ps_enet1_mdio_io,
    mdio_ps_enet2_mdc,
    mdio_ps_enet2_mdio_io,
    mdio_sw0_mdc,
    mdio_sw0_mdio_io,
    mdio_sw1_mdc,
    mdio_sw1_mdio_io,
    mdio_sw2_mdc,
    mdio_sw2_mdio_io,
    mgt_clk_sw0_clk_n,
    mgt_clk_sw0_clk_p,
    ps_enet0_rd,
    ps_enet0_rx_ctl,
    ps_enet0_rxc,
    ps_enet0_td,
    ps_enet0_tx_ctl,
    ps_enet0_txc,
    ps_enet1_rd,
    ps_enet1_rx_ctl,
    ps_enet1_rxc,
    ps_enet1_td,
    ps_enet1_tx_ctl,
    ps_enet1_txc,
    ps_enet2_rd,
    ps_enet2_rx_ctl,
    ps_enet2_rxc,
    ps_enet2_td,
    ps_enet2_tx_ctl,
    ps_enet2_txc,
    sgmii_sw0_rxn,
    sgmii_sw0_rxp,
    sgmii_sw0_txn,
    sgmii_sw0_txp,
    sgmii_sw1_rxn,
    sgmii_sw1_rxp,
    sgmii_sw1_txn,
    sgmii_sw1_txp,
    sgmii_sw2_rxn,
    sgmii_sw2_rxp,
    sgmii_sw2_txn,
    sgmii_sw2_txp,
    uart_rx_0,
    uart_rx_1,
    uart_rx_2,
    uart_rx_3,
    uart_rx_4,
    uart_rx_5,
    uart_rx_6,
    uart_rx_7,
    uart_tx_0,
    uart_tx_1,
    uart_tx_2,
    uart_tx_3,
    uart_tx_4,
    uart_tx_5,
    uart_tx_6,
    uart_tx_7);
  inout [3:0]GPIO_tri_io;
  input card1_can_rx_0;
  input card1_can_rx_1;
  input card1_can_rx_10;
  input card1_can_rx_11;
  input card1_can_rx_2;
  input card1_can_rx_3;
  input card1_can_rx_4;
  input card1_can_rx_5;
  input card1_can_rx_6;
  input card1_can_rx_7;
  input card1_can_rx_8;
  input card1_can_rx_9;
  output card1_can_tx_0;
  output card1_can_tx_1;
  output card1_can_tx_10;
  output card1_can_tx_11;
  output card1_can_tx_2;
  output card1_can_tx_3;
  output card1_can_tx_4;
  output card1_can_tx_5;
  output card1_can_tx_6;
  output card1_can_tx_7;
  output card1_can_tx_8;
  output card1_can_tx_9;
  input lin_rx_0;
  input lin_rx_1;
  input lin_rx_10;
  input lin_rx_11;
  input lin_rx_2;
  input lin_rx_3;
  input lin_rx_4;
  input lin_rx_5;
  input lin_rx_6;
  input lin_rx_7;
  input lin_rx_8;
  input lin_rx_9;
  output lin_tx_0;
  output lin_tx_1;
  output lin_tx_10;
  output lin_tx_11;
  output lin_tx_2;
  output lin_tx_3;
  output lin_tx_4;
  output lin_tx_5;
  output lin_tx_6;
  output lin_tx_7;
  output lin_tx_8;
  output lin_tx_9;
  output mdio_ps_enet0_mdc;
  inout mdio_ps_enet0_mdio_io;
  output mdio_ps_enet1_mdc;
  inout mdio_ps_enet1_mdio_io;
  output mdio_ps_enet2_mdc;
  inout mdio_ps_enet2_mdio_io;
  output mdio_sw0_mdc;
  inout mdio_sw0_mdio_io;
  output mdio_sw1_mdc;
  inout mdio_sw1_mdio_io;
  output mdio_sw2_mdc;
  inout mdio_sw2_mdio_io;
  input mgt_clk_sw0_clk_n;
  input mgt_clk_sw0_clk_p;
  input [3:0]ps_enet0_rd;
  input ps_enet0_rx_ctl;
  input ps_enet0_rxc;
  output [3:0]ps_enet0_td;
  output ps_enet0_tx_ctl;
  output ps_enet0_txc;
  input [3:0]ps_enet1_rd;
  input ps_enet1_rx_ctl;
  input ps_enet1_rxc;
  output [3:0]ps_enet1_td;
  output ps_enet1_tx_ctl;
  output ps_enet1_txc;
  input [3:0]ps_enet2_rd;
  input ps_enet2_rx_ctl;
  input ps_enet2_rxc;
  output [3:0]ps_enet2_td;
  output ps_enet2_tx_ctl;
  output ps_enet2_txc;
  input sgmii_sw0_rxn;
  input sgmii_sw0_rxp;
  output sgmii_sw0_txn;
  output sgmii_sw0_txp;
  input sgmii_sw1_rxn;
  input sgmii_sw1_rxp;
  output sgmii_sw1_txn;
  output sgmii_sw1_txp;
  input sgmii_sw2_rxn;
  input sgmii_sw2_rxp;
  output sgmii_sw2_txn;
  output sgmii_sw2_txp;
  input uart_rx_0;
  input uart_rx_1;
  input uart_rx_2;
  input uart_rx_3;
  input uart_rx_4;
  input uart_rx_5;
  input uart_rx_6;
  input uart_rx_7;
  output uart_tx_0;
  output uart_tx_1;
  output uart_tx_2;
  output uart_tx_3;
  output uart_tx_4;
  output uart_tx_5;
  output uart_tx_6;
  output uart_tx_7;

  wire [0:0]GPIO_tri_i_0;
  wire [1:1]GPIO_tri_i_1;
  wire [2:2]GPIO_tri_i_2;
  wire [3:3]GPIO_tri_i_3;
  wire [0:0]GPIO_tri_io_0;
  wire [1:1]GPIO_tri_io_1;
  wire [2:2]GPIO_tri_io_2;
  wire [3:3]GPIO_tri_io_3;
  wire [0:0]GPIO_tri_o_0;
  wire [1:1]GPIO_tri_o_1;
  wire [2:2]GPIO_tri_o_2;
  wire [3:3]GPIO_tri_o_3;
  wire [0:0]GPIO_tri_t_0;
  wire [1:1]GPIO_tri_t_1;
  wire [2:2]GPIO_tri_t_2;
  wire [3:3]GPIO_tri_t_3;
  wire card1_can_rx_0;
  wire card1_can_rx_1;
  wire card1_can_rx_10;
  wire card1_can_rx_11;
  wire card1_can_rx_2;
  wire card1_can_rx_3;
  wire card1_can_rx_4;
  wire card1_can_rx_5;
  wire card1_can_rx_6;
  wire card1_can_rx_7;
  wire card1_can_rx_8;
  wire card1_can_rx_9;
  wire card1_can_tx_0;
  wire card1_can_tx_1;
  wire card1_can_tx_10;
  wire card1_can_tx_11;
  wire card1_can_tx_2;
  wire card1_can_tx_3;
  wire card1_can_tx_4;
  wire card1_can_tx_5;
  wire card1_can_tx_6;
  wire card1_can_tx_7;
  wire card1_can_tx_8;
  wire card1_can_tx_9;
  wire lin_rx_0;
  wire lin_rx_1;
  wire lin_rx_10;
  wire lin_rx_11;
  wire lin_rx_2;
  wire lin_rx_3;
  wire lin_rx_4;
  wire lin_rx_5;
  wire lin_rx_6;
  wire lin_rx_7;
  wire lin_rx_8;
  wire lin_rx_9;
  wire lin_tx_0;
  wire lin_tx_1;
  wire lin_tx_10;
  wire lin_tx_11;
  wire lin_tx_2;
  wire lin_tx_3;
  wire lin_tx_4;
  wire lin_tx_5;
  wire lin_tx_6;
  wire lin_tx_7;
  wire lin_tx_8;
  wire lin_tx_9;
  wire mdio_ps_enet0_mdc;
  wire mdio_ps_enet0_mdio_i;
  wire mdio_ps_enet0_mdio_io;
  wire mdio_ps_enet0_mdio_o;
  wire mdio_ps_enet0_mdio_t;
  wire mdio_ps_enet1_mdc;
  wire mdio_ps_enet1_mdio_i;
  wire mdio_ps_enet1_mdio_io;
  wire mdio_ps_enet1_mdio_o;
  wire mdio_ps_enet1_mdio_t;
  wire mdio_ps_enet2_mdc;
  wire mdio_ps_enet2_mdio_i;
  wire mdio_ps_enet2_mdio_io;
  wire mdio_ps_enet2_mdio_o;
  wire mdio_ps_enet2_mdio_t;
  wire mdio_sw0_mdc;
  wire mdio_sw0_mdio_i;
  wire mdio_sw0_mdio_io;
  wire mdio_sw0_mdio_o;
  wire mdio_sw0_mdio_t;
  wire mdio_sw1_mdc;
  wire mdio_sw1_mdio_i;
  wire mdio_sw1_mdio_io;
  wire mdio_sw1_mdio_o;
  wire mdio_sw1_mdio_t;
  wire mdio_sw2_mdc;
  wire mdio_sw2_mdio_i;
  wire mdio_sw2_mdio_io;
  wire mdio_sw2_mdio_o;
  wire mdio_sw2_mdio_t;
  wire mgt_clk_sw0_clk_n;
  wire mgt_clk_sw0_clk_p;
  wire [3:0]ps_enet0_rd;
  wire ps_enet0_rx_ctl;
  wire ps_enet0_rxc;
  wire [3:0]ps_enet0_td;
  wire ps_enet0_tx_ctl;
  wire ps_enet0_txc;
  wire [3:0]ps_enet1_rd;
  wire ps_enet1_rx_ctl;
  wire ps_enet1_rxc;
  wire [3:0]ps_enet1_td;
  wire ps_enet1_tx_ctl;
  wire ps_enet1_txc;
  wire [3:0]ps_enet2_rd;
  wire ps_enet2_rx_ctl;
  wire ps_enet2_rxc;
  wire [3:0]ps_enet2_td;
  wire ps_enet2_tx_ctl;
  wire ps_enet2_txc;
  wire sgmii_sw0_rxn;
  wire sgmii_sw0_rxp;
  wire sgmii_sw0_txn;
  wire sgmii_sw0_txp;
  wire sgmii_sw1_rxn;
  wire sgmii_sw1_rxp;
  wire sgmii_sw1_txn;
  wire sgmii_sw1_txp;
  wire sgmii_sw2_rxn;
  wire sgmii_sw2_rxp;
  wire sgmii_sw2_txn;
  wire sgmii_sw2_txp;
  wire uart_rx_0;
  wire uart_rx_1;
  wire uart_rx_2;
  wire uart_rx_3;
  wire uart_rx_4;
  wire uart_rx_5;
  wire uart_rx_6;
  wire uart_rx_7;
  wire uart_tx_0;
  wire uart_tx_1;
  wire uart_tx_2;
  wire uart_tx_3;
  wire uart_tx_4;
  wire uart_tx_5;
  wire uart_tx_6;
  wire uart_tx_7;

  IOBUF GPIO_tri_iobuf_0
       (.I(GPIO_tri_o_0),
        .IO(GPIO_tri_io[0]),
        .O(GPIO_tri_i_0),
        .T(GPIO_tri_t_0));
  IOBUF GPIO_tri_iobuf_1
       (.I(GPIO_tri_o_1),
        .IO(GPIO_tri_io[1]),
        .O(GPIO_tri_i_1),
        .T(GPIO_tri_t_1));
  IOBUF GPIO_tri_iobuf_2
       (.I(GPIO_tri_o_2),
        .IO(GPIO_tri_io[2]),
        .O(GPIO_tri_i_2),
        .T(GPIO_tri_t_2));
  IOBUF GPIO_tri_iobuf_3
       (.I(GPIO_tri_o_3),
        .IO(GPIO_tri_io[3]),
        .O(GPIO_tri_i_3),
        .T(GPIO_tri_t_3));
  design_1 design_1_i
       (.GPIO_tri_i({GPIO_tri_i_3,GPIO_tri_i_2,GPIO_tri_i_1,GPIO_tri_i_0}),
        .GPIO_tri_o({GPIO_tri_o_3,GPIO_tri_o_2,GPIO_tri_o_1,GPIO_tri_o_0}),
        .GPIO_tri_t({GPIO_tri_t_3,GPIO_tri_t_2,GPIO_tri_t_1,GPIO_tri_t_0}),
        .card1_can_rx_0(card1_can_rx_0),
        .card1_can_rx_1(card1_can_rx_1),
        .card1_can_rx_10(card1_can_rx_10),
        .card1_can_rx_11(card1_can_rx_11),
        .card1_can_rx_2(card1_can_rx_2),
        .card1_can_rx_3(card1_can_rx_3),
        .card1_can_rx_4(card1_can_rx_4),
        .card1_can_rx_5(card1_can_rx_5),
        .card1_can_rx_6(card1_can_rx_6),
        .card1_can_rx_7(card1_can_rx_7),
        .card1_can_rx_8(card1_can_rx_8),
        .card1_can_rx_9(card1_can_rx_9),
        .card1_can_tx_0(card1_can_tx_0),
        .card1_can_tx_1(card1_can_tx_1),
        .card1_can_tx_10(card1_can_tx_10),
        .card1_can_tx_11(card1_can_tx_11),
        .card1_can_tx_2(card1_can_tx_2),
        .card1_can_tx_3(card1_can_tx_3),
        .card1_can_tx_4(card1_can_tx_4),
        .card1_can_tx_5(card1_can_tx_5),
        .card1_can_tx_6(card1_can_tx_6),
        .card1_can_tx_7(card1_can_tx_7),
        .card1_can_tx_8(card1_can_tx_8),
        .card1_can_tx_9(card1_can_tx_9),
        .lin_rx_0(lin_rx_0),
        .lin_rx_1(lin_rx_1),
        .lin_rx_10(lin_rx_10),
        .lin_rx_11(lin_rx_11),
        .lin_rx_2(lin_rx_2),
        .lin_rx_3(lin_rx_3),
        .lin_rx_4(lin_rx_4),
        .lin_rx_5(lin_rx_5),
        .lin_rx_6(lin_rx_6),
        .lin_rx_7(lin_rx_7),
        .lin_rx_8(lin_rx_8),
        .lin_rx_9(lin_rx_9),
        .lin_tx_0(lin_tx_0),
        .lin_tx_1(lin_tx_1),
        .lin_tx_10(lin_tx_10),
        .lin_tx_11(lin_tx_11),
        .lin_tx_2(lin_tx_2),
        .lin_tx_3(lin_tx_3),
        .lin_tx_4(lin_tx_4),
        .lin_tx_5(lin_tx_5),
        .lin_tx_6(lin_tx_6),
        .lin_tx_7(lin_tx_7),
        .lin_tx_8(lin_tx_8),
        .lin_tx_9(lin_tx_9),
        .mdio_ps_enet0_mdc(mdio_ps_enet0_mdc),
        .mdio_ps_enet0_mdio_i(mdio_ps_enet0_mdio_i),
        .mdio_ps_enet0_mdio_o(mdio_ps_enet0_mdio_o),
        .mdio_ps_enet0_mdio_t(mdio_ps_enet0_mdio_t),
        .mdio_ps_enet1_mdc(mdio_ps_enet1_mdc),
        .mdio_ps_enet1_mdio_i(mdio_ps_enet1_mdio_i),
        .mdio_ps_enet1_mdio_o(mdio_ps_enet1_mdio_o),
        .mdio_ps_enet1_mdio_t(mdio_ps_enet1_mdio_t),
        .mdio_ps_enet2_mdc(mdio_ps_enet2_mdc),
        .mdio_ps_enet2_mdio_i(mdio_ps_enet2_mdio_i),
        .mdio_ps_enet2_mdio_o(mdio_ps_enet2_mdio_o),
        .mdio_ps_enet2_mdio_t(mdio_ps_enet2_mdio_t),
        .mdio_sw0_mdc(mdio_sw0_mdc),
        .mdio_sw0_mdio_i(mdio_sw0_mdio_i),
        .mdio_sw0_mdio_o(mdio_sw0_mdio_o),
        .mdio_sw0_mdio_t(mdio_sw0_mdio_t),
        .mdio_sw1_mdc(mdio_sw1_mdc),
        .mdio_sw1_mdio_i(mdio_sw1_mdio_i),
        .mdio_sw1_mdio_o(mdio_sw1_mdio_o),
        .mdio_sw1_mdio_t(mdio_sw1_mdio_t),
        .mdio_sw2_mdc(mdio_sw2_mdc),
        .mdio_sw2_mdio_i(mdio_sw2_mdio_i),
        .mdio_sw2_mdio_o(mdio_sw2_mdio_o),
        .mdio_sw2_mdio_t(mdio_sw2_mdio_t),
        .mgt_clk_sw0_clk_n(mgt_clk_sw0_clk_n),
        .mgt_clk_sw0_clk_p(mgt_clk_sw0_clk_p),
        .ps_enet0_rd(ps_enet0_rd),
        .ps_enet0_rx_ctl(ps_enet0_rx_ctl),
        .ps_enet0_rxc(ps_enet0_rxc),
        .ps_enet0_td(ps_enet0_td),
        .ps_enet0_tx_ctl(ps_enet0_tx_ctl),
        .ps_enet0_txc(ps_enet0_txc),
        .ps_enet1_rd(ps_enet1_rd),
        .ps_enet1_rx_ctl(ps_enet1_rx_ctl),
        .ps_enet1_rxc(ps_enet1_rxc),
        .ps_enet1_td(ps_enet1_td),
        .ps_enet1_tx_ctl(ps_enet1_tx_ctl),
        .ps_enet1_txc(ps_enet1_txc),
        .ps_enet2_rd(ps_enet2_rd),
        .ps_enet2_rx_ctl(ps_enet2_rx_ctl),
        .ps_enet2_rxc(ps_enet2_rxc),
        .ps_enet2_td(ps_enet2_td),
        .ps_enet2_tx_ctl(ps_enet2_tx_ctl),
        .ps_enet2_txc(ps_enet2_txc),
        .sgmii_sw0_rxn(sgmii_sw0_rxn),
        .sgmii_sw0_rxp(sgmii_sw0_rxp),
        .sgmii_sw0_txn(sgmii_sw0_txn),
        .sgmii_sw0_txp(sgmii_sw0_txp),
        .sgmii_sw1_rxn(sgmii_sw1_rxn),
        .sgmii_sw1_rxp(sgmii_sw1_rxp),
        .sgmii_sw1_txn(sgmii_sw1_txn),
        .sgmii_sw1_txp(sgmii_sw1_txp),
        .sgmii_sw2_rxn(sgmii_sw2_rxn),
        .sgmii_sw2_rxp(sgmii_sw2_rxp),
        .sgmii_sw2_txn(sgmii_sw2_txn),
        .sgmii_sw2_txp(sgmii_sw2_txp),
        .uart_rx_0(uart_rx_0),
        .uart_rx_1(uart_rx_1),
        .uart_rx_2(uart_rx_2),
        .uart_rx_3(uart_rx_3),
        .uart_rx_4(uart_rx_4),
        .uart_rx_5(uart_rx_5),
        .uart_rx_6(uart_rx_6),
        .uart_rx_7(uart_rx_7),
        .uart_tx_0(uart_tx_0),
        .uart_tx_1(uart_tx_1),
        .uart_tx_2(uart_tx_2),
        .uart_tx_3(uart_tx_3),
        .uart_tx_4(uart_tx_4),
        .uart_tx_5(uart_tx_5),
        .uart_tx_6(uart_tx_6),
        .uart_tx_7(uart_tx_7));
  IOBUF mdio_ps_enet0_mdio_iobuf
       (.I(mdio_ps_enet0_mdio_o),
        .IO(mdio_ps_enet0_mdio_io),
        .O(mdio_ps_enet0_mdio_i),
        .T(mdio_ps_enet0_mdio_t));
  IOBUF mdio_ps_enet1_mdio_iobuf
       (.I(mdio_ps_enet1_mdio_o),
        .IO(mdio_ps_enet1_mdio_io),
        .O(mdio_ps_enet1_mdio_i),
        .T(mdio_ps_enet1_mdio_t));
  IOBUF mdio_ps_enet2_mdio_iobuf
       (.I(mdio_ps_enet2_mdio_o),
        .IO(mdio_ps_enet2_mdio_io),
        .O(mdio_ps_enet2_mdio_i),
        .T(mdio_ps_enet2_mdio_t));
  IOBUF mdio_sw0_mdio_iobuf
       (.I(mdio_sw0_mdio_o),
        .IO(mdio_sw0_mdio_io),
        .O(mdio_sw0_mdio_i),
        .T(mdio_sw0_mdio_t));
  IOBUF mdio_sw1_mdio_iobuf
       (.I(mdio_sw1_mdio_o),
        .IO(mdio_sw1_mdio_io),
        .O(mdio_sw1_mdio_i),
        .T(mdio_sw1_mdio_t));
  IOBUF mdio_sw2_mdio_iobuf
       (.I(mdio_sw2_mdio_o),
        .IO(mdio_sw2_mdio_io),
        .O(mdio_sw2_mdio_i),
        .T(mdio_sw2_mdio_t));
endmodule
