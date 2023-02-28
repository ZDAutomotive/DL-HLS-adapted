#####################################################################
#    Datalogger3 V1R1 PIN Assignments
#
# Author: Jackie Guo, Sunbin
# History:
#       Date      Description
#     --------------------------------------------------------------
#     2022.02.14  Created                              Guo/Sunbin
#     2022.09.01  DL3 hw V1.0 enet clk pin             Guo
#     2022.12.14  DL3 hw V1.1 can/lin/uart/gpio        Guo/Liubo
#####################################################################


############################## SYSTEM Part ######################
## Compress fpga bitstream
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]


############################## PS Part ######################

####################################################################
#  PS GPIO (EMIO)
#     PINs: 4
#  IP Core: GPIO (GPIO_tri_io[0]-GPIO_tri_io[3])
#
# 0: GPIO_ext1
# 1: GPIO_ext2
# 2: GPIO_soft_power
# 3: GPIO_sata_power
#
#  PS GPIO (MIO)
#     PINS: 11
# 
#     Status_led_R, Status_led_G, Status_led_B
#     Trigger, Clamp15, Sleep_Mode
#     Factory_reset
#     Wifi_state
#     FAN_PWM
#     MCU_Wake_Trig, MCU_Wake_Mode
# 
#####################################################################

#GPIO_EXT1
set_property PACKAGE_PIN D5 [get_ports {GPIO_tri_io[0]}]
set_property PULLDOWN true [get_ports {GPIO_tri_io[0]}]

#GPIO_EXT2
set_property PACKAGE_PIN E8 [get_ports {GPIO_tri_io[1]}]
set_property PULLDOWN true [get_ports {GPIO_tri_io[1]}]

#GPIO_Soft_Power
set_property PACKAGE_PIN A4 [get_ports {GPIO_tri_io[2]}]
set_property PULLDOWN true [get_ports {GPIO_tri_io[2]}]

#GPIO_SATA_Power
set_property PACKAGE_PIN E4 [get_ports {GPIO_tri_io[3]}]
set_property PULLDOWN true [get_ports {GPIO_tri_io[3]}]


set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_tri_io[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_tri_io[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_tri_io[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {GPIO_tri_io[3]}]

#############################################
#############################################
##############################################################
##  PS ENET0 RGMII => ETH0
##       Bank: 66 (shared logic in core, with IDELAYCTRL)
##       PINs: 12
##  PS ENET0 MDIO
##       Bank: 66
##       PINs: 2
##  IP Core: Xilinx gmii-to-rgmii V4.0
##############################################################
#rmgii
set_property PACKAGE_PIN E2 [get_ports ps_enet0_txc]
set_property PACKAGE_PIN G1 [get_ports {ps_enet0_td[0]}]
set_property PACKAGE_PIN F1 [get_ports {ps_enet0_td[1]}]
set_property PACKAGE_PIN G5 [get_ports {ps_enet0_td[2]}]
set_property PACKAGE_PIN F5 [get_ports {ps_enet0_td[3]}]
set_property PACKAGE_PIN G8 [get_ports ps_enet0_tx_ctl]

#not CLK pin!!! (dl3 v1.0 alpha)
#set_property PACKAGE_PIN F7 [get_ports ps_eth1_rxc]
#GCLK pin
set_property PACKAGE_PIN D7 [get_ports ps_enet0_rxc]      

set_property PACKAGE_PIN G6 [get_ports {ps_enet0_rd[0]}]
set_property PACKAGE_PIN F6 [get_ports {ps_enet0_rd[1]}]
set_property PACKAGE_PIN G3 [get_ports {ps_enet0_rd[2]}]
set_property PACKAGE_PIN F3 [get_ports {ps_enet0_rd[3]}]
set_property PACKAGE_PIN E3 [get_ports ps_enet0_rx_ctl]

set_property IOSTANDARD LVCMOS18 [get_ports ps_enet0_txc]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet0_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet0_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet0_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet0_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports ps_enet0_tx_ctl]

set_property IOSTANDARD LVCMOS18 [get_ports ps_enet0_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet0_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet0_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet0_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet0_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports ps_enet0_rx_ctl]

#mdio
set_property PACKAGE_PIN E1 [get_ports mdio_ps_enet0_mdc]
set_property PACKAGE_PIN D1 [get_ports mdio_ps_enet0_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_ps_enet0_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_ps_enet0_mdio_io]

#[DRC PDRC-203] BITSLICE0 not available during BISC
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports ps_enet0_txc]
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports ps_enet0_tx_ctl]


#############################################################
#  PS ENET1 RGMII => ETH1
#       Bank: 66 (shared logic in example, without IDELAYCTRL)
#       PINs: 12
#    IP Core: Xilinx gmii-to-rgmii V4.0
#  PS ENET0 MDIO
#       Bank: 66
#       PINs: 2
#############################################################
#rmgii
set_property PACKAGE_PIN C4 [get_ports ps_enet1_txc]
#not CLK pin!!! (dl3 v1.0 alpha)
#set_property PACKAGE_PIN C3 [get_ports {ps_eth1_td[0]}]
#dl3 v1.1 test
set_property PACKAGE_PIN B1 [get_ports {ps_enet1_td[0]}]

set_property PACKAGE_PIN C2 [get_ports {ps_enet1_td[1]}]
set_property PACKAGE_PIN C6 [get_ports {ps_enet1_td[2]}]
set_property PACKAGE_PIN B6 [get_ports {ps_enet1_td[3]}]
set_property PACKAGE_PIN C1 [get_ports ps_enet1_tx_ctl]

#not CLK pin!!! (dl3 v1.0 alpha)
#set_property PACKAGE_PIN B1 [get_ports ps_eth1_rxc]
#GCLK pin
set_property PACKAGE_PIN C3 [get_ports ps_enet1_rxc] 

set_property PACKAGE_PIN D6 [get_ports {ps_enet1_rd[0]}]

#not CLK pin!!! (dl3 v1.0 alpha)
#set_property PACKAGE_PIN D7 [get_ports {ps_eth1_rd[1]}]
#dl3 v1.1 test
set_property PACKAGE_PIN F7 [get_ports {ps_enet1_rd[1]}]

set_property PACKAGE_PIN A1 [get_ports {ps_enet1_rd[2]}]
set_property PACKAGE_PIN A2 [get_ports {ps_enet1_rd[3]}]
set_property PACKAGE_PIN B4 [get_ports ps_enet1_rx_ctl]

set_property IOSTANDARD LVCMOS18 [get_ports ps_enet1_txc]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet1_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet1_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet1_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet1_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports ps_enet1_tx_ctl]

set_property IOSTANDARD LVCMOS18 [get_ports ps_enet1_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet1_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet1_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet1_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet1_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports ps_enet1_rx_ctl]

