
# PART is zynquplus xczu5evsfvc784

############################################################
# Clock Period Constraints                                 #
############################################################

#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS

############################################################
# None
############################################################


#
####
#######
##########
#############
#################
#CORE CONSTRAINTS



############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################




# false path due to synced control path
set_max_delay -from [get_cells {bd_929b_mac_0_core/*statistics_counters/rd_data_ref_reg[*]}] -to [get_cells {bd_929b_mac_0_core/*statistics_counters/ip2bus_data_reg[*]}] 6 -datapath_only
set_max_delay -from [get_cells {bd_929b_mac_0_core/*statistics_counters/response_toggle_reg}] -to [get_cells {bd_929b_mac_0_core/*statistics_counters/sync_response/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {bd_929b_mac_0_core/*statistics_counters/request_toggle_reg}] -to [get_cells {bd_929b_mac_0_core/*statistics_counters/sync_request/data_sync_reg0}] 6 -datapath_only


############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ PRE} -of [get_cells -hier -regexp {.*\/async_rst.*}]]
set_false_path -to [get_pins -filter {REF_PIN_NAME =~ CLR} -of [get_cells -hier -regexp {.*\/async_rst.*}]]

set_max_delay -from [get_cells {bd_929b_mac_0_core/addr_filter_top/addr_regs.promiscuous_mode_reg_reg}] -to [get_cells {bd_929b_mac_0_core/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {bd_929b_mac_0_core/*managen/conf/update_pause_ad_int_reg}] -to [get_cells {bd_929b_mac_0_core/addr_filter_top/address_filter_inst/sync_update/data_sync_reg0}] 6 -datapath_only

# the mdio interface is clocked from the axi clock but the clock is so slow is can be considered to be data
# the data related outputs are output on the falling edge of the MDC output so both can simply be considered to be multicycle paths
set_multicycle_path 10 -setup -from [get_cells {bd_929b_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {bd_929b_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 10 -setup -from [get_cells {bd_929b_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {bd_929b_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_multicycle_path 10 -setup -from [get_cells {bd_929b_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_o ] 
set_multicycle_path 9 -hold -from   [get_cells {bd_929b_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_o ] 
set_multicycle_path 10 -setup -from [get_cells {bd_929b_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_t ] 
set_multicycle_path 9 -hold -from   [get_cells {bd_929b_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio_t ] 
# mdio has timing implications but slow interface so relaxed
set_false_path  -to [get_cells -hier -filter {NAME =~ *managen/mdio_enabled.phy/mdio_in_reg1_reg}]

############################################################
# CDC Waivers
############################################################ 
create_waiver -internal -scope -quiet -type CDC -id {CDC-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Part of reset synchronizer. Safe to ignore" -from [get_pins -of [get_cells -hier -filter {name =~ */sync_stats_reset/sync_rst1_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */SYNC_STATS_RESET/async_rst0_reg*}] -filter {name =~ *PRE}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Safe to ignore. This data-bus is read-date port of the LUT based RAM whose read address is generated in the destination clock domain." -from [get_pins -of [get_cells -hier -filter {name =~ */byte_wide_ram[*].header_compare_dist_ram/DP*}] -filter {name =~ *CLK}] -to [get_pins -of [get_cells -hier -filter {name =~ */bit_match_gen[*].bit_match_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/mdio_enabled.miim_clk_int_reg*}] -filter {name =~ *Q}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Safe to ignore. This data-bus is read-date port of the LUT based RAM whose read address is generated in the destination clock domain." -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_rx_pause_ad_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */address_filter_inst/load_wr_data_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_rx_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */rxgen/ENABLE_REG_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_*x_inband_*_enable_reg*}] -filter {name =~ *C}] 
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "This data-bus is part of the DMUX synchronizer, which is essentially a false paths and can be ignored." -from [get_pins -of [get_cells -hier -filter {name =~ */stats_block.statistics_counters/rd_data_ref_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */stats_block.statistics_counters/ip2bus_data_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Safe to ignore. This data-bus is read-date port of the LUT based RAM whose read address is generated in the destination clock domain" -from [get_pins -of [get_cells -hier -filter {name =~ */byte_wide_ram[*].header_*_dist_ram/DP*}] -filter {name =~ *CLK}] -to [get_pins -of [get_cells -hier -filter {name =~ */bit_match_gen[*].bit_match_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */speed_host.speed_is_10_100_reg*}] -filter {name =~ *C}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-4} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */int_rx_pause_ad_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */tx/pause_source_shift_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "This data-bus is part of the DMUX synchronizer, which is essentially a false paths and can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */bus2ip_addr_*_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */stats_block.statistics_counters/ipic_rd_clear_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_crc_mode_wr_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_CRC_MODE_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_ENABLE_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_jumbo_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_JUMBO_ENABLE_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_vlan_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_VLAN_ENABLE_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_vlan_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_VLAN_ENABLE_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-4} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */int_tx_latency_adjust_reg[*]*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_TX_LATENCY_ADJUST_reg[*]*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */int_tx_latency_adjust_enable_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_TX_LATENCY_ADJUST_ENABLE_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type CDC -id {CDC-1} -user "tri_mode_ethernet_mac" -tags "11999" -desc "Control register o/p expected to be static during MAC operations and thus a false path for all practical purposes and thus can be ignored" -from [get_pins -of [get_cells -hier -filter {name =~ */man_block.managen/conf/int_tx_ifg_del_en_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */txgen/INT_IFG_DEL_EN_reg*}] -filter {name =~ *D}]
create_waiver -internal -scope -quiet -type METHODOLOGY -id {TIMING-11} -user "tri_mode_ethernet_mac" -tags "11999" -desc "The core has 2 clock domains which can be asynchronous to each other, so we have CDC logic and appropriate XDC maxdelay/false_path constraints between them.  However, in this permutation these two clocks are wired to the same clock source, and we get the TIMING 11 warning (note that it can depend upon how the customer wires up the core, so this warning should be suppressed in the tools for IP cores)" -objects [get_pins  -of [get_cells -hier -filter {name =~ */rd_data_*_reg[*]*}] -filter {name =~ *C}] -objects [get_pins -of [get_cells -hier -filter {name =~ */ip2bus_data_reg[*]*}] -filter {name =~ *D}]
