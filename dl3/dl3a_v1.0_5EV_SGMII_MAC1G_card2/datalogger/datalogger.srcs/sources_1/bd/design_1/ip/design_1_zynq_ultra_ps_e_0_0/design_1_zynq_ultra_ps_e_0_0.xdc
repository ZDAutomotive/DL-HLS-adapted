##############################PS XDC#########################################
############################################################################
##
##  Xilinx, Inc. 2006            www.xilinx.com
############################################################################
##  File name :       psu_constraints.xdc
##
##  Details :     Constraints file
##                    FPGA family:       zynq
##                    FPGA:              PROD-2
##                    Device Size:       xczu5ev
##                    Package:           sfvc784
##                    Speedgrade:        -2
##
##
############################################################################
############################################################################
############################################################################
# Clock constraints                                                        #
############################################################################
create_clock -name clk_pl_0 -period "10" [get_pins "PS8_i/PLCLK[0]"]
create_clock -name clk_pl_1 -period "10" [get_pins "PS8_i/PLCLK[1]"]
create_clock -name mdio0_mdc_clock -period "480" [get_pins "PS8_i/EMIOENET0MDIOMDC"]
create_clock -name mdio1_mdc_clock -period "480" [get_pins "PS8_i/EMIOENET1MDIOMDC"]
create_clock -name mdio2_mdc_clock -period "480" [get_pins "PS8_i/EMIOENET2MDIOMDC"]



set_property DONT_TOUCH true [get_cells "PS8_i"]