#mdio
set_property PACKAGE_PIN B3 [get_ports mdio_ps_enet1_mdc]
set_property PACKAGE_PIN A3 [get_ports mdio_ps_enet1_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_ps_enet1_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_ps_enet1_mdio_io]

#[DRC PDRC-203] BITSLICE0 not available during BISC
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports ps_enet1_txc]
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports ps_enet1_tx_ctl]


#############################################################
#  PS ENET2 RGMII => ETH2
#       Bank: 66 (shared logic in example, without IDELAYCTRL)
#       PINs: 12
#    IP Core: Xilinx gmii-to-rgmii V4.0
#  PS ENET0 MDIO
#       Bank: 66
#       PINs: 2
#############################################################
#rmgii
set_property PACKAGE_PIN A7 [get_ports ps_enet2_txc]
set_property PACKAGE_PIN E9 [get_ports {ps_enet2_td[0]}]
set_property PACKAGE_PIN D9 [get_ports {ps_enet2_td[1]}]
set_property PACKAGE_PIN A9 [get_ports {ps_enet2_td[2]}]
set_property PACKAGE_PIN A8 [get_ports {ps_enet2_td[3]}]
set_property PACKAGE_PIN B9 [get_ports ps_enet2_tx_ctl]

set_property PACKAGE_PIN E5 [get_ports ps_enet2_rxc]
set_property PACKAGE_PIN A5 [get_ports {ps_enet2_rd[0]}]
set_property PACKAGE_PIN B5 [get_ports {ps_enet2_rd[1]}]
set_property PACKAGE_PIN F8 [get_ports {ps_enet2_rd[2]}]
set_property PACKAGE_PIN C9 [get_ports {ps_enet2_rd[3]}]
set_property PACKAGE_PIN B8 [get_ports ps_enet2_rx_ctl]

set_property IOSTANDARD LVCMOS18 [get_ports ps_enet2_txc]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet2_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet2_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet2_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet2_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports ps_enet2_tx_ctl]

set_property IOSTANDARD LVCMOS18 [get_ports ps_enet2_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet2_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet2_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet2_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ps_enet2_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports ps_enet2_rx_ctl]

#mdio
set_property PACKAGE_PIN A6 [get_ports mdio_ps_enet2_mdc]
set_property PACKAGE_PIN C8 [get_ports mdio_ps_enet2_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_ps_enet2_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_ps_enet2_mdio_io]

#[DRC PDRC-203] BITSLICE0 not available during BISC
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports mdio_ps_enet2_mdio_io]


# The following constraints come from the GMII to RGMII product guide
# http://www.xilinx.com/support/documentation/ip_documentation/gmii_to_rgmii/v4_0/pg160-gmii-to-rgmii.pdf
## Clock Period Constraints
#create_clock -period 8.000 -name ps_enet0_rxc -add [get_ports ps_enet0_rxc]
#create_clock -period 8.000 -name ps_enet1_rxc -add [get_ports ps_enet1_rxc]
#create_clock -period 8.000 -name ps_enet2_rxc -add [get_ports ps_enet2_rxc]
create_clock -period 8.000 -name ps_enet0_rxc_clk -waveform {0.000 4.000} [get_ports ps_enet0_rxc]
create_clock -period 8.000 -name ps_enet1_rxc_clk -waveform {0.000 4.000} [get_ports ps_enet1_rxc]
create_clock -period 8.000 -name ps_enet2_rxc_clk -waveform {0.000 4.000} [get_ports ps_enet2_rxc]


##False path constraints to async inputs coming directly to synchronizer
set_false_path -to [get_pins -hier -filter {name =~ *idelayctrl_reset_gen/*reset_sync*/PRE }]
set_false_path -to [get_pins -of [get_cells -hier -filter { name =~ *i_MANAGEMENT/SYNC_*/data_sync* }] -filter { name =~ *D }]
set_false_path -to [get_pins -hier -filter {name =~ *reset_sync*/PRE }]

##False path constraints from Control Register outputs
set_false_path -from [get_pins -hier -filter {name =~ *i_MANAGEMENT/DUPLEX_MODE_REG*/C }]
set_false_path -from [get_pins -hier -filter {name =~ *i_MANAGEMENT/SPEED_SELECTION_REG*/C }]

## constraint valid if parameter C_EXTERNAL_CLOCK = 0
set_case_analysis 0 [get_pins -hier -filter {name =~ *i_bufgmux_gmii_clk/CE0}]
set_case_analysis 0 [get_pins -hier -filter {name =~ *i_bufgmux_gmii_clk/S0}]
set_case_analysis 1 [get_pins -hier -filter {name =~ *i_bufgmux_gmii_clk/CE1}]
set_case_analysis 1 [get_pins -hier -filter {name =~ *i_bufgmux_gmii_clk/S1}]

#These constraints are for non-Versal devices
#To Adjust GMII Rx Input Setup/Hold Timing
# IODELAY group for GMII-to-RGMII block, DELAY_VALUE (ps). for ultrascale+:upto 1100 (1.1ns)
#set_property IODELAY_GROUP enet_iodelay_grp0 [get_cells -hier -filter {name =~ *_gmii_to_rgmii_0_0_core/*delay_rgmii_rxd* }]
#set_property DELAY_VALUE 16 [get_cells -hier -filter {name =~ *_gmii_to_rgmii_0_0_core/*delay_rgmii_rxd*}]
#set_property IODELAY_GROUP enet_iodelay_grp0 [get_cells *_i/gmii_to_rgmii_0/U0/i_*_gmii_to_rgmii_0_0_idelayctrl]
#set_property DELAY_VALUE 16 [get_cells *_gmii_to_rgmii_0_0_core/i_gmii_to_rgmii/i_gmii_to_rgmii/gen_rgmii_rx_zq.delay_rgmii_rx_ctl]

#set_property IODELAY_GROUP enet_iodelay_grp1 [get_cells -hier -filter {name =~ *_gmii_to_rgmii_1_0_core/*delay_rgmii_rxd* }]
#set_property DELAY_VALUE 16 [get_cells -hier -filter {name =~ *_gmii_to_rgmii_1_0_core/*delay_rgmii_rxd*}]
#set_property IODELAY_GROUP enet_iodelay_grp1 [get_cells *_i/gmii_to_rgmii_0/U0/i_*_gmii_to_rgmii_1_0_idelayctrl]
#set_property DELAY_VALUE 16 [get_cells *_gmii_to_rgmii_1_0_core/i_gmii_to_rgmii/i_gmii_to_rgmii/gen_rgmii_rx_zq.delay_rgmii_rx_ctl]

