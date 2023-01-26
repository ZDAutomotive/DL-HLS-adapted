// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module clu_EN_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [31:0]                   can_ptr,
    output wire [31:0]                   uart_ptr,
    output wire [31:0]                   lin_ptr,
    input  wire [31:0]                   received_can,
    input  wire                          received_can_ap_vld,
    output wire [31:0]                   received_uart,
    input  wire [31:0]                   received_lin,
    input  wire                          received_lin_ap_vld,
    output wire [31:0]                   can_en,
    output wire [7:0]                    uart_en,
    output wire [31:0]                   lin_en,
    output wire [31:0]                   can_ddr,
    output wire [31:0]                   uart_ddr,
    output wire [31:0]                   lin_ddr,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of can_ptr
//        bit 31~0 - can_ptr[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of uart_ptr
//        bit 31~0 - uart_ptr[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of lin_ptr
//        bit 31~0 - lin_ptr[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of received_can
//        bit 31~0 - received_can[31:0] (Read)
// 0x2c : Control signal of received_can
//        bit 0  - received_can_ap_vld (Read/COR)
//        others - reserved
// 0x30 : Data signal of received_uart
//        bit 31~0 - received_uart[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of received_lin
//        bit 31~0 - received_lin[31:0] (Read)
// 0x3c : Control signal of received_lin
//        bit 0  - received_lin_ap_vld (Read/COR)
//        others - reserved
// 0x40 : Data signal of can_en
//        bit 31~0 - can_en[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of uart_en
//        bit 7~0 - uart_en[7:0] (Read/Write)
//        others  - reserved
// 0x4c : reserved
// 0x50 : Data signal of lin_en
//        bit 31~0 - lin_en[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of can_ddr
//        bit 31~0 - can_ddr[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of uart_ddr
//        bit 31~0 - uart_ddr[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of lin_ddr
//        bit 31~0 - lin_ddr[31:0] (Read/Write)
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL              = 7'h00,
    ADDR_GIE                  = 7'h04,
    ADDR_IER                  = 7'h08,
    ADDR_ISR                  = 7'h0c,
    ADDR_CAN_PTR_DATA_0       = 7'h10,
    ADDR_CAN_PTR_CTRL         = 7'h14,
    ADDR_UART_PTR_DATA_0      = 7'h18,
    ADDR_UART_PTR_CTRL        = 7'h1c,
    ADDR_LIN_PTR_DATA_0       = 7'h20,
    ADDR_LIN_PTR_CTRL         = 7'h24,
    ADDR_RECEIVED_CAN_DATA_0  = 7'h28,
    ADDR_RECEIVED_CAN_CTRL    = 7'h2c,
    ADDR_RECEIVED_UART_DATA_0 = 7'h30,
    ADDR_RECEIVED_UART_CTRL   = 7'h34,
    ADDR_RECEIVED_LIN_DATA_0  = 7'h38,
    ADDR_RECEIVED_LIN_CTRL    = 7'h3c,
    ADDR_CAN_EN_DATA_0        = 7'h40,
    ADDR_CAN_EN_CTRL          = 7'h44,
    ADDR_UART_EN_DATA_0       = 7'h48,
    ADDR_UART_EN_CTRL         = 7'h4c,
    ADDR_LIN_EN_DATA_0        = 7'h50,
    ADDR_LIN_EN_CTRL          = 7'h54,
    ADDR_CAN_DDR_DATA_0       = 7'h58,
    ADDR_CAN_DDR_CTRL         = 7'h5c,
    ADDR_UART_DDR_DATA_0      = 7'h60,
    ADDR_UART_DDR_CTRL        = 7'h64,
    ADDR_LIN_DDR_DATA_0       = 7'h68,
    ADDR_LIN_DDR_CTRL         = 7'h6c,
    WRIDLE                    = 2'd0,
    WRDATA                    = 2'd1,
    WRRESP                    = 2'd2,
    WRRESET                   = 2'd3,
    RDIDLE                    = 2'd0,
    RDDATA                    = 2'd1,
    RDRESET                   = 2'd2,
    ADDR_BITS                = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_can_ptr = 'b0;
    reg  [31:0]                   int_uart_ptr = 'b0;
    reg  [31:0]                   int_lin_ptr = 'b0;
    reg                           int_received_can_ap_vld;
    reg  [31:0]                   int_received_can = 'b0;
    reg  [31:0]                   int_received_uart = 'b0;
    reg                           int_received_lin_ap_vld;
    reg  [31:0]                   int_received_lin = 'b0;
    reg  [31:0]                   int_can_en = 'b0;
    reg  [7:0]                    int_uart_en = 'b0;
    reg  [31:0]                   int_lin_en = 'b0;
    reg  [31:0]                   int_can_ddr = 'b0;
    reg  [31:0]                   int_uart_ddr = 'b0;
    reg  [31:0]                   int_lin_ddr = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_CAN_PTR_DATA_0: begin
                    rdata <= int_can_ptr[31:0];
                end
                ADDR_UART_PTR_DATA_0: begin
                    rdata <= int_uart_ptr[31:0];
                end
                ADDR_LIN_PTR_DATA_0: begin
                    rdata <= int_lin_ptr[31:0];
                end
                ADDR_RECEIVED_CAN_DATA_0: begin
                    rdata <= int_received_can[31:0];
                end
                ADDR_RECEIVED_CAN_CTRL: begin
                    rdata[0] <= int_received_can_ap_vld;
                end
                ADDR_RECEIVED_UART_DATA_0: begin
                    rdata <= int_received_uart[31:0];
                end
                ADDR_RECEIVED_LIN_DATA_0: begin
                    rdata <= int_received_lin[31:0];
                end
                ADDR_RECEIVED_LIN_CTRL: begin
                    rdata[0] <= int_received_lin_ap_vld;
                end
                ADDR_CAN_EN_DATA_0: begin
                    rdata <= int_can_en[31:0];
                end
                ADDR_UART_EN_DATA_0: begin
                    rdata <= int_uart_en[7:0];
                end
                ADDR_LIN_EN_DATA_0: begin
                    rdata <= int_lin_en[31:0];
                end
                ADDR_CAN_DDR_DATA_0: begin
                    rdata <= int_can_ddr[31:0];
                end
                ADDR_UART_DDR_DATA_0: begin
                    rdata <= int_uart_ddr[31:0];
                end
                ADDR_LIN_DDR_DATA_0: begin
                    rdata <= int_lin_ddr[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign can_ptr           = int_can_ptr;
assign uart_ptr          = int_uart_ptr;
assign lin_ptr           = int_lin_ptr;
assign received_uart     = int_received_uart;
assign can_en            = int_can_en;
assign uart_en           = int_uart_en;
assign lin_en            = int_lin_en;
assign can_ddr           = int_can_ddr;
assign uart_ddr          = int_uart_ddr;
assign lin_ddr           = int_lin_ddr;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_can_ptr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_can_ptr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CAN_PTR_DATA_0)
            int_can_ptr[31:0] <= (WDATA[31:0] & wmask) | (int_can_ptr[31:0] & ~wmask);
    end
