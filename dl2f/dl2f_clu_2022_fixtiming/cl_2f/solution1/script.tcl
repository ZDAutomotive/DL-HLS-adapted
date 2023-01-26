############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project cl_2f
set_top clu
add_files clu/uart.c
add_files clu/dlin.c
add_files clu/clu.c
add_files clu/can.h
add_files clu/can.c
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-2}
create_clock -period 10 -name default
config_interface -m_axi_addr64=0
config_export -format ip_catalog -rtl verilog
source "./cl_2f/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