#set_property IODELAY_GROUP enet_iodelay_grp2 [get_cells -hier -filter {name =~ *_gmii_to_rgmii_2_0_core/*delay_rgmii_rxd* }]
#set_property DELAY_VALUE 16 [get_cells -hier -filter {name =~ *_gmii_to_rgmii_2_0_core/*delay_rgmii_rxd*}]
#set_property IODELAY_GROUP enet_iodelay_grp2 [get_cells *_i/gmii_to_rgmii_0/U0/i_*_gmii_to_rgmii_2_0_idelayctrl]
#set_property DELAY_VALUE 16 [get_cells *_gmii_to_rgmii_2_0_core/i_gmii_to_rgmii/i_gmii_to_rgmii/gen_rgmii_rx_zq.delay_rgmii_rx_ctl]


##Use the following constraint to modify the slew in the IOB
set_property SLEW FAST [get_ports {ps_enet0_td[3]}]
set_property SLEW FAST [get_ports {ps_enet0_td[2]}]
set_property SLEW FAST [get_ports {ps_enet0_td[1]}]
set_property SLEW FAST [get_ports {ps_enet0_td[0]}]
set_property SLEW FAST [get_ports ps_enet0_txc]
set_property SLEW FAST [get_ports ps_enet0_tx_ctl]
set_property SLEW FAST [get_ports {ps_enet1_td[3]}]
set_property SLEW FAST [get_ports {ps_enet1_td[2]}]
set_property SLEW FAST [get_ports {ps_enet1_td[1]}]
set_property SLEW FAST [get_ports {ps_enet1_td[0]}]
set_property SLEW FAST [get_ports ps_enet1_txc]
set_property SLEW FAST [get_ports ps_enet1_tx_ctl]
set_property SLEW FAST [get_ports {ps_enet2_td[3]}]
set_property SLEW FAST [get_ports {ps_enet2_td[2]}]
set_property SLEW FAST [get_ports {ps_enet2_td[1]}]
set_property SLEW FAST [get_ports {ps_enet2_td[0]}]
set_property SLEW FAST [get_ports ps_enet2_txc]
set_property SLEW FAST [get_ports ps_enet2_tx_ctl]

# Rename the gmii_to_rgmii_0_gmii_clk_125m_out clock to gmii_clk_125m_out so that the in-built constraints will find it
# Based on AR57197: http://www.xilinx.com/support/answers/57197.html
#create_clock -period 8.000 -name gmii_clk_125m_out [get_pins *_i/gmii_to_rgmii_0/U0/i_*_gmii_to_rgmii_0_0_clocking/mmcm_adv_inst/CLKOUT0]

###==========================================================================================================================###
## The following constraints force placement of the BUFGs needed by the RGMII RX clock for PS Enet1 and 2
## Without these constraints, timing will not close because the BUFGCE selected by Vivado is too far.
## It is actually not recommended to use LOC constraints on BUFGCEs but instead to constrain placement to a clock
## region, but in Vivado 2017.2, even this does not result a good placement of BUFGCE and timing closure.

#set_property BEL BUFCE [get_cells *_i/gmii_to_rgmii_1/U0/i_gmii_to_rgmii_block/*_gmii_to_rgmii_2_0_core/i_gmii_to_rgmii/i_gmii_to_rgmii/bufg_rgmii_rx_clk]
#set_property LOC BUFGCE_X1Y3 [get_cells *_i/gmii_to_rgmii_1/U0/i_gmii_to_rgmii_block/*_gmii_to_rgmii_2_0_core/i_gmii_to_rgmii/i_gmii_to_rgmii/bufg_rgmii_rx_clk]
#set_property BEL BUFCE [get_cells *_i/gmii_to_rgmii_2/U0/i_gmii_to_rgmii_block/*_gmii_to_rgmii_2_0_core/i_gmii_to_rgmii/i_gmii_to_rgmii/bufio_rgmii_rx_clk]
#set_property LOC BUFGCE_X1Y3 [get_cells *_i/gmii_to_rgmii_2/U0/i_gmii_to_rgmii_block/*_gmii_to_rgmii_2_0_core/i_gmii_to_rgmii/i_gmii_to_rgmii/bufio_rgmii_rx_clk]

## warning by Vivado
##[Place 30-675] Sub-optimal placement for a global clock-capable IO pin and BUFG pair.If this sub optimal condition is acceptable for this design,
##you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged.
##These examples can be used directly in the .xdc file to override this clock rule.
##	< set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/gmii_to_rgmii_1/U0/rgmii_rxc_ibuf_i/O] 
## reason: rgmii rxclk needs to be clock pin!!!
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/gmii_to_rgmii_1/U0/rgmii_rxc_ibuf_i/O]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/gmii_to_rgmii_2/U0/rgmii_rxc_ibuf_i/O]

################################## End of PS_ENET0/1/2 ###############################




#############################################################
#  PL CLOCK_SW0 SGMII
#       Bank: 224 GTH_CLK0
#       PINs: 2
#############################################################
#set_property PACKAGE_PIN Y5 [get_ports mgt_clk_sw0_clk_n]
set_property PACKAGE_PIN Y6 [get_ports mgt_clk_sw0_clk_p]
create_clock -name gt_ref_clk -period 8.0 [get_ports mgt_clk_sw0_clk_p]

###==========================================================
### MAC for SWITCH connection
###==========================================================


#############################################################
#  PL MAC_SW0 RGMII
#       Bank: 65
#       PINs: 12
#  PL MAC_SW0 SGMII
#       Bank: 224
#       PINs: 4
#  PL MII_MPC1 MDIO
#       Bank: 65
#       PINs: 3
#  IP Core: Xilinx AXI 1G/2.5G Ethernet Subsystem V7.1
#############################################################

##RGMII
#set_property PACKAGE_PIN L5 [get_ports rgmii_sw0_txc]
#set_property PACKAGE_PIN T7 [get_ports {rgmii_sw0_td[0]}]
#set_property PACKAGE_PIN R7 [get_ports {rgmii_sw0_td[1]}]
#set_property PACKAGE_PIN J5 [get_ports {rgmii_sw0_td[2]}]
#set_property PACKAGE_PIN J4 [get_ports {rgmii_sw0_td[3]}]
#set_property PACKAGE_PIN M8 [get_ports rgmii_sw0_tx_ctl]
#set_property PACKAGE_PIN L8 [get_ports rgmii_sw0_rxc]
#set_property PACKAGE_PIN K3 [get_ports {rgmii_sw0_rd[0]}]
#set_property PACKAGE_PIN K4 [get_ports {rgmii_sw0_rd[1]}]
#set_property PACKAGE_PIN H3 [get_ports {rgmii_sw0_rd[2]}]
#set_property PACKAGE_PIN H4 [get_ports {rgmii_sw0_rd[3]}]
#set_property PACKAGE_PIN J1 [get_ports rgmii_sw0_rx_ctl]

