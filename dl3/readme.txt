FPGA Project:

dl3_3eg_ps.tcl: MYIR 3EG board PS configuration
dl3_5ev_ps.tcl: ALINX 5EV(Datalogger3) PS configuration, migrate from MYIR 3EG

alinx_5ev.tcl: ALINX 5EV board PS configuration (from factory)

======================================================================================

dl3_v1.0_3EG_MAC_4GE		- datalogger3_3EG, 3xAXI_MAC+1xGMII2RGMII(change bank), ok


dl3_v1.0_5EV_SGMII     		- datalogger3_5EV, 3xAXI_MAC_SGMII+3xGMII2RGMII, ok
                                  ps_enet0 bank66, ps_enet1/2 bank66
                                  2xMPC, 8xCAN, 24xLIN
======================================================================================

dl3_v1.0_5EV_SGMII_3MPC  	- datalogger3_5EV, 3xAXI_MAC_SGMII+3xGMII2RGMII, ok
                                  ps_enet0 bank66, ps_enet1/2 bank66
                                  3xMPC, 8xCAN, 8xLIN

dl3_v1.0_5EV_SGMII_2FPGA  	- datalogger3_5EV, 3xAXI_MAC_SGMII+3xGMII2RGMII, ok
                                  ps_enet0 bank66, ps_enet1/2 bank66
                                  16xCAN, 8xLIN, 8xUART


dl3_v1.0_3EG_GMII2RGMII_2FPGA  	- datalogger3_3EG,3xGMII2RGMII,
                                  ps_enet0 bank66, ps_enet1/2 bank66
                                  16xCAN, 8xLIN, 8xUART, 2xUART_LITE
                                  for MYIR board test


======================================================================================
dl3a_v1.0_3EG		  	- datalogger3_3EG,3xGMII2RGMII,
                                  ps_enet0 bank66, ps_enet1/2 bank66
                                  2xUART_LITE  
                                  3xAXI_MAC_MII                       (mdio)
                                  2xCAN, 2xLIN, 8xUART                (fpga test)

dl3a_v1.0_5EV_MII               - datalogger_5EV,3xGMII2RGMII,	
                                  2xUART_LITE  
                                  3xAXI_MAC_MII                       (mdio)
                                  2xCAN, 2xLIN, 8xUART                (fpga test)


dl3a_v1.0_5EV_SGMII_16CAN  	- datalogger3_5EV, 3xGMII2RGMII
                                  ps_enet0 bank66, ps_enet1/2 bank66
                                  2xUART_LITE
                                  3xAXI_MAC_SGMII
                                  16xCAN, 8xLIN, 8xUART  

======================================================================================
dl3a_v1.0_5EV_SGMII_MAC1G_card1                 		-3 MAC logger with 30 ports number possibility inside
                                                                one fifo for ethernet receive, one fifo for ethernet transmit
								slave MAC CRC fixed; MAC0 is master							
							        accessing ddr with 64bit bus
								pinned on card1
								uart1 tx and rx pin exchanged
								can in order

dl3a_v1.0_5EV_SGMII_MAC1G_card2                 		-3 MAC logger with 30 ports number possibility inside
                                                                one fifo for ethernet receive, one fifo for ethernet transmit
								slave MAC CRC fixed; MAC0 is master							
							        accessing ddr with 64bit bus
								pinned on card2
								can4 tx and rx pin exchanged

dl3a_v1.0_5EV_SGMII_MAC1G_mac0slave				-3 MAC logger with 30 ports number possibility inside
                                                                one fifo for ethernet receive, one fifo for ethernet transmit
								slave MAC CRC fixed; MAC1 is master							
							        accessing ddr with 64bit bus

dl3a_v1.0_5EV_SGMII_MAC1G_writeDDRtest_onlyMAC2			-only MAC2 exists.			

dl3a_v1.0_5EV_SGMII_MAC1G_32bit                			-3 MAC logger with 30 ports number possibility inside
                                                                one fifo for ethernet receive, one fifo for ethernet transmit
							        pin already allocated
							        accessing ddr with 32bit bus