end

// int_uart_ptr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_uart_ptr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UART_PTR_DATA_0)
            int_uart_ptr[31:0] <= (WDATA[31:0] & wmask) | (int_uart_ptr[31:0] & ~wmask);
    end
end

// int_lin_ptr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_lin_ptr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LIN_PTR_DATA_0)
            int_lin_ptr[31:0] <= (WDATA[31:0] & wmask) | (int_lin_ptr[31:0] & ~wmask);
    end
end

// int_received_can
always @(posedge ACLK) begin
    if (ARESET)
        int_received_can <= 0;
    else if (ACLK_EN) begin
        if (received_can_ap_vld)
            int_received_can <= received_can;
    end
end

// int_received_can_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_received_can_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (received_can_ap_vld)
            int_received_can_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_RECEIVED_CAN_CTRL)
            int_received_can_ap_vld <= 1'b0; // clear on read
    end
end

// int_received_uart[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_received_uart[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_RECEIVED_UART_DATA_0)
            int_received_uart[31:0] <= (WDATA[31:0] & wmask) | (int_received_uart[31:0] & ~wmask);
    end
end

// int_received_lin
always @(posedge ACLK) begin
    if (ARESET)
        int_received_lin <= 0;
    else if (ACLK_EN) begin
        if (received_lin_ap_vld)
            int_received_lin <= received_lin;
    end
end

// int_received_lin_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_received_lin_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (received_lin_ap_vld)
            int_received_lin_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_RECEIVED_LIN_CTRL)
            int_received_lin_ap_vld <= 1'b0; // clear on read
    end
end

// int_can_en[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_can_en[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CAN_EN_DATA_0)
            int_can_en[31:0] <= (WDATA[31:0] & wmask) | (int_can_en[31:0] & ~wmask);
    end
end

// int_uart_en[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_uart_en[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UART_EN_DATA_0)
            int_uart_en[7:0] <= (WDATA[31:0] & wmask) | (int_uart_en[7:0] & ~wmask);
    end
end

// int_lin_en[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_lin_en[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LIN_EN_DATA_0)
            int_lin_en[31:0] <= (WDATA[31:0] & wmask) | (int_lin_en[31:0] & ~wmask);
    end
end

// int_can_ddr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_can_ddr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_CAN_DDR_DATA_0)
            int_can_ddr[31:0] <= (WDATA[31:0] & wmask) | (int_can_ddr[31:0] & ~wmask);
    end
end

// int_uart_ddr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_uart_ddr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_UART_DDR_DATA_0)
            int_uart_ddr[31:0] <= (WDATA[31:0] & wmask) | (int_uart_ddr[31:0] & ~wmask);
    end
end

// int_lin_ddr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_lin_ddr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_LIN_DDR_DATA_0)
            int_lin_ddr[31:0] <= (WDATA[31:0] & wmask) | (int_lin_ddr[31:0] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
