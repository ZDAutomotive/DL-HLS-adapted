//**************************************************************************//
// Copyright (c) 1999-2019  Digital Core Design sp. z o.o. sp. k. (DCD)     //
//**************************************************************************//
// Please review the terms of the license agreement before using this file. //
// If you are not an authorized user, please destroy this source code file  //
// and   notify   DCD  immediately  that  you  inadvertently  received  an  //
// unauthorized copy.                                                       //
//**************************************************************************//
//////////////////////////////////////////////////////////////////////////////
// Project name         : DLIN                                              //
// Project description  : DLIN - LIN bus controller                         //
//                                                                          //
// File name            : DLIN.V                                            //
// File contents        : Entity DLIN                                       //
//                        Architecture RTL                                  //
// Purpose              : Top level entity of DLIN Core                     //
//                                                                          //
// Destination library  : DLIN_LIB                                          //
//                                                                          //
// Design Engineer      : M.K.                                              //
// Version              : 1.20                                              //
// Last modification    : 2019-02-04                                        //
//////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 1 ns

module DLIN(
  clk, rst, addr, datai, rd, wr, cs, datao,
  moden,
  scan_enable,
  rxdi,
  txdo,
  irq,
  sleep
);

input  clk;
input  rst;
input  [3:0]addr;
input  [7:0]datai;
input  rd;
input  wr;
input  cs; 
output [7:0]datao; 

input  moden;
input  scan_enable;
input  rxdi;
output txdo;
output irq;
output sleep;


endmodule