#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw0_txc]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw0_td[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw0_td[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw0_td[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw0_td[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw0_tx_ctl]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw0_rxc]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw0_rd[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw0_rd[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw0_rd[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw0_rd[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw0_rx_ctl]

#SGMII
# sgmii_sw0 -> gth_2(5072-1)
#set_property PACKAGE_PIN R4 [get_ports sgmii_sw0_txp]
#set_property PACKAGE_PIN R3 [get_ports sgmii_sw0_txn]
#set_property PACKAGE_PIN T2 [get_ports sgmii_sw0_rxp]
#set_property PACKAGE_PIN T1 [get_ports sgmii_sw0_rxn]

# sgmii_sw0 -> gth_1(5072-2)
#set_property PACKAGE_PIN U4 [get_ports sgmii_sw0_txp]
#set_property PACKAGE_PIN U3 [get_ports sgmii_sw0_txn]
#set_property PACKAGE_PIN V2 [get_ports sgmii_sw0_rxp]
#set_property PACKAGE_PIN V1 [get_ports sgmii_sw0_rxn]


#mdio -> sw0(6113)
set_property PACKAGE_PIN K9 [get_ports mdio_sw0_mdc]
set_property PACKAGE_PIN J9 [get_ports mdio_sw0_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_sw0_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_sw0_mdio_io]

#############################################################
#  PL MAC_SW1 RGMII
#       Bank: 66
#       PINs: 12
#  PL MAC_SW1 SGMII
#       Bank: 224
#       PINs: 4
#  PL MII_MPC1 MDIO
#       Bank: 66
#       PINs: 3
#  IP Core: Xilinx AXI 1G/2.5G Ethernet Subsystem V7.1
#############################################################

##RGMII
#set_property PACKAGE_PIN E2 [get_ports rgmii_sw1_txc]
#set_property PACKAGE_PIN G1 [get_ports {rgmii_sw1_td[0]}]
#set_property PACKAGE_PIN F1 [get_ports {rgmii_sw1_td[1]}]
#set_property PACKAGE_PIN G5 [get_ports {rgmii_sw1_td[2]}]
#set_property PACKAGE_PIN F5 [get_ports {rgmii_sw1_td[3]}]
#set_property PACKAGE_PIN G8 [get_ports rgmii_sw1_tx_ctl]
#set_property PACKAGE_PIN F7 [get_ports rgmii_sw1_rxc]
#set_property PACKAGE_PIN G6 [get_ports {rgmii_sw1_rd[0]}]
#set_property PACKAGE_PIN F6 [get_ports {rgmii_sw1_rd[1]}]
#set_property PACKAGE_PIN G3 [get_ports {rgmii_sw1_rd[2]}]
#set_property PACKAGE_PIN F3 [get_ports {rgmii_sw1_rd[3]}]
#set_property PACKAGE_PIN E3 [get_ports rgmii_sw1_rx_ctl]

#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw1_txc]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw1_td[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw1_td[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw1_td[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw1_td[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw1_tx_ctl]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw1_rxc]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw1_rd[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw1_rd[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw1_rd[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw1_rd[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw1_rx_ctl]

#SGMII
# sgmii_sw1 -> gth_1 (5072-2)
#set_property PACKAGE_PIN U4 [get_ports sgmii_sw1_txp]
#set_property PACKAGE_PIN U3 [get_ports sgmii_sw1_txn]
#set_property PACKAGE_PIN V2 [get_ports sgmii_sw1_rxp]
#set_property PACKAGE_PIN V1 [get_ports sgmii_sw1_rxn]

# sgmii_sw1 -> gth_2 (5072-1)
#set_property PACKAGE_PIN T2 [get_ports sgmii_sw1_rxp]
#set_property PACKAGE_PIN T1 [get_ports sgmii_sw1_rxn]
#set_property PACKAGE_PIN R4 [get_ports sgmii_sw1_txp]
#set_property PACKAGE_PIN R3 [get_ports sgmii_sw1_txn]


#mdio to sw1(5072-2)
set_property PACKAGE_PIN L3 [get_ports mdio_sw1_mdc]
set_property PACKAGE_PIN L2 [get_ports mdio_sw1_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_sw1_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_sw1_mdio_io]


#############################################################
#  PL MAC_SW2 RGMII
#       Bank: 66
#       PINs: 12
#  PL MAC_SW2 SGMII
#       Bank: 224
#       PINs: 4
#  PL MII_MPC1 MDIO
#       Bank: 66
#       PINs: 3
#  IP Core: Xilinx AXI 1G/2.5G Ethernet Subsystem V7.1
#############################################################

##RGMII
#set_property PACKAGE_PIN C4 [get_ports rgmii_sw2_txc]
#set_property PACKAGE_PIN C3 [get_ports {rgmii_sw2_td[0]}]
#set_property PACKAGE_PIN C2 [get_ports {rgmii_sw2_td[1]}]
#set_property PACKAGE_PIN C6 [get_ports {rgmii_sw2_td[2]}]
#set_property PACKAGE_PIN B6 [get_ports {rgmii_sw2_td[3]}]
#set_property PACKAGE_PIN C1 [get_ports rgmii_sw2_tx_ctl]
#set_property PACKAGE_PIN B1 [get_ports rgmii_sw2_rxc]
#set_property PACKAGE_PIN D6 [get_ports {rgmii_sw2_rd[0]}]
#set_property PACKAGE_PIN D7 [get_ports {rgmii_sw2_rd[1]}]
#set_property PACKAGE_PIN A1 [get_ports {rgmii_sw2_rd[2]}]
#set_property PACKAGE_PIN A2 [get_ports {rgmii_sw2_rd[3]}]
#set_property PACKAGE_PIN B4 [get_ports rgmii_sw2_rx_ctl]

#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw2_txc]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw2_td[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw2_td[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw2_td[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw2_td[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw2_tx_ctl]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw2_rxc]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw2_rd[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw2_rd[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw2_rd[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_sw2_rd[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports rgmii_sw2_rx_ctl]

#SGMII
# sgmii_sw2 -> gth_0
#set_property PACKAGE_PIN V2 [get_ports sgmii_sw0_rxp]
#set_property PACKAGE_PIN V1 [get_ports sgmii_sw0_rxn]
#set_property PACKAGE_PIN U4 [get_ports sgmii_sw0_txp]
#set_property PACKAGE_PIN U3 [get_ports sgmii_sw0_txn]


#mdio to sw2(5072-1)
set_property PACKAGE_PIN H8 [get_ports mdio_sw2_mdc]
set_property PACKAGE_PIN H9 [get_ports mdio_sw2_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_sw2_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_sw2_mdio_io]


# Constraints suggested by AR#65947 http://www.xilinx.com/support/answers/65947.html

