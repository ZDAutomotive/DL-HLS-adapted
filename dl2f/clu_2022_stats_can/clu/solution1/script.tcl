############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project clu
set_top clu
add_files uart.c
add_files dlin.c
add_files clu.h
add_files clu.c
add_files can.h
add_files can.c
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-2}
create_clock -period 10 -name default
config_export -display_name DF_2L -format ip_catalog -rtl verilog
config_interface -m_axi_addr64=0
source "./clu/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
