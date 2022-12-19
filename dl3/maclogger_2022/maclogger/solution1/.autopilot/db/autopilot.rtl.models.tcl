set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME mac_logger_entry_proc}
  {SRCNAME rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1 MODELNAME rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1 RTLNAME mac_logger_rx_ringbuffer_header_Pipeline_VITIS_LOOP_28_1
    SUBMODULES {
      {MODELNAME mac_logger_flow_control_loop_pipe_sequential_init RTLNAME mac_logger_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mac_logger_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2 MODELNAME rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2 RTLNAME mac_logger_rx_ringbuffer_header_Pipeline_VITIS_LOOP_32_2}
  {SRCNAME rx_ringbuffer_header MODELNAME rx_ringbuffer_header RTLNAME mac_logger_rx_ringbuffer_header}
  {SRCNAME rx_fifo_Pipeline_VITIS_LOOP_71_1 MODELNAME rx_fifo_Pipeline_VITIS_LOOP_71_1 RTLNAME mac_logger_rx_fifo_Pipeline_VITIS_LOOP_71_1}
  {SRCNAME rx_fifo_Pipeline_VITIS_LOOP_91_2 MODELNAME rx_fifo_Pipeline_VITIS_LOOP_91_2 RTLNAME mac_logger_rx_fifo_Pipeline_VITIS_LOOP_91_2}
  {SRCNAME rx_fifo_Pipeline_rx_macfifo_data MODELNAME rx_fifo_Pipeline_rx_macfifo_data RTLNAME mac_logger_rx_fifo_Pipeline_rx_macfifo_data}
  {SRCNAME rx_fifo_Pipeline_4 MODELNAME rx_fifo_Pipeline_4 RTLNAME mac_logger_rx_fifo_Pipeline_4}
  {SRCNAME rx_fifo MODELNAME rx_fifo RTLNAME mac_logger_rx_fifo
    SUBMODULES {
      {MODELNAME mac_logger_rx_fifo_tmp_buf_RAM_AUTO_1R1W RTLNAME mac_logger_rx_fifo_tmp_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME tx_ddr_Pipeline_VITIS_LOOP_471_1 MODELNAME tx_ddr_Pipeline_VITIS_LOOP_471_1 RTLNAME mac_logger_tx_ddr_Pipeline_VITIS_LOOP_471_1}
  {SRCNAME tx_ddr_Pipeline_tx_2_log_ddr MODELNAME tx_ddr_Pipeline_tx_2_log_ddr RTLNAME mac_logger_tx_ddr_Pipeline_tx_2_log_ddr}
  {SRCNAME tx_ddr_Pipeline_VITIS_LOOP_531_2 MODELNAME tx_ddr_Pipeline_VITIS_LOOP_531_2 RTLNAME mac_logger_tx_ddr_Pipeline_VITIS_LOOP_531_2}
  {SRCNAME tx_ddr_Pipeline_tx_2_tap_ddr MODELNAME tx_ddr_Pipeline_tx_2_tap_ddr RTLNAME mac_logger_tx_ddr_Pipeline_tx_2_tap_ddr}
  {SRCNAME tx_ddr MODELNAME tx_ddr RTLNAME mac_logger_tx_ddr
    SUBMODULES {
      {MODELNAME mac_logger_urem_32ns_32ns_32_36_seq_1 RTLNAME mac_logger_urem_32ns_32ns_32_36_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME mac_logger_mul_32s_32s_32_1_1 RTLNAME mac_logger_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mac_logger_tx_ddr_log_header_RAM_AUTO_1R1W RTLNAME mac_logger_tx_ddr_log_header_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_in_loop_VITIS_LOOP_697_1 MODELNAME dataflow_in_loop_VITIS_LOOP_697_1 RTLNAME mac_logger_dataflow_in_loop_VITIS_LOOP_697_1
    SUBMODULES {
      {MODELNAME mac_logger_dataflow_in_loop_VITIS_LOOP_697_1_log_header_RAM_AUTO_1R1W_memcore RTLNAME mac_logger_dataflow_in_loop_VITIS_LOOP_697_1_log_header_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mac_logger_dataflow_in_loop_VITIS_LOOP_697_1_log_header_RAM_AUTO_1R1W RTLNAME mac_logger_dataflow_in_loop_VITIS_LOOP_697_1_log_header_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mac_logger_dataflow_in_loop_VITIS_LOOP_697_1_data_buf3_RAM_AUTO_1R1W_memcore RTLNAME mac_logger_dataflow_in_loop_VITIS_LOOP_697_1_data_buf3_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mac_logger_dataflow_in_loop_VITIS_LOOP_697_1_data_buf3_RAM_AUTO_1R1W RTLNAME mac_logger_dataflow_in_loop_VITIS_LOOP_697_1_data_buf3_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME logger_vlan_enable_mask_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME multicast_recv_enable_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_filter_enable_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan100_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan100_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan101_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan101_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan102_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan102_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan103_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan103_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan104_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan104_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan105_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan105_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan106_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan106_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan107_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan107_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan108_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan108_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan109_macaddr_lsb_c_U}
      {MODELNAME mac_logger_fifo_w16_d3_S RTLNAME mac_logger_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME unicast_vlan109_macaddr_msb_c_U}
      {MODELNAME mac_logger_fifo_w32_d3_S RTLNAME mac_logger_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME log_all_mask_c_U}
      {MODELNAME mac_logger_fifo_w64_d2_S RTLNAME mac_logger_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ddr_c_channel_U}
      {MODELNAME mac_logger_fifo_w64_d2_S RTLNAME mac_logger_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME driver_c_channel_U}
    }
  }
  {SRCNAME mac_logger MODELNAME mac_logger RTLNAME mac_logger IS_TOP 1
    SUBMODULES {
      {MODELNAME mac_logger_mac_fifo_m_axi RTLNAME mac_logger_mac_fifo_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mac_logger_ps_m_axi RTLNAME mac_logger_ps_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mac_logger_fifo_axi_full_m_axi RTLNAME mac_logger_fifo_axi_full_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mac_logger_axilites_s_axi RTLNAME mac_logger_axilites_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
