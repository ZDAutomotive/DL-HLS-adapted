############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project maclogger
set_top mac_logger
add_files mac_logger.cpp
add_files mac_logger.h
add_files mac_logger_test.cpp
add_files recv_mac_msg.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu5ev-sfvc784-2-i}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./maclogger/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
