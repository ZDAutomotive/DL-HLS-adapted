

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "CHIPDLIN" \
 "NUM_INSTANCES" "DEVICE_ID"  "C_S00_AXI_BASEADDR" "C_S00_AXI_HIGHADDR" "CLOCK_FREQ_HZ" 

    xdefine_config_file $drv_handle "chipdlin_g.c" "ChipDLIN" \
        "DEVICE_ID" "C_S00_AXI_BASEADDR" "CLOCK_FREQ_HZ" 
}