### BUFG on 200 MHz input clock
##set_property CLOCK_REGION X3Y2 [get_cells *_i/clk_wiz_0/inst/clkout2_buf]
### BUFG on GTX Clock
### Commented below because I removed the BUFG from clk_wiz_0 output 1 (in effort to save BUFG)
###set_property CLOCK_REGION X3Y3      [get_cells *_i/clk_wiz_0/inst/clkout1_buf]
### BUFG on RX Clock input
##set_property CLOCK_REGION X3Y2 [get_cells *_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/bufg_rgmii_rx_clk]
##set_property CLOCK_REGION X3Y2 [get_cells *_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/bufg_rgmii_rx_clk_iddr]

##set_property CLOCK_REGION X3Y2 [get_cells *_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/bufg_rgmii_rx_clk]
##set_property CLOCK_REGION X3Y2 [get_cells *_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/bufg_rgmii_rx_clk_iddr]

##set_property CLOCK_REGION X3Y3 [get_cells *_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/bufg_rgmii_rx_clk]
##set_property CLOCK_REGION X3Y3 [get_cells *_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/bufg_rgmii_rx_clk_iddr]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/axi_ethernet_0/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rgmii_rxc_ibuf_i/O]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/axi_ethernet_1/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rgmii_rxc_ibuf_i/O]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rgmii_rxc_ibuf_i/O]

## Clock definitions
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/rgmii_rxc_ibuf_i/O]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/rgmii_rxc_ibuf_i/O]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/axi_ethernet_2/inst/mac/inst/rgmii_interface/rgmii_rxc_ibuf_i/O]

## BITSLICE0 not available during BISC - The port rgmii_port_1_rxc is assigned to a PACKAGE_PIN that uses BITSLICE_1 of
## a Byte that will be using calibration. The signal connected to rgmii_port_1_rxc will not be available during calibration
## and will only be available after RDY asserts. If this condition is not acceptable for your design and board layout,
## rgmii_port_1_rxc will have to be moved to another PACKAGE_PIN that is not undergoing calibration or be moved to a
## PACKAGE_PIN location that is not BITSLICE_0 or BITSLICE_6 on that same Byte. If this condition is acceptable for your
## design and board layout, this DRC can be bypassed by acknowledging the condition and setting the following XDC constraint:

#set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports rgmii_sw0_rxc]
#set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports rgmii_sw1_rxc]
#set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports rgmii_sw2_rxc]


## Specify the BUFGCE to use for RGMII RX clocks (Vivado itself doesn't choose the best ones and timing fails)
#set_property LOC BUFGCE_X0Y67 [get_cells *_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/bufg_rgmii_rx_clk_iddr]
#set_property LOC BUFGCE_X0Y66 [get_cells *_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/bufg_rgmii_rx_clk]
#set_property LOC BUFGCE_X0Y65 [get_cells *_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/bufg_rgmii_rx_clk_iddr]
#set_property LOC BUFGCE_X0Y64 [get_cells *_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/bufg_rgmii_rx_clk]
#set_property LOC BUFGCE_X0Y95 [get_cells *_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/bufg_rgmii_rx_clk_iddr]
#set_property LOC BUFGCE_X0Y94 [get_cells *_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/bufg_rgmii_rx_clk]


## Adjustment to the IDELAYs to make the timing pass
#set_property DELAY_VALUE 1000 [get_cells *_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/delay_rgmii_rx_ctl]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/rxdata_bus[0].delay_rgmii_rxd}]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/rxdata_bus[1].delay_rgmii_rxd}]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/rxdata_bus[2].delay_rgmii_rxd}]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_0/inst/mac/inst/rgmii_interface/rxdata_bus[3].delay_rgmii_rxd}]

#set_property DELAY_VALUE 1000 [get_cells *_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/delay_rgmii_rx_ctl]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/rxdata_bus[0].delay_rgmii_rxd}]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/rxdata_bus[1].delay_rgmii_rxd}]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/rxdata_bus[2].delay_rgmii_rxd}]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_1/inst/mac/inst/rgmii_interface/rxdata_bus[3].delay_rgmii_rxd}]

#set_property DELAY_VALUE 1000 [get_cells *_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/delay_rgmii_rx_ctl]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[0].delay_rgmii_rxd}]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[1].delay_rgmii_rxd}]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[2].delay_rgmii_rxd}]
#set_property DELAY_VALUE 1000 [get_cells {*_i/axi_ethernet_2/inst/mac/inst/tri_mode_ethernet_mac_i/rgmii_interface/rxdata_bus[3].delay_rgmii_rxd}]

################################## End of PL_SW0/1/2 ###############################

#############################################################
#  LIN ports: 12
#       Bank: 65
#       PINs: 24
#    IP Core: CHIPDLIN_v1.02
#############################################################
# axi_lin_0
set_property PACKAGE_PIN U9 [get_ports lin_rx_0]
set_property PACKAGE_PIN V9 [get_ports lin_tx_0]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_0]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_0]
set_property PULLUP true [get_ports lin_rx_0]

# axi_lin_1
set_property PACKAGE_PIN K7 [get_ports lin_rx_1]
set_property PACKAGE_PIN K8 [get_ports lin_tx_1]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_1]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_1]
set_property PULLUP true [get_ports lin_rx_1]

# axi_lin_2
set_property PACKAGE_PIN R8 [get_ports lin_rx_2]
set_property PACKAGE_PIN T8 [get_ports lin_tx_2]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_2]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_2]
set_property PULLUP true [get_ports lin_rx_2]

# axi_lin_3
set_property PACKAGE_PIN H6 [get_ports lin_rx_3]
set_property PACKAGE_PIN J6 [get_ports lin_tx_3]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_3]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_3]
set_property PULLUP true [get_ports lin_rx_3]

# axi_lin_4
set_property PACKAGE_PIN W8 [get_ports lin_rx_4]
set_property PACKAGE_PIN Y8 [get_ports lin_tx_4]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_4]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_4]
set_property PULLUP true [get_ports lin_rx_4]

# axi_lin_5
set_property PACKAGE_PIN R6 [get_ports lin_rx_5]
set_property PACKAGE_PIN T6 [get_ports lin_tx_5]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_5]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_5]
set_property PULLUP true [get_ports lin_rx_5]

# axi_lin_6
set_property PACKAGE_PIN K1 [get_ports lin_rx_6]
set_property PACKAGE_PIN L1 [get_ports lin_tx_6]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_6]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_6]
set_property PULLUP true [get_ports lin_rx_6]

# axi_lin_7
set_property PACKAGE_PIN N8 [get_ports lin_rx_7]
set_property PACKAGE_PIN N9 [get_ports lin_tx_7]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_7]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_7]
set_property PULLUP true [get_ports lin_rx_7]

# axi_lin_8
set_property PACKAGE_PIN N6 [get_ports lin_rx_8]
set_property PACKAGE_PIN N7 [get_ports lin_tx_8]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_8]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_8] 
set_property PULLUP true [get_ports lin_rx_8]

# axi_lin_9
set_property PACKAGE_PIN J2 [get_ports lin_rx_9]
set_property PACKAGE_PIN K2 [get_ports lin_tx_9]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_9]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_9]
set_property PULLUP true [get_ports lin_rx_9]

# axi_lin_10
set_property PACKAGE_PIN P6 [get_ports lin_rx_10]
set_property PACKAGE_PIN P7 [get_ports lin_tx_10]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_10]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_10]
set_property PULLUP true [get_ports lin_rx_10]

# axi_lin_11
set_property PACKAGE_PIN U8 [get_ports lin_rx_11]
set_property PACKAGE_PIN V8 [get_ports lin_tx_11]

set_property IOSTANDARD LVCMOS18 [get_ports lin_rx_11]
set_property IOSTANDARD LVCMOS18 [get_ports lin_tx_11] 
set_property PULLUP true [get_ports lin_rx_11]

#############################################################
#  UART ports: 8
#       Bank: 65, 66
#       PINs: 16
#    IP Core: AXI UART 16550 (2.0)
#############################################################

#UART0
set_property PACKAGE_PIN M8 [get_ports uart_tx_0]
set_property PACKAGE_PIN L8 [get_ports uart_rx_0]

set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_0]
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_0]

#UART1
#set_property PACKAGE_PIN R7 [get_ports uart_tx_1]
#set_property PACKAGE_PIN T7 [get_ports uart_rx_1]

set_property PACKAGE_PIN T7 [get_ports uart_tx_1]
set_property PACKAGE_PIN R7 [get_ports uart_rx_1]

set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_1]
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_1]

#UART2
set_property PACKAGE_PIN M6 [get_ports uart_tx_2]
set_property PACKAGE_PIN L5 [get_ports uart_rx_2]

set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_2]
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_2]
#UART3
set_property PACKAGE_PIN J5 [get_ports uart_tx_3]
set_property PACKAGE_PIN J4 [get_ports uart_rx_3]

set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_3]
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_3]

#UART4
set_property PACKAGE_PIN K3 [get_ports uart_tx_4]
set_property PACKAGE_PIN K4 [get_ports uart_rx_4]

set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_4]
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_4]

#UART5
set_property PACKAGE_PIN J1 [get_ports uart_tx_5]
set_property PACKAGE_PIN H1 [get_ports uart_rx_5]

set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_5]
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_5]
#UART6
set_property PACKAGE_PIN H3 [get_ports uart_tx_6]
set_property PACKAGE_PIN H4 [get_ports uart_rx_6]

set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_6]
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_6]

#UART7
set_property PACKAGE_PIN F2 [get_ports uart_tx_7]
set_property PACKAGE_PIN D4 [get_ports uart_rx_7]

set_property IOSTANDARD LVCMOS18 [get_ports uart_tx_7]
set_property IOSTANDARD LVCMOS18 [get_ports uart_rx_7]

########################### CARD1 ############################
##############
##   MPC0    #
##############
##############################################################
##  UART2MPC0 port: 1
##       Bank: 44
##       PINs: 2
##    IP Core: Xilinx AXI UARTLite
##############################################################
#set_property PACKAGE_PIN AE13 [get_ports uart2mpc0_txd]
#set_property PACKAGE_PIN AF13 [get_ports uart2mpc0_rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports uart2mpc0_txd]
#set_property IOSTANDARD LVCMOS33 [get_ports uart2mpc0_rxd]

#GPIO_OUT_MPC0_Reset
#set_property PACKAGE_PIN AH10 [get_ports GPIO_out_MPC0_Reset]
#set_property PULLUP true [get_ports GPIO_out_MPC0_Reset]

#GPIO_OUT_MPC0_COMM
#set_property PACKAGE_PIN L6 [get_ports GPIO_out_MPC0_COMM]
#set_property PULLUP true [get_ports GPIO_out_MPC0_COMM]

#GPIO_IN_MPC0_COMM
#set_property PACKAGE_PIN L7 [get_ports GPIO_IN_MPC0_COMM]
#set_property PULLUP true [get_ports GPIO_IN_MPC0_COMM]

#set_property IOSTANDARD LVCMOS33 [get_ports GPIO_out_MPC0_Reset]
#set_property IOSTANDARD LVCMOS18 [get_ports GPIO_out_MPC0_COMM]
#set_property IOSTANDARD LVCMOS18 [get_ports GPIO_IN_MPC0_COMM]

##############################################################
##  PL MAC_MPC0 MII
##       Bank: 44
##       PINs: 12
##    IP Core: Xilinx AXI 1G/2.5G Ethernet Subsystem V7.1
##  PL MII_MPC1 MDIO
##       Bank: 44
##       PINs: 3
##############################################################
## MII
#set_property PACKAGE_PIN Y14 [get_ports pl_mpc0_tx_clk]
#set_property PACKAGE_PIN Y13 [get_ports {pl_mpc0_txd[0]}]
#set_property PACKAGE_PIN AA13 [get_ports {pl_mpc0_txd[1]}]
#set_property PACKAGE_PIN AB13 [get_ports {pl_mpc0_txd[2]}]
#set_property PACKAGE_PIN AC14 [get_ports {pl_mpc0_txd[3]}]
#set_property PACKAGE_PIN AC13 [get_ports pl_mpc0_tx_en]
#set_property PACKAGE_PIN AD15 [get_ports pl_mpc0_rx_clk]
#set_property PACKAGE_PIN AD14 [get_ports {pl_mpc0_rxd[0]}]
#set_property PACKAGE_PIN Y12 [get_ports {pl_mpc0_rxd[1]}]
#set_property PACKAGE_PIN AA12 [get_ports {pl_mpc0_rxd[2]}]
#set_property PACKAGE_PIN AG13 [get_ports {pl_mpc0_rxd[3]}]
#set_property PACKAGE_PIN AH13 [get_ports pl_mpc0_rx_dv]
#set_property PULLDOWN true [get_ports pl_mpc0_rx_dv]

#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc0_tx_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc0_txd[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc0_txd[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc0_txd[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc0_txd[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc0_tx_en]
#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc0_rx_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc0_rxd[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc0_rxd[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc0_rxd[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc0_rxd[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc0_rx_dv]

##Reset signal to PHY
#set_property PACKAGE_PIN W14 [get_ports {phy_rst_n_mpc0[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {phy_rst_n_mpc0[0]}]

