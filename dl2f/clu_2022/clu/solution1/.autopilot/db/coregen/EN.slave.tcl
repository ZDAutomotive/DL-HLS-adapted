dict set slaves EN {ports {can_ptr {type i_ap_none width 64} uart_ptr {type i_ap_none width 64} lin_ptr {type i_ap_none width 64} received_can {type o_ap_vld width 32} received_uart {type o_ap_vld width 32} received_lin {type o_ap_vld width 32} can_en {type i_ap_none width 32} uart_en {type i_ap_none width 8} lin_en {type i_ap_none width 32} can_ddr {type i_ap_none width 64} uart_ddr {type i_ap_none width 64} lin_ddr {type i_ap_none width 64} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
