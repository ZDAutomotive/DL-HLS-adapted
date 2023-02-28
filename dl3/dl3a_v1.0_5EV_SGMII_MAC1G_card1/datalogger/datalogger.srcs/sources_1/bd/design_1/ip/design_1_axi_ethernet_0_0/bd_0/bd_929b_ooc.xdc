################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name s_axi_lite_clk -period 10 [get_ports s_axi_lite_clk]
create_clock -name axis_clk -period 10 [get_ports axis_clk]
create_clock -name ref_clk -period 20 [get_ports ref_clk]
create_clock -name mgt_clk_clk_p -period 8 [get_ports mgt_clk_clk_p]

################################################################################