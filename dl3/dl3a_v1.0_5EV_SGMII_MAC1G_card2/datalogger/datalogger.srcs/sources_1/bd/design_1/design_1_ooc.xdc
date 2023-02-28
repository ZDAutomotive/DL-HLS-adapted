################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name ps_enet0_rxc -period 10 [get_ports ps_enet0_rxc]
create_clock -name ps_enet1_rxc -period 10 [get_ports ps_enet1_rxc]
create_clock -name ps_enet2_rxc -period 10 [get_ports ps_enet2_rxc]
create_clock -name mgt_clk_sw0_clk_p -period 8 [get_ports mgt_clk_sw0_clk_p]

################################################################################