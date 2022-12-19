#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("s_axi_axilites_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilites_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilites_AWADDR", 9, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilites_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilites_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilites_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilites_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilites_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilites_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilites_ARADDR", 9, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilites_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilites_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilites_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilites_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilites_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_axilites_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_axilites_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
	Port_Property("m_axi_fifo_axi_full_AWVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_fifo_axi_full_AWREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_fifo_axi_full_AWADDR", 64, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_fifo_axi_full_AWID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_fifo_axi_full_AWLEN", 8, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_fifo_axi_full_AWSIZE", 3, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_fifo_axi_full_AWBURST", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_fifo_axi_full_AWLOCK", 2, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_fifo_axi_full_AWCACHE", 4, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_fifo_axi_full_AWPROT", 3, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_fifo_axi_full_AWQOS", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_fifo_axi_full_AWREGION", 4, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_fifo_axi_full_AWUSER", 1, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_fifo_axi_full_WVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_fifo_axi_full_WREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_fifo_axi_full_WDATA", 32, hls_out, 2, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_fifo_axi_full_WSTRB", 4, hls_out, 2, "m_axi", "STRB", 1),
	Port_Property("m_axi_fifo_axi_full_WLAST", 1, hls_out, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_fifo_axi_full_WID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_fifo_axi_full_WUSER", 1, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_fifo_axi_full_ARVALID", 1, hls_out, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_fifo_axi_full_ARREADY", 1, hls_in, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_fifo_axi_full_ARADDR", 64, hls_out, 2, "m_axi", "ADDR", 1),
	Port_Property("m_axi_fifo_axi_full_ARID", 1, hls_out, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_fifo_axi_full_ARLEN", 8, hls_out, 2, "m_axi", "SIZE", 1),
	Port_Property("m_axi_fifo_axi_full_ARSIZE", 3, hls_out, 2, "m_axi", "BURST", 1),
	Port_Property("m_axi_fifo_axi_full_ARBURST", 2, hls_out, 2, "m_axi", "LOCK", 1),
	Port_Property("m_axi_fifo_axi_full_ARLOCK", 2, hls_out, 2, "m_axi", "CACHE", 1),
	Port_Property("m_axi_fifo_axi_full_ARCACHE", 4, hls_out, 2, "m_axi", "PROT", 1),
	Port_Property("m_axi_fifo_axi_full_ARPROT", 3, hls_out, 2, "m_axi", "QOS", 1),
	Port_Property("m_axi_fifo_axi_full_ARQOS", 4, hls_out, 2, "m_axi", "REGION", 1),
	Port_Property("m_axi_fifo_axi_full_ARREGION", 4, hls_out, 2, "m_axi", "USER", 1),
	Port_Property("m_axi_fifo_axi_full_ARUSER", 1, hls_out, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_fifo_axi_full_RVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_fifo_axi_full_RREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_fifo_axi_full_RDATA", 32, hls_in, 2, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_fifo_axi_full_RLAST", 1, hls_in, 2, "m_axi", "LAST", 1),
	Port_Property("m_axi_fifo_axi_full_RID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_fifo_axi_full_RUSER", 1, hls_in, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_fifo_axi_full_RRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_fifo_axi_full_BVALID", 1, hls_in, 2, "m_axi", "VALID", 1),
	Port_Property("m_axi_fifo_axi_full_BREADY", 1, hls_out, 2, "m_axi", "READY", 1),
	Port_Property("m_axi_fifo_axi_full_BRESP", 2, hls_in, 2, "m_axi", "RESP", 1),
	Port_Property("m_axi_fifo_axi_full_BID", 1, hls_in, 2, "m_axi", "ID", 1),
	Port_Property("m_axi_fifo_axi_full_BUSER", 1, hls_in, 2, "m_axi", "DATA", 1),
	Port_Property("m_axi_mac_fifo_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mac_fifo_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mac_fifo_AWADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_mac_fifo_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mac_fifo_AWLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_mac_fifo_AWSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_mac_fifo_AWBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_mac_fifo_AWLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_mac_fifo_AWCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_mac_fifo_AWPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_mac_fifo_AWQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_mac_fifo_AWREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_mac_fifo_AWUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_mac_fifo_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mac_fifo_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mac_fifo_WDATA", 32, hls_out, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_mac_fifo_WSTRB", 4, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_mac_fifo_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_mac_fifo_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mac_fifo_WUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_mac_fifo_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mac_fifo_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mac_fifo_ARADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_mac_fifo_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mac_fifo_ARLEN", 8, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_mac_fifo_ARSIZE", 3, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_mac_fifo_ARBURST", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_mac_fifo_ARLOCK", 2, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_mac_fifo_ARCACHE", 4, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_mac_fifo_ARPROT", 3, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_mac_fifo_ARQOS", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_mac_fifo_ARREGION", 4, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_mac_fifo_ARUSER", 1, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_mac_fifo_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mac_fifo_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mac_fifo_RDATA", 32, hls_in, 0, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_mac_fifo_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_mac_fifo_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mac_fifo_RUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_mac_fifo_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_mac_fifo_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_mac_fifo_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_mac_fifo_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_mac_fifo_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_mac_fifo_BUSER", 1, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_ps_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ps_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ps_AWADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_ps_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ps_AWLEN", 8, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_ps_AWSIZE", 3, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_ps_AWBURST", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_ps_AWLOCK", 2, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_ps_AWCACHE", 4, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_ps_AWPROT", 3, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_ps_AWQOS", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_ps_AWREGION", 4, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_ps_AWUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_ps_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ps_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ps_WDATA", 32, hls_out, 1, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_ps_WSTRB", 4, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_ps_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_ps_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ps_WUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_ps_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ps_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ps_ARADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_ps_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ps_ARLEN", 8, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_ps_ARSIZE", 3, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_ps_ARBURST", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_ps_ARLOCK", 2, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_ps_ARCACHE", 4, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_ps_ARPROT", 3, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_ps_ARQOS", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_ps_ARREGION", 4, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_ps_ARUSER", 1, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_ps_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ps_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ps_RDATA", 32, hls_in, 1, "m_axi", "FIFONUM", 1),
	Port_Property("m_axi_ps_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_ps_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ps_RUSER", 1, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_ps_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_ps_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_ps_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_ps_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_ps_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_ps_BUSER", 1, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("timestamp", 64, hls_in, 8, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "mac_logger";
