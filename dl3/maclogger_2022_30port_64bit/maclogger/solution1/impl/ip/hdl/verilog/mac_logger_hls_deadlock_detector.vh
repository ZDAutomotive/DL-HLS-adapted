
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [2:0] proc_0_data_FIFO_blk;
    wire [2:0] proc_0_data_PIPO_blk;
    wire [2:0] proc_0_start_FIFO_blk;
    wire [2:0] proc_0_TLF_FIFO_blk;
    wire [2:0] proc_0_input_sync_blk;
    wire [2:0] proc_0_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_0;
    reg [2:0] proc_dep_vld_vec_0_reg;
    wire [2:0] in_chan_dep_vld_vec_0;
    wire [11:0] in_chan_dep_data_vec_0;
    wire [2:0] token_in_vec_0;
    wire [2:0] out_chan_dep_vld_vec_0;
    wire [3:0] out_chan_dep_data_0;
    wire [2:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [3:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [3:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_3_0;
    wire [3:0] dep_chan_data_3_0;
    wire token_3_0;
    wire [2:0] proc_1_data_FIFO_blk;
    wire [2:0] proc_1_data_PIPO_blk;
    wire [2:0] proc_1_start_FIFO_blk;
    wire [2:0] proc_1_TLF_FIFO_blk;
    wire [2:0] proc_1_input_sync_blk;
    wire [2:0] proc_1_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_1;
    reg [2:0] proc_dep_vld_vec_1_reg;
    wire [2:0] in_chan_dep_vld_vec_1;
    wire [11:0] in_chan_dep_data_vec_1;
    wire [2:0] token_in_vec_1;
    wire [2:0] out_chan_dep_vld_vec_1;
    wire [3:0] out_chan_dep_data_1;
    wire [2:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [3:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [3:0] dep_chan_data_2_1;
    wire token_2_1;
    wire dep_chan_vld_3_1;
    wire [3:0] dep_chan_data_3_1;
    wire token_3_1;
    wire [2:0] proc_2_data_FIFO_blk;
    wire [2:0] proc_2_data_PIPO_blk;
    wire [2:0] proc_2_start_FIFO_blk;
    wire [2:0] proc_2_TLF_FIFO_blk;
    wire [2:0] proc_2_input_sync_blk;
    wire [2:0] proc_2_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_2;
    reg [2:0] proc_dep_vld_vec_2_reg;
    wire [2:0] in_chan_dep_vld_vec_2;
    wire [11:0] in_chan_dep_data_vec_2;
    wire [2:0] token_in_vec_2;
    wire [2:0] out_chan_dep_vld_vec_2;
    wire [3:0] out_chan_dep_data_2;
    wire [2:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [3:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_1_2;
    wire [3:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [3:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [2:0] proc_3_data_FIFO_blk;
    wire [2:0] proc_3_data_PIPO_blk;
    wire [2:0] proc_3_start_FIFO_blk;
    wire [2:0] proc_3_TLF_FIFO_blk;
    wire [2:0] proc_3_input_sync_blk;
    wire [2:0] proc_3_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_3;
    reg [2:0] proc_dep_vld_vec_3_reg;
    wire [2:0] in_chan_dep_vld_vec_3;
    wire [11:0] in_chan_dep_data_vec_3;
    wire [2:0] token_in_vec_3;
    wire [2:0] out_chan_dep_vld_vec_3;
    wire [3:0] out_chan_dep_data_3;
    wire [2:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_0_3;
    wire [3:0] dep_chan_data_0_3;
    wire token_0_3;
    wire dep_chan_vld_1_3;
    wire [3:0] dep_chan_data_1_3;
    wire token_1_3;
    wire dep_chan_vld_2_3;
    wire [3:0] dep_chan_data_2_3;
    wire token_2_3;
    wire [3:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [3:0] origin;

    reg ap_done_reg_0;// for module rx_ringbuffer_header_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= rx_ringbuffer_header_U0.ap_done & ~rx_ringbuffer_header_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module rx_fifo_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= rx_fifo_U0.ap_done & ~rx_fifo_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module tx_ddr_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= tx_ddr_U0.ap_done & ~tx_ddr_U0.ap_continue;
        end
    end

    // Process: entry_proc_U0
    mac_logger_hls_deadlock_detect_unit #(4, 0, 3, 3) mac_logger_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~entry_proc_U0.logger_vlan_enable_mask_c_blk_n) | (~entry_proc_U0.multicast_recv_enable_c_blk_n) | (~entry_proc_U0.unicast_filter_enable_c_blk_n) | (~entry_proc_U0.unicast_vlan100_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan100_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan101_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan101_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan102_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan102_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan103_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan103_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan104_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan104_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan105_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan105_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan106_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan106_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan107_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan107_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan108_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan108_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan109_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan109_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan110_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan110_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan111_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan111_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan112_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan112_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan113_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan113_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan114_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan114_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan115_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan115_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan116_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan116_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan117_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan117_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan118_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan118_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan119_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan119_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan120_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan120_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan121_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan121_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan122_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan122_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan123_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan123_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan124_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan124_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan125_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan125_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan126_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan126_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan127_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan127_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan128_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan128_macaddr_msb_c_blk_n) | (~entry_proc_U0.unicast_vlan129_macaddr_lsb_c_blk_n) | (~entry_proc_U0.unicast_vlan129_macaddr_msb_c_blk_n) | (~entry_proc_U0.log_all_mask_c_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0;
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (ap_sync_entry_proc_U0_ap_ready & entry_proc_U0.ap_idle & ~ap_sync_rx_ringbuffer_header_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0;
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0;
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0 | (ap_sync_entry_proc_U0_ap_ready & entry_proc_U0.ap_idle & ~ap_sync_rx_fifo_U0_ap_ready);
    assign proc_0_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[3 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[7 : 4] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_3_0;
    assign in_chan_dep_data_vec_0[11 : 8] = dep_chan_data_3_0;
    assign token_in_vec_0[2] = token_3_0;
    assign dep_chan_vld_0_3 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_3 = out_chan_dep_data_0;
    assign token_0_3 = token_out_vec_0[0];
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[1];
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[2];

    // Process: rx_ringbuffer_header_U0
    mac_logger_hls_deadlock_detect_unit #(4, 1, 3, 3) mac_logger_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0;
    assign proc_1_data_PIPO_blk[0] = 1'b0 | (~log_header_U.i_full_n & rx_ringbuffer_header_U0.ap_done & ap_done_reg_0 & ~log_header_U.t_read) | (~tap_header_U.i_full_n & rx_ringbuffer_header_U0.ap_done & ap_done_reg_0 & ~tap_header_U.t_read);
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0;
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0 | (ap_sync_rx_ringbuffer_header_U0_ap_ready & rx_ringbuffer_header_U0.ap_idle & ~ap_sync_entry_proc_U0_ap_ready);
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0;
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0;
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0 | (ap_sync_rx_ringbuffer_header_U0_ap_ready & rx_ringbuffer_header_U0.ap_idle & ~ap_sync_rx_fifo_U0_ap_ready);
    assign proc_1_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[3 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[7 : 4] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_3_1;
    assign in_chan_dep_data_vec_1[11 : 8] = dep_chan_data_3_1;
    assign token_in_vec_1[2] = token_3_1;
    assign dep_chan_vld_1_3 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_3 = out_chan_dep_data_1;
    assign token_1_3 = token_out_vec_1[0];
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[1];
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[2];

    // Process: rx_fifo_U0
    mac_logger_hls_deadlock_detect_unit #(4, 2, 3, 3) mac_logger_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0;
    assign proc_2_data_PIPO_blk[0] = 1'b0 | (~data_buf_U.i_full_n & rx_fifo_U0.ap_done & ap_done_reg_1 & ~data_buf_U.t_read);
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0;
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0 | (ap_sync_rx_fifo_U0_ap_ready & rx_fifo_U0.ap_idle & ~ap_sync_entry_proc_U0_ap_ready);
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0 | (ap_sync_rx_fifo_U0_ap_ready & rx_fifo_U0.ap_idle & ~ap_sync_rx_ringbuffer_header_U0_ap_ready);
    assign proc_2_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[3 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[7 : 4] = dep_chan_data_1_2;
    assign token_in_vec_2[1] = token_1_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[11 : 8] = dep_chan_data_3_2;
    assign token_in_vec_2[2] = token_3_2;
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[0];
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[1];
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[2];

    // Process: tx_ddr_U0
    mac_logger_hls_deadlock_detect_unit #(4, 3, 3, 3) mac_logger_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0;
    assign proc_3_data_PIPO_blk[0] = 1'b0 | (~data_buf_U.t_empty_n & tx_ddr_U0.ap_idle & ~data_buf_U.i_write);
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0;
    assign proc_3_data_PIPO_blk[1] = 1'b0 | (~log_header_U.t_empty_n & tx_ddr_U0.ap_idle & ~log_header_U.i_write) | (~tap_header_U.t_empty_n & tx_ddr_U0.ap_idle & ~tap_header_U.i_write);
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0 | (~ddr_c_channel_U.if_empty_n & tx_ddr_U0.ap_idle & ~ddr_c_channel_U.if_write) | (~driver_c_channel_U.if_empty_n & tx_ddr_U0.ap_idle & ~driver_c_channel_U.if_write);
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    assign proc_3_data_FIFO_blk[2] = 1'b0 | (~tx_ddr_U0.logger_vlan_enable_mask_blk_n) | (~tx_ddr_U0.multicast_recv_enable_blk_n) | (~tx_ddr_U0.unicast_filter_enable_blk_n) | (~tx_ddr_U0.unicast_vlan100_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan100_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan101_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan101_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan102_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan102_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan103_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan103_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan104_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan104_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan105_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan105_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan106_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan106_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan107_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan107_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan108_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan108_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan109_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan109_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan110_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan110_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan111_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan111_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan112_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan112_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan113_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan113_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan114_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan114_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan115_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan115_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan116_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan116_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan117_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan117_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan118_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan118_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan119_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan119_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan120_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan120_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan121_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan121_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan122_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan122_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan123_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan123_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan124_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan124_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan125_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan125_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan126_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan126_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan127_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan127_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan128_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan128_macaddr_msb_blk_n) | (~tx_ddr_U0.unicast_vlan129_macaddr_lsb_blk_n) | (~tx_ddr_U0.unicast_vlan129_macaddr_msb_blk_n) | (~tx_ddr_U0.log_all_mask_blk_n);
    assign proc_3_data_PIPO_blk[2] = 1'b0;
    assign proc_3_start_FIFO_blk[2] = 1'b0;
    assign proc_3_TLF_FIFO_blk[2] = 1'b0;
    assign proc_3_input_sync_blk[2] = 1'b0;
    assign proc_3_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (proc_3_data_FIFO_blk[2] | proc_3_data_PIPO_blk[2] | proc_3_start_FIFO_blk[2] | proc_3_TLF_FIFO_blk[2] | proc_3_input_sync_blk[2] | proc_3_output_sync_blk[2]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_0_3;
    assign in_chan_dep_data_vec_3[3 : 0] = dep_chan_data_0_3;
    assign token_in_vec_3[0] = token_0_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_1_3;
    assign in_chan_dep_data_vec_3[7 : 4] = dep_chan_data_1_3;
    assign token_in_vec_3[1] = token_1_3;
    assign in_chan_dep_vld_vec_3[2] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[11 : 8] = dep_chan_data_2_3;
    assign token_in_vec_3[2] = token_2_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];
    assign dep_chan_vld_3_1 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_1 = out_chan_dep_data_3;
    assign token_3_1 = token_out_vec_3[1];
    assign dep_chan_vld_3_0 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_0 = out_chan_dep_data_3;
    assign token_3_0 = token_out_vec_3[2];


`include "mac_logger_hls_deadlock_report_unit.vh"
