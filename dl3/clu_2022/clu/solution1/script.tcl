############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project clu
set_top clu
add_files can.c
add_files can.h
add_files clu.c
add_files clu.h
add_files dlin.c
add_files uart.c
open_solution "solution1" -flow_target vivado
set_part {xczu5ev-sfvc784-2-i}
create_clock -period 10 -name default
source "./clu/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
