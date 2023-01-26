set SynModuleInfo {
  {SRCNAME read_lin_reg.1 MODELNAME read_lin_reg_1 RTLNAME clu_read_lin_reg_1}
  {SRCNAME single_lin_process.1_Pipeline_VITIS_LOOP_213_1 MODELNAME single_lin_process_1_Pipeline_VITIS_LOOP_213_1 RTLNAME clu_single_lin_process_1_Pipeline_VITIS_LOOP_213_1
    SUBMODULES {
      {MODELNAME clu_flow_control_loop_pipe_sequential_init RTLNAME clu_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME clu_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME write_lin_ddr.1 MODELNAME write_lin_ddr_1 RTLNAME clu_write_lin_ddr_1
    SUBMODULES {
      {MODELNAME clu_urem_32ns_32ns_32_36_seq_1 RTLNAME clu_urem_32ns_32ns_32_36_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME clu_mux_42_8_1_1 RTLNAME clu_mux_42_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME clu_write_lin_ddr_1_ringbuffer_header_bytes_RAM_AUTO_1R1W RTLNAME clu_write_lin_ddr_1_ringbuffer_header_bytes_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME single_lin_process.1 MODELNAME single_lin_process_1 RTLNAME clu_single_lin_process_1
    SUBMODULES {
      {MODELNAME clu_single_lin_process_1_PLIN_Ctrl_run_state_RAM_AUTO_1R1W RTLNAME clu_single_lin_process_1_PLIN_Ctrl_run_state_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME clu_single_lin_process_1_lin_frame_RAM_AUTO_1R1W RTLNAME clu_single_lin_process_1_lin_frame_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME recvFrame_logic.1_Pipeline_1 MODELNAME recvFrame_logic_1_Pipeline_1 RTLNAME clu_recvFrame_logic_1_Pipeline_1}
  {SRCNAME recvFrame_logic.1_Pipeline_VITIS_LOOP_238_2 MODELNAME recvFrame_logic_1_Pipeline_VITIS_LOOP_238_2 RTLNAME clu_recvFrame_logic_1_Pipeline_VITIS_LOOP_238_2}
  {SRCNAME recvFrame_logic.1_Pipeline_VITIS_LOOP_223_1 MODELNAME recvFrame_logic_1_Pipeline_VITIS_LOOP_223_1 RTLNAME clu_recvFrame_logic_1_Pipeline_VITIS_LOOP_223_1}
  {SRCNAME write_ddr.1_Pipeline_1 MODELNAME write_ddr_1_Pipeline_1 RTLNAME clu_write_ddr_1_Pipeline_1}
  {SRCNAME write_ddr.1_Pipeline_2 MODELNAME write_ddr_1_Pipeline_2 RTLNAME clu_write_ddr_1_Pipeline_2}
  {SRCNAME write_ddr.1 MODELNAME write_ddr_1 RTLNAME clu_write_ddr_1
    SUBMODULES {
      {MODELNAME clu_mul_32s_8ns_32_1_1 RTLNAME clu_mul_32s_8ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME recvFrame_logic.1 MODELNAME recvFrame_logic_1 RTLNAME clu_recvFrame_logic_1
    SUBMODULES {
      {MODELNAME clu_recvFrame_logic_1_can_frame_RAM_AUTO_1R1W RTLNAME clu_recvFrame_logic_1_can_frame_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME clu MODELNAME clu RTLNAME clu IS_TOP 1
    SUBMODULES {
      {MODELNAME clu_can_addr_m_axi RTLNAME clu_can_addr_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME clu_lin_addr_m_axi RTLNAME clu_lin_addr_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME clu_ps_ddr_m_axi RTLNAME clu_ps_ddr_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME clu_EN_s_axi RTLNAME clu_EN_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