##mdio
#set_property PACKAGE_PIN AG14 [get_ports mdio_mpc0_mdc]
#set_property PACKAGE_PIN AH14 [get_ports mdio_mpc0_mdio_io]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_mpc0_mdc]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_mpc0_mdio_io]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/axi_ethernet_mpc0/inst/mac/inst/mii_interface/mii_rx_clk_ibuf_i/O]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/axi_ethernet_mpc0/inst/mac/inst/mii_interface/mii_tx_clk_ibuf_i/O]
########################### End of MAC MPC0 ##################

#############################################################
#   CAN port: 12
#       Bank: 43, 44, 46
#       PINs: 24
#    IP Core: CANFD 3.0
#############################################################

#CAN0
set_property PACKAGE_PIN AF11 [get_ports card1_can_tx_0]
set_property PACKAGE_PIN AG11 [get_ports card1_can_rx_0]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_0]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_0]

#CAN1
set_property PACKAGE_PIN AF12 [get_ports card1_can_tx_1]
set_property PACKAGE_PIN AE12 [get_ports card1_can_rx_1]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_1]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_1]

#CAN2
set_property PACKAGE_PIN AB14 [get_ports card1_can_tx_2]
set_property PACKAGE_PIN AB15 [get_ports card1_can_rx_2]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_2]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_2]

#CAN3
set_property PACKAGE_PIN AE13 [get_ports card1_can_tx_3]
set_property PACKAGE_PIN AF13 [get_ports card1_can_rx_3]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_3]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_3]

#CAN4
set_property PACKAGE_PIN W12 [get_ports card1_can_tx_4]
set_property PACKAGE_PIN W11 [get_ports card1_can_rx_4]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_4]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_4]

#CAN5
set_property PACKAGE_PIN A13 [get_ports card1_can_tx_5]
set_property PACKAGE_PIN B13 [get_ports card1_can_rx_5]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_5]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_5]

#CAN6
set_property PACKAGE_PIN G14 [get_ports card1_can_tx_6]
set_property PACKAGE_PIN G15 [get_ports card1_can_rx_6]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_6]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_6]

#CAN7
set_property PACKAGE_PIN A14 [get_ports card1_can_tx_7]
set_property PACKAGE_PIN B14 [get_ports card1_can_rx_7]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_7]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_7]

#CAN8
set_property PACKAGE_PIN D14 [get_ports card1_can_tx_8]
set_property PACKAGE_PIN D15 [get_ports card1_can_rx_8]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_8]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_8]

#CAN9
set_property PACKAGE_PIN C13 [get_ports card1_can_tx_9]
set_property PACKAGE_PIN C14 [get_ports card1_can_rx_9]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_9]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_9]

#CAN10
set_property PACKAGE_PIN B15 [get_ports card1_can_tx_10]
set_property PACKAGE_PIN A15 [get_ports card1_can_rx_10]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_10]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_10]

#CAN11
set_property PACKAGE_PIN L14 [get_ports card1_can_tx_11]
set_property PACKAGE_PIN L13 [get_ports card1_can_rx_11]

set_property IOSTANDARD LVCMOS33 [get_ports card1_can_tx_11]
set_property IOSTANDARD LVCMOS33 [get_ports card1_can_rx_11]

##############
##GPIO_RESV   #
##############

set_property PACKAGE_PIN D5 [get_ports card1_gpio_resv1_1V8]
set_property PACKAGE_PIN E8 [get_ports card1_gpio_resv2_1V8]

set_property IOSTANDARD LVCMOS18 [get_ports card1_gpio_resv1_1V8]
set_property IOSTANDARD LVCMOS18 [get_ports card1_gpio_resv2_1V8]


########################### End of CARD1 ##################

########################### CARD2 ############################
##############
##   MPC1    #
##############
##############################################################
##  UART2MPC1 port: 1
##       Bank: 43
##       PINs: 2
##    IP Core: Xilinx AXI UARTLite
##############################################################
#set_property PACKAGE_PIN AF13 [get_ports uart2mpc1_txd]
#set_property PACKAGE_PIN AE13 [get_ports uart2mpc1_rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports uart2mpc1_txd]
#set_property IOSTANDARD LVCMOS33 [get_ports uart2mpc1_rxd]

#GPIO_OUT_MPC1_Reset
#set_property PACKAGE_PIN W13 [get_ports GPIO_OUT_MPC1_Reset]
#set_property PULLUP true [get_ports GPIO_OUT_MPC1_Reset]

#GPIO_OUT_MPC1_COMM
#set_property PACKAGE_PIN E4 [get_ports GPIO_OUT_MPC1_COMM]
#set_property PULLUP true [get_ports GPIO_OUT_MPC1_COMM]

#GPIO_IN_MPC1_COMM
#set_property PACKAGE_PIN A4 [get_ports GPIO_IN_MPC1_COMM]
#set_property PULLUP true [get_ports GPIO_IN_MPC1_COMM]

##############################################################
##  PL MAC_MPC1 MII
##       Bank: 43
##       PINs: 12
##    IP Core: Xilinx AXI 1G/2.5G Ethernet Subsystem V7.1
##  PL MII_MPC1 MDIO
##       Bank: 43
##       PINs: 3
##############################################################
## MII
#set_property PACKAGE_PIN AC12 [get_ports pl_mpc1_tx_clk]
#set_property PACKAGE_PIN AD12 [get_ports {pl_mpc1_txd[0]}]
#set_property PACKAGE_PIN AD11 [get_ports {pl_mpc1_txd[1]}]
#set_property PACKAGE_PIN AD10 [get_ports {pl_mpc1_txd[2]}]
#set_property PACKAGE_PIN AC11 [get_ports {pl_mpc1_txd[3]}]
#set_property PACKAGE_PIN AB11 [get_ports pl_mpc1_tx_en]
#set_property PACKAGE_PIN AB9 [get_ports pl_mpc1_rx_clk]
#set_property PACKAGE_PIN AB10 [get_ports {pl_mpc1_rxd[0]}]
#set_property PACKAGE_PIN AA11 [get_ports {pl_mpc1_rxd[1]}]
#set_property PACKAGE_PIN AA10 [get_ports {pl_mpc1_rxd[2]}]
#set_property PACKAGE_PIN Y10 [get_ports {pl_mpc1_rxd[3]}]
#set_property PACKAGE_PIN W10 [get_ports pl_mpc1_rx_dv]
#set_property PULLDOWN true [get_ports pl_mpc1_rx_dv]

#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc1_tx_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc1_txd[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc1_txd[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc1_txd[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc1_txd[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc1_tx_en]
#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc1_rx_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc1_rxd[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc1_rxd[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc1_rxd[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc1_rxd[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc1_rx_dv]

##Reset signal to PHY
#set_property PACKAGE_PIN AG10 [get_ports {phy_rst_n_mpc1[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {phy_rst_n_mpc1[0]}]

##mdio
#set_property PACKAGE_PIN AH12 [get_ports mdio_mpc1_mdc]
#set_property PACKAGE_PIN AH11 [get_ports mdio_mpc1_mdio_io]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_mpc1_mdc]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_mpc1_mdio_io]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/axi_ethernet_mpc1/inst/mac/inst/mii_interface/mii_rx_clk_ibuf_i/O]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/axi_ethernet_mpc1/inst/mac/inst/mii_interface/mii_tx_clk_ibuf_i/O]
######################## End of MAC MPC1 #####################

#############################################################
#   CAN port: 12
#       Bank: 43, 44, 46
#       PINs: 24
#    IP Core: CANFD 3.0
#############################################################
#CAN1
#set_property PACKAGE_PIN AF11 [get_ports card2_can_tx_1]
#set_property PACKAGE_PIN AG11 [get_ports card2_can_rx_1]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_1]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_1]

#CAN2
#set_property PACKAGE_PIN AF12 [get_ports card2_can_tx_2]
#set_property PACKAGE_PIN AE12 [get_ports card2_can_rx_2]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_2]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_2]

#CAN3
#set_property PACKAGE_PIN AB14 [get_ports card2_can_tx_3]
#set_property PACKAGE_PIN AB15 [get_ports card2_can_rx_3]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_3]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_3]

#CAN4
#set_property PACKAGE_PIN AE13 [get_ports card2_can_tx_4]
#set_property PACKAGE_PIN AF13 [get_ports card2_can_rx_4]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_4]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_4]

#CAN5
#set_property PACKAGE_PIN W12 [get_ports card2_can_tx_5]
#set_property PACKAGE_PIN W11 [get_ports card2_can_rx_5]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_5]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_5]

#CAN6
#set_property PACKAGE_PIN A13 [get_ports card2_can_tx_6]
#set_property PACKAGE_PIN B13 [get_ports card2_can_rx_6]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_6]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_6]

#CAN7
#set_property PACKAGE_PIN G14 [get_ports card2_can_tx_7]
#set_property PACKAGE_PIN G15 [get_ports card2_can_rx_7]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_7]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_7]

#CAN8
#set_property PACKAGE_PIN A14 [get_ports card2_can_tx_8]
#set_property PACKAGE_PIN B14 [get_ports card2_can_rx_8]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_8]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_8]

#CAN9
#set_property PACKAGE_PIN D14 [get_ports card2_can_tx_9]
#set_property PACKAGE_PIN D15 [get_ports card2_can_rx_9]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_9]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_9]

#CAN10
#set_property PACKAGE_PIN  C13[get_ports card2_can_tx_10]
#set_property PACKAGE_PIN C14 [get_ports card2_can_rx_10]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_10]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_10]

#CAN11
#set_property PACKAGE_PIN B15 [get_ports card2_can_tx_11]
#set_property PACKAGE_PIN A15 [get_ports card2_can_rx_11]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_11]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_11]

#CAN12
#set_property PACKAGE_PIN L14 [get_ports card2_can_tx_12]
#set_property PACKAGE_PIN L13 [get_ports card2_can_rx_12]

#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_tx_12]
#set_property IOSTANDARD LVCMOS33 [get_ports card2_can_rx_12]

##############
##GPIO_RESV   #
##############

#set_property PACKAGE_PIN J7 [get_ports card2_gpio_resv1_1V8]
#set_property PACKAGE_PIN H7 [get_ports card2_gpio_resv2_1V8]

#set_property IOSTANDARD LVCMOS18 [get_ports card2_gpio_resv1_1V8]
#set_property IOSTANDARD LVCMOS18 [get_ports card2_gpio_resv2_1V8]

########################### END of CARD2 ############################


########################### CARD3 ############################
##############
##   MPC2    #
##############
##############################################################
##  UART2MPC2 port: 1
##       Bank: 46
##       PINs: 2
##    IP Core: Xilinx AXI UARTLite
##############################################################
#set_property PACKAGE_PIN C13 [get_ports uart2mpc2_txd]
#set_property PACKAGE_PIN C14 [get_ports uart2mpc2_rxd]
#set_property IOSTANDARD LVCMOS33 [get_ports uart2mpc2_txd]
#set_property IOSTANDARD LVCMOS33 [get_ports uart2mpc2_rxd]

##############################################################
##  PL MAC_MPC2 MII
##       Bank: 46
##       PINs: 12
##    IP Core: Xilinx AXI 1G/2.5G Ethernet Subsystem V7.1
##  PL MII_MPC1 MDIO
##       Bank: 46
##       PINs: 3
##############################################################
## MII
#set_property PACKAGE_PIN H13 [get_ports pl_mpc2_tx_clk]
#set_property PACKAGE_PIN H14 [get_ports {pl_mpc2_txd[0]}]
#set_property PACKAGE_PIN E13 [get_ports {pl_mpc2_txd[1]}]
#set_property PACKAGE_PIN E14 [get_ports {pl_mpc2_txd[2]}]
#set_property PACKAGE_PIN F13 [get_ports {pl_mpc2_txd[3]}]
#set_property PACKAGE_PIN G13 [get_ports pl_mpc2_tx_en]
#set_property PACKAGE_PIN A13 [get_ports pl_mpc2_rx_clk]
#set_property PACKAGE_PIN B13 [get_ports {pl_mpc2_rxd[0]}]
#set_property PACKAGE_PIN G14 [get_ports {pl_mpc2_rxd[1]}]
#set_property PACKAGE_PIN G15 [get_ports {pl_mpc2_rxd[2]}]
#set_property PACKAGE_PIN A14 [get_ports {pl_mpc2_rxd[3]}]
#set_property PACKAGE_PIN B14 [get_ports pl_mpc2_rx_dv]
#set_property PULLDOWN true [get_ports pl_mpc2_rx_dv]

#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc2_tx_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc2_txd[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc2_txd[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc2_txd[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc2_txd[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc2_tx_en]
#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc2_rx_clk]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc2_rxd[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc2_rxd[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc2_rxd[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {pl_mpc2_rxd[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports pl_mpc2_rx_dv]

##Reset signal to PHY
#set_property PACKAGE_PIN D14 [get_ports {phy_rst_n_mpc2[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {phy_rst_n_mpc2[0]}]

##mdio
#set_property PACKAGE_PIN K14 [get_ports mdio_mpc2_mdc]
#set_property PACKAGE_PIN J14 [get_ports mdio_mpc2_mdio_io]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_mpc2_mdc]
#set_property IOSTANDARD LVCMOS33 [get_ports mdio_mpc2_mdio_io]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/axi_ethernet_mpc2/inst/mac/inst/mii_interface/mii_rx_clk_ibuf_i/O]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets *_i/axi_ethernet_mpc2/inst/mac/inst/mii_interface/mii_tx_clk_ibuf_i/O]
######################## End of MAC MPC2 #####################


