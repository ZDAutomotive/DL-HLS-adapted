
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu5ev-sfvc784-2-i
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set GPIO [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO ]

  set mdio_ps_enet0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_ps_enet0 ]

  set mdio_ps_enet1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_ps_enet1 ]

  set mdio_ps_enet2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_ps_enet2 ]

  set mdio_sw0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_sw0 ]

  set mdio_sw1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_sw1 ]

  set mdio_sw2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_sw2 ]

  set mgt_clk_sw0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 mgt_clk_sw0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $mgt_clk_sw0

  set ps_enet0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 ps_enet0 ]

  set ps_enet1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 ps_enet1 ]

  set ps_enet2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 ps_enet2 ]

  set sgmii_sw0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sgmii_rtl:1.0 sgmii_sw0 ]

  set sgmii_sw1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sgmii_rtl:1.0 sgmii_sw1 ]

  set sgmii_sw2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sgmii_rtl:1.0 sgmii_sw2 ]


  # Create ports
  set card1_can_rx_0 [ create_bd_port -dir I -type data card1_can_rx_0 ]
  set card1_can_rx_1 [ create_bd_port -dir I -type data card1_can_rx_1 ]
  set card1_can_rx_2 [ create_bd_port -dir I -type data card1_can_rx_2 ]
  set card1_can_rx_3 [ create_bd_port -dir I -type data card1_can_rx_3 ]
  set card1_can_rx_4 [ create_bd_port -dir I -type data card1_can_rx_4 ]
  set card1_can_rx_5 [ create_bd_port -dir I -type data card1_can_rx_5 ]
  set card1_can_rx_6 [ create_bd_port -dir I -type data card1_can_rx_6 ]
  set card1_can_rx_7 [ create_bd_port -dir I -type data card1_can_rx_7 ]
  set card1_can_rx_8 [ create_bd_port -dir I -type data card1_can_rx_8 ]
  set card1_can_rx_9 [ create_bd_port -dir I -type data card1_can_rx_9 ]
  set card1_can_rx_10 [ create_bd_port -dir I -type data card1_can_rx_10 ]
  set card1_can_rx_11 [ create_bd_port -dir I -type data card1_can_rx_11 ]
  set card1_can_tx_0 [ create_bd_port -dir O -type data card1_can_tx_0 ]
  set card1_can_tx_1 [ create_bd_port -dir O -type data card1_can_tx_1 ]
  set card1_can_tx_2 [ create_bd_port -dir O -type data card1_can_tx_2 ]
  set card1_can_tx_3 [ create_bd_port -dir O -type data card1_can_tx_3 ]
  set card1_can_tx_4 [ create_bd_port -dir O -type data card1_can_tx_4 ]
  set card1_can_tx_5 [ create_bd_port -dir O -type data card1_can_tx_5 ]
  set card1_can_tx_6 [ create_bd_port -dir O -type data card1_can_tx_6 ]
  set card1_can_tx_7 [ create_bd_port -dir O -type data card1_can_tx_7 ]
  set card1_can_tx_8 [ create_bd_port -dir O -type data card1_can_tx_8 ]
  set card1_can_tx_9 [ create_bd_port -dir O -type data card1_can_tx_9 ]
  set card1_can_tx_10 [ create_bd_port -dir O -type data card1_can_tx_10 ]
  set card1_can_tx_11 [ create_bd_port -dir O -type data card1_can_tx_11 ]
  set lin_rx_0 [ create_bd_port -dir I -type data lin_rx_0 ]
  set lin_rx_1 [ create_bd_port -dir I -type data lin_rx_1 ]
  set lin_rx_2 [ create_bd_port -dir I -type data lin_rx_2 ]
  set lin_rx_3 [ create_bd_port -dir I -type data lin_rx_3 ]
  set lin_rx_4 [ create_bd_port -dir I -type data lin_rx_4 ]
  set lin_rx_5 [ create_bd_port -dir I -type data lin_rx_5 ]
  set lin_rx_6 [ create_bd_port -dir I -type data lin_rx_6 ]
  set lin_rx_7 [ create_bd_port -dir I -type data lin_rx_7 ]
  set lin_rx_8 [ create_bd_port -dir I -type data lin_rx_8 ]
  set lin_rx_9 [ create_bd_port -dir I lin_rx_9 ]
  set lin_rx_10 [ create_bd_port -dir I -type data lin_rx_10 ]
  set lin_rx_11 [ create_bd_port -dir I -type data lin_rx_11 ]
  set lin_tx_0 [ create_bd_port -dir O -type data lin_tx_0 ]
  set lin_tx_1 [ create_bd_port -dir O -type data lin_tx_1 ]
  set lin_tx_2 [ create_bd_port -dir O -type data lin_tx_2 ]
  set lin_tx_3 [ create_bd_port -dir O -type data lin_tx_3 ]
  set lin_tx_4 [ create_bd_port -dir O -type data lin_tx_4 ]
  set lin_tx_5 [ create_bd_port -dir O -type data lin_tx_5 ]
  set lin_tx_6 [ create_bd_port -dir O -type data lin_tx_6 ]
  set lin_tx_7 [ create_bd_port -dir O -type data lin_tx_7 ]
  set lin_tx_8 [ create_bd_port -dir O -type data lin_tx_8 ]
  set lin_tx_9 [ create_bd_port -dir O -type data lin_tx_9 ]
  set lin_tx_10 [ create_bd_port -dir O -type data lin_tx_10 ]
  set lin_tx_11 [ create_bd_port -dir O -type data lin_tx_11 ]
  set uart_rx_0 [ create_bd_port -dir I -type data uart_rx_0 ]
  set uart_rx_1 [ create_bd_port -dir I -type data uart_rx_1 ]
  set uart_rx_2 [ create_bd_port -dir I -type data uart_rx_2 ]
  set uart_rx_3 [ create_bd_port -dir I -type data uart_rx_3 ]
  set uart_rx_4 [ create_bd_port -dir I -type data uart_rx_4 ]
  set uart_rx_5 [ create_bd_port -dir I -type data uart_rx_5 ]
  set uart_rx_6 [ create_bd_port -dir I -type data uart_rx_6 ]
  set uart_rx_7 [ create_bd_port -dir I -type data uart_rx_7 ]
  set uart_tx_0 [ create_bd_port -dir O -type data uart_tx_0 ]
  set uart_tx_1 [ create_bd_port -dir O -type data uart_tx_1 ]
  set uart_tx_2 [ create_bd_port -dir O -type data uart_tx_2 ]
  set uart_tx_3 [ create_bd_port -dir O -type data uart_tx_3 ]
  set uart_tx_4 [ create_bd_port -dir O -type data uart_tx_4 ]
  set uart_tx_5 [ create_bd_port -dir O -type data uart_tx_5 ]
  set uart_tx_6 [ create_bd_port -dir O -type data uart_tx_6 ]
  set uart_tx_7 [ create_bd_port -dir O -type data uart_tx_7 ]

  # Create instance: CHIPDLIN_0, and set properties
  set CHIPDLIN_0 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_0 ]

  # Create instance: CHIPDLIN_1, and set properties
  set CHIPDLIN_1 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_1 ]

  # Create instance: CHIPDLIN_2, and set properties
  set CHIPDLIN_2 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_2 ]

  # Create instance: CHIPDLIN_3, and set properties
  set CHIPDLIN_3 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_3 ]

  # Create instance: CHIPDLIN_4, and set properties
  set CHIPDLIN_4 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_4 ]

  # Create instance: CHIPDLIN_5, and set properties
  set CHIPDLIN_5 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_5 ]

  # Create instance: CHIPDLIN_6, and set properties
  set CHIPDLIN_6 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_6 ]

  # Create instance: CHIPDLIN_7, and set properties
  set CHIPDLIN_7 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_7 ]

  # Create instance: CHIPDLIN_8, and set properties
  set CHIPDLIN_8 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_8 ]

  # Create instance: CHIPDLIN_9, and set properties
  set CHIPDLIN_9 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_9 ]

  # Create instance: CHIPDLIN_10, and set properties
  set CHIPDLIN_10 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_10 ]

  # Create instance: CHIPDLIN_11, and set properties
  set CHIPDLIN_11 [ create_bd_cell -type ip -vlnv user.org:user:CHIPDLIN:1.02 CHIPDLIN_11 ]

  # Create instance: axi_clu_ipcore, and set properties
  set axi_clu_ipcore [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_clu_ipcore ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {2} \
 ] $axi_clu_ipcore

  # Create instance: axi_ethernet_0, and set properties
  set axi_ethernet_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.2 axi_ethernet_0 ]
  set_property -dict [ list \
   CONFIG.ENABLE_LVDS {false} \
   CONFIG.Frame_Filter {false} \
   CONFIG.PHYADDR {16} \
   CONFIG.PHY_TYPE {SGMII} \
   CONFIG.SupportLevel {1} \
   CONFIG.gtlocation {X0Y4} \
   CONFIG.speed_1_2p5 {1G} \
 ] $axi_ethernet_0

  # Create instance: axi_ethernet_1, and set properties
  set axi_ethernet_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.2 axi_ethernet_1 ]
  set_property -dict [ list \
   CONFIG.Frame_Filter {false} \
   CONFIG.PHYADDR {17} \
   CONFIG.PHY_TYPE {SGMII} \
   CONFIG.SupportLevel {0} \
   CONFIG.gtlocation {X0Y5} \
   CONFIG.speed_1_2p5 {1G} \
 ] $axi_ethernet_1

  # Create instance: axi_ethernet_2, and set properties
  set axi_ethernet_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.2 axi_ethernet_2 ]
  set_property -dict [ list \
   CONFIG.Frame_Filter {false} \
   CONFIG.PHYADDR {18} \
   CONFIG.PHY_TYPE {SGMII} \
   CONFIG.SupportLevel {0} \
   CONFIG.gtlocation {X0Y6} \
   CONFIG.speed_1_2p5 {1G} \
 ] $axi_ethernet_2

  # Create instance: axi_ethernet_sw0_fifo, and set properties
  set axi_ethernet_sw0_fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.2 axi_ethernet_sw0_fifo ]
  set_property -dict [ list \
   CONFIG.C_DATA_INTERFACE_TYPE {0} \
   CONFIG.C_HAS_AXIS_TKEEP {true} \
   CONFIG.C_RX_FIFO_DEPTH {2048} \
   CONFIG.C_RX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_RX_FIFO_PF_THRESHOLD {2043} \
   CONFIG.C_TX_FIFO_DEPTH {4096} \
   CONFIG.C_TX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_TX_FIFO_PF_THRESHOLD {4000} \
 ] $axi_ethernet_sw0_fifo

  # Create instance: axi_ethernet_sw0_fifo1, and set properties
  set axi_ethernet_sw0_fifo1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.2 axi_ethernet_sw0_fifo1 ]
  set_property -dict [ list \
   CONFIG.C_DATA_INTERFACE_TYPE {1} \
   CONFIG.C_HAS_AXIS_TKEEP {true} \
   CONFIG.C_RX_FIFO_DEPTH {2048} \
   CONFIG.C_RX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_RX_FIFO_PF_THRESHOLD {2043} \
   CONFIG.C_TX_FIFO_DEPTH {4096} \
   CONFIG.C_TX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_TX_FIFO_PF_THRESHOLD {4000} \
 ] $axi_ethernet_sw0_fifo1

  # Create instance: axi_ethernet_sw1_fifo, and set properties
  set axi_ethernet_sw1_fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.2 axi_ethernet_sw1_fifo ]
  set_property -dict [ list \
   CONFIG.C_DATA_INTERFACE_TYPE {0} \
   CONFIG.C_HAS_AXIS_TKEEP {true} \
   CONFIG.C_RX_FIFO_DEPTH {2048} \
   CONFIG.C_RX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_RX_FIFO_PF_THRESHOLD {2043} \
   CONFIG.C_TX_FIFO_DEPTH {4096} \
   CONFIG.C_TX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_TX_FIFO_PF_THRESHOLD {4000} \
 ] $axi_ethernet_sw1_fifo

  # Create instance: axi_ethernet_sw1_fifo1, and set properties
  set axi_ethernet_sw1_fifo1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.2 axi_ethernet_sw1_fifo1 ]
  set_property -dict [ list \
   CONFIG.C_DATA_INTERFACE_TYPE {1} \
   CONFIG.C_HAS_AXIS_TKEEP {true} \
   CONFIG.C_RX_FIFO_DEPTH {2048} \
   CONFIG.C_RX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_RX_FIFO_PF_THRESHOLD {2043} \
   CONFIG.C_TX_FIFO_DEPTH {4096} \
   CONFIG.C_TX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_TX_FIFO_PF_THRESHOLD {4000} \
 ] $axi_ethernet_sw1_fifo1

  # Create instance: axi_ethernet_sw2_fifo, and set properties
  set axi_ethernet_sw2_fifo [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.2 axi_ethernet_sw2_fifo ]
  set_property -dict [ list \
   CONFIG.C_DATA_INTERFACE_TYPE {0} \
   CONFIG.C_HAS_AXIS_TKEEP {true} \
   CONFIG.C_RX_FIFO_DEPTH {2048} \
   CONFIG.C_RX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_RX_FIFO_PF_THRESHOLD {2043} \
   CONFIG.C_TX_FIFO_DEPTH {4096} \
   CONFIG.C_TX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_TX_FIFO_PF_THRESHOLD {4000} \
 ] $axi_ethernet_sw2_fifo

  # Create instance: axi_ethernet_sw2_fifo1, and set properties
  set axi_ethernet_sw2_fifo1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_fifo_mm_s:4.2 axi_ethernet_sw2_fifo1 ]
  set_property -dict [ list \
   CONFIG.C_DATA_INTERFACE_TYPE {1} \
   CONFIG.C_HAS_AXIS_TKEEP {true} \
   CONFIG.C_RX_FIFO_DEPTH {2048} \
   CONFIG.C_RX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_RX_FIFO_PF_THRESHOLD {2043} \
   CONFIG.C_TX_FIFO_DEPTH {4096} \
   CONFIG.C_TX_FIFO_PE_THRESHOLD {10} \
   CONFIG.C_TX_FIFO_PF_THRESHOLD {4000} \
 ] $axi_ethernet_sw2_fifo1

  # Create instance: axi_uart16550_0, and set properties
  set axi_uart16550_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_0 ]

  # Create instance: axi_uart16550_1, and set properties
  set axi_uart16550_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_1 ]

  # Create instance: axi_uart16550_2, and set properties
  set axi_uart16550_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_2 ]

  # Create instance: axi_uart16550_3, and set properties
  set axi_uart16550_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_3 ]

  # Create instance: axi_uart16550_4, and set properties
  set axi_uart16550_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_4 ]

  # Create instance: axi_uart16550_5, and set properties
  set axi_uart16550_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_5 ]

  # Create instance: axi_uart16550_6, and set properties
  set axi_uart16550_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_6 ]

  # Create instance: axi_uart16550_7, and set properties
  set axi_uart16550_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_7 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]

  # Create instance: axi_uartlite_1, and set properties
  set axi_uartlite_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_1 ]

  # Create instance: axi_xc_canfd_ipcore, and set properties
  set axi_xc_canfd_ipcore [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_xc_canfd_ipcore ]
  set_property -dict [ list \
   CONFIG.NUM_MI {12} \
   CONFIG.NUM_SI {1} \
 ] $axi_xc_canfd_ipcore

  # Create instance: axi_xc_lin_ipcore, and set properties
  set axi_xc_lin_ipcore [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_xc_lin_ipcore ]
  set_property -dict [ list \
   CONFIG.NUM_MI {12} \
   CONFIG.NUM_SI {1} \
 ] $axi_xc_lin_ipcore

  # Create instance: axi_xc_mac0_ipcore, and set properties
  set axi_xc_mac0_ipcore [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_xc_mac0_ipcore ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {2} \
 ] $axi_xc_mac0_ipcore

  # Create instance: axi_xc_mac1_ipcore, and set properties
  set axi_xc_mac1_ipcore [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_xc_mac1_ipcore ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {2} \
 ] $axi_xc_mac1_ipcore

  # Create instance: axi_xc_mac2_ipcore, and set properties
  set axi_xc_mac2_ipcore [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_xc_mac2_ipcore ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
   CONFIG.NUM_SI {2} \
 ] $axi_xc_mac2_ipcore

  # Create instance: axi_xc_ps_clu, and set properties
  set axi_xc_ps_clu [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_xc_ps_clu ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $axi_xc_ps_clu

  # Create instance: axi_xc_ps_mac, and set properties
  set axi_xc_ps_mac [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_xc_ps_mac ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {3} \
 ] $axi_xc_ps_mac

  # Create instance: axi_xc_uart_ipcore, and set properties
  set axi_xc_uart_ipcore [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_xc_uart_ipcore ]
  set_property -dict [ list \
   CONFIG.NUM_MI {8} \
   CONFIG.NUM_SI {1} \
 ] $axi_xc_uart_ipcore

  # Create instance: canfd_0, and set properties
  set canfd_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_0

  # Create instance: canfd_1, and set properties
  set canfd_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_1 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_1

  # Create instance: canfd_2, and set properties
  set canfd_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_2 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_2

  # Create instance: canfd_3, and set properties
  set canfd_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_3 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_3

  # Create instance: canfd_4, and set properties
  set canfd_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_4 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_4

  # Create instance: canfd_5, and set properties
  set canfd_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_5 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_5

  # Create instance: canfd_6, and set properties
  set canfd_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_6 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_6

  # Create instance: canfd_7, and set properties
  set canfd_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_7 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_7

  # Create instance: canfd_8, and set properties
  set canfd_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_8 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_8

  # Create instance: canfd_9, and set properties
  set canfd_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_9 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_9

  # Create instance: canfd_10, and set properties
  set canfd_10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_10 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_10

  # Create instance: canfd_11, and set properties
  set canfd_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:canfd:3.0 canfd_11 ]
  set_property -dict [ list \
   CONFIG.C_EN_APB {0} \
   CONFIG.EN_RX_FIFO_1 {false} \
   CONFIG.NUM_OF_TX_BUF {8} \
 ] $canfd_11

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {92.548} \
   CONFIG.CLKOUT1_PHASE_ERROR {76.967} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {125.000} \
   CONFIG.CLKOUT2_JITTER {76.316} \
   CONFIG.CLKOUT2_PHASE_ERROR {76.967} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {375} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {108.951} \
   CONFIG.CLKOUT3_PHASE_ERROR {76.967} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT4_JITTER {92.548} \
   CONFIG.CLKOUT4_PHASE_ERROR {76.967} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {125} \
   CONFIG.CLKOUT4_USED {true} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {15.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {12.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {4} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {30} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {12} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {4} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_canfd, and set properties
  set clk_wiz_canfd [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_canfd ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_DRIVES {Buffer} \
   CONFIG.CLKOUT1_JITTER {174.629} \
   CONFIG.CLKOUT1_PHASE_ERROR {114.212} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {40} \
   CONFIG.CLKOUT2_DRIVES {Buffer} \
   CONFIG.CLKOUT2_JITTER {151.652} \
   CONFIG.CLKOUT2_PHASE_ERROR {114.212} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {80} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {Buffer} \
   CONFIG.CLKOUT4_DRIVES {Buffer} \
   CONFIG.CLKOUT5_DRIVES {Buffer} \
   CONFIG.CLKOUT6_DRIVES {Buffer} \
   CONFIG.CLKOUT7_DRIVES {Buffer} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {8} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {20} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
   CONFIG.MMCM_COMPENSATION {AUTO} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.PRIMITIVE {PLL} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_canfd

  # Create instance: clu_0, and set properties
  set clu_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:clu:1.0 clu_0 ]
  set_property -dict [ list \
   CONFIG.C_M_AXI_CLU_ADDR_DATA_WIDTH {32} \
   CONFIG.C_M_AXI_CLU_ADDR_ENABLE_ID_PORTS {false} \
   CONFIG.C_M_AXI_PS_DDR_DATA_WIDTH {32} \
   CONFIG.C_M_AXI_PS_DDR_ENABLE_ID_PORTS {false} \
 ] $clu_0

  # Create instance: gmii_to_rgmii_0, and set properties
  set gmii_to_rgmii_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gmii_to_rgmii:4.1 gmii_to_rgmii_0 ]
  set_property -dict [ list \
   CONFIG.C_USE_IDELAY_CTRL {true} \
   CONFIG.SupportLevel {Include_Shared_Logic_in_Core} \
 ] $gmii_to_rgmii_0

  # Create instance: gmii_to_rgmii_1, and set properties
  set gmii_to_rgmii_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gmii_to_rgmii:4.1 gmii_to_rgmii_1 ]
  set_property -dict [ list \
   CONFIG.C_PHYADDR {9} \
   CONFIG.C_USE_IDELAY_CTRL {true} \
 ] $gmii_to_rgmii_1

  # Create instance: gmii_to_rgmii_2, and set properties
  set gmii_to_rgmii_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gmii_to_rgmii:4.1 gmii_to_rgmii_2 ]
  set_property -dict [ list \
   CONFIG.C_PHYADDR {10} \
   CONFIG.C_USE_IDELAY_CTRL {true} \
 ] $gmii_to_rgmii_2

  # Create instance: mac_logger_0, and set properties
  set mac_logger_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:mac_logger:1.0 mac_logger_0 ]
  set_property -dict [ list \
   CONFIG.C_M_AXI_MAC_FIFO_ENABLE_ID_PORTS {false} \
   CONFIG.C_M_AXI_PS_DATA_WIDTH {64} \
   CONFIG.C_M_AXI_PS_ENABLE_ID_PORTS {false} \
 ] $mac_logger_0

  # Create instance: mac_logger_1, and set properties
  set mac_logger_1 [ create_bd_cell -type ip -vlnv xilinx.com:hls:mac_logger:1.0 mac_logger_1 ]
  set_property -dict [ list \
   CONFIG.C_M_AXI_MAC_FIFO_ENABLE_ID_PORTS {false} \
   CONFIG.C_M_AXI_PS_DATA_WIDTH {64} \
   CONFIG.C_M_AXI_PS_ENABLE_ID_PORTS {false} \
 ] $mac_logger_1

  # Create instance: mac_logger_2, and set properties
  set mac_logger_2 [ create_bd_cell -type ip -vlnv xilinx.com:hls:mac_logger:1.0 mac_logger_2 ]
  set_property -dict [ list \
   CONFIG.C_M_AXI_MAC_FIFO_ENABLE_ID_PORTS {false} \
   CONFIG.C_M_AXI_PS_DATA_WIDTH {64} \
   CONFIG.C_M_AXI_PS_ENABLE_ID_PORTS {false} \
 ] $mac_logger_2

  # Create instance: ps8_0_axi_periph, and set properties
  set ps8_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps8_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $ps8_0_axi_periph

  # Create instance: ps8_1_axi_periph, and set properties
  set ps8_1_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps8_1_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {6} \
   CONFIG.NUM_SI {1} \
 ] $ps8_1_axi_periph

  # Create instance: rst_ps8_0_100M, and set properties
  set rst_ps8_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps8_0_100M ]

  # Create instance: rst_sw_mac_100M, and set properties
  set rst_sw_mac_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_sw_mac_100M ]

  # Create instance: sgmii_signal_detect, and set properties
  set sgmii_signal_detect [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 sgmii_signal_detect ]

  # Create instance: sgmii_signal_detect1, and set properties
  set sgmii_signal_detect1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 sgmii_signal_detect1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {b000} \
   CONFIG.CONST_WIDTH {3} \
 ] $sgmii_signal_detect1

  # Create instance: sgmii_signal_detect2, and set properties
  set sgmii_signal_detect2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 sgmii_signal_detect2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $sgmii_signal_detect2

  # Create instance: timestamp_0, and set properties
  set timestamp_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:timestamp:1.0 timestamp_0 ]

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG_GT} \
 ] $util_ds_buf_0

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {BUFG_GT} \
 ] $util_ds_buf_1

  # Create instance: zynq_ultra_ps_e_0, and set properties
  set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.3 zynq_ultra_ps_e_0 ]
  set_property -dict [ list \
   CONFIG.CAN0_BOARD_INTERFACE {custom} \
   CONFIG.CAN1_BOARD_INTERFACE {custom} \
   CONFIG.CSU_BOARD_INTERFACE {custom} \
   CONFIG.DP_BOARD_INTERFACE {custom} \
   CONFIG.GEM0_BOARD_INTERFACE {custom} \
   CONFIG.GEM1_BOARD_INTERFACE {custom} \
   CONFIG.GEM2_BOARD_INTERFACE {custom} \
   CONFIG.GEM3_BOARD_INTERFACE {custom} \
   CONFIG.GPIO_BOARD_INTERFACE {custom} \
   CONFIG.IIC0_BOARD_INTERFACE {custom} \
   CONFIG.IIC1_BOARD_INTERFACE {custom} \
   CONFIG.NAND_BOARD_INTERFACE {custom} \
   CONFIG.PCIE_BOARD_INTERFACE {custom} \
   CONFIG.PJTAG_BOARD_INTERFACE {custom} \
   CONFIG.PMU_BOARD_INTERFACE {custom} \
   CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_3_IO_STANDARD {LVCMOS33} \
   CONFIG.PSU_DDR_RAM_HIGHADDR {0xFFFFFFFF} \
   CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x800000000} \
   CONFIG.PSU_DDR_RAM_LOWADDR_OFFSET {0x80000000} \
   CONFIG.PSU_DYNAMIC_DDR_CONFIG_EN {0} \
   CONFIG.PSU_IMPORT_BOARD_PRESET {} \
   CONFIG.PSU_MIO_0_DIRECTION {out} \
   CONFIG.PSU_MIO_0_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_0_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_0_POLARITY {Default} \
   CONFIG.PSU_MIO_0_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_0_SLEW {fast} \
   CONFIG.PSU_MIO_10_DIRECTION {inout} \
   CONFIG.PSU_MIO_10_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_10_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_10_POLARITY {Default} \
   CONFIG.PSU_MIO_10_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_10_SLEW {fast} \
   CONFIG.PSU_MIO_11_DIRECTION {inout} \
   CONFIG.PSU_MIO_11_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_11_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_11_POLARITY {Default} \
   CONFIG.PSU_MIO_11_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_11_SLEW {fast} \
   CONFIG.PSU_MIO_12_DIRECTION {out} \
   CONFIG.PSU_MIO_12_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_12_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_12_POLARITY {Default} \
   CONFIG.PSU_MIO_12_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_12_SLEW {fast} \
   CONFIG.PSU_MIO_13_DIRECTION {inout} \
   CONFIG.PSU_MIO_13_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_13_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_13_POLARITY {Default} \
   CONFIG.PSU_MIO_13_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_13_SLEW {fast} \
   CONFIG.PSU_MIO_14_DIRECTION {inout} \
   CONFIG.PSU_MIO_14_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_14_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_14_POLARITY {Default} \
   CONFIG.PSU_MIO_14_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_14_SLEW {fast} \
   CONFIG.PSU_MIO_15_DIRECTION {inout} \
   CONFIG.PSU_MIO_15_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_15_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_15_POLARITY {Default} \
   CONFIG.PSU_MIO_15_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_15_SLEW {fast} \
   CONFIG.PSU_MIO_16_DIRECTION {inout} \
   CONFIG.PSU_MIO_16_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_16_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_16_POLARITY {Default} \
   CONFIG.PSU_MIO_16_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_16_SLEW {fast} \
   CONFIG.PSU_MIO_17_DIRECTION {inout} \
   CONFIG.PSU_MIO_17_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_17_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_17_POLARITY {Default} \
   CONFIG.PSU_MIO_17_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_17_SLEW {fast} \
   CONFIG.PSU_MIO_18_DIRECTION {inout} \
   CONFIG.PSU_MIO_18_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_18_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_18_POLARITY {Default} \
   CONFIG.PSU_MIO_18_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_18_SLEW {fast} \
   CONFIG.PSU_MIO_19_DIRECTION {inout} \
   CONFIG.PSU_MIO_19_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_19_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_19_POLARITY {Default} \
   CONFIG.PSU_MIO_19_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_19_SLEW {fast} \
   CONFIG.PSU_MIO_1_DIRECTION {inout} \
   CONFIG.PSU_MIO_1_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_1_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_1_POLARITY {Default} \
   CONFIG.PSU_MIO_1_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_1_SLEW {fast} \
   CONFIG.PSU_MIO_20_DIRECTION {inout} \
   CONFIG.PSU_MIO_20_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_20_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_20_POLARITY {Default} \
   CONFIG.PSU_MIO_20_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_20_SLEW {fast} \
   CONFIG.PSU_MIO_21_DIRECTION {inout} \
   CONFIG.PSU_MIO_21_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_21_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_21_POLARITY {Default} \
   CONFIG.PSU_MIO_21_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_21_SLEW {fast} \
   CONFIG.PSU_MIO_22_DIRECTION {out} \
   CONFIG.PSU_MIO_22_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_22_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_22_POLARITY {Default} \
   CONFIG.PSU_MIO_22_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_22_SLEW {fast} \
   CONFIG.PSU_MIO_23_DIRECTION {out} \
   CONFIG.PSU_MIO_23_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_23_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_23_POLARITY {Default} \
   CONFIG.PSU_MIO_23_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_23_SLEW {fast} \
   CONFIG.PSU_MIO_24_DIRECTION {inout} \
   CONFIG.PSU_MIO_24_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_24_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_24_POLARITY {Default} \
   CONFIG.PSU_MIO_24_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_24_SLEW {fast} \
   CONFIG.PSU_MIO_25_DIRECTION {inout} \
   CONFIG.PSU_MIO_25_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_25_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_25_POLARITY {Default} \
   CONFIG.PSU_MIO_25_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_25_SLEW {fast} \
   CONFIG.PSU_MIO_26_DIRECTION {inout} \
   CONFIG.PSU_MIO_26_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_26_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_26_POLARITY {Default} \
   CONFIG.PSU_MIO_26_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_26_SLEW {fast} \
   CONFIG.PSU_MIO_27_DIRECTION {inout} \
   CONFIG.PSU_MIO_27_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_27_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_27_POLARITY {Default} \
   CONFIG.PSU_MIO_27_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_27_SLEW {fast} \
   CONFIG.PSU_MIO_28_DIRECTION {inout} \
   CONFIG.PSU_MIO_28_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_28_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_28_POLARITY {Default} \
   CONFIG.PSU_MIO_28_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_28_SLEW {fast} \
   CONFIG.PSU_MIO_29_DIRECTION {inout} \
   CONFIG.PSU_MIO_29_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_29_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_29_POLARITY {Default} \
   CONFIG.PSU_MIO_29_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_29_SLEW {fast} \
   CONFIG.PSU_MIO_2_DIRECTION {inout} \
   CONFIG.PSU_MIO_2_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_2_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_2_POLARITY {Default} \
   CONFIG.PSU_MIO_2_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_2_SLEW {fast} \
   CONFIG.PSU_MIO_30_DIRECTION {inout} \
   CONFIG.PSU_MIO_30_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_30_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_30_POLARITY {Default} \
   CONFIG.PSU_MIO_30_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_30_SLEW {fast} \
   CONFIG.PSU_MIO_31_DIRECTION {out} \
   CONFIG.PSU_MIO_31_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_31_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_31_POLARITY {Default} \
   CONFIG.PSU_MIO_31_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_31_SLEW {fast} \
   CONFIG.PSU_MIO_32_DIRECTION {inout} \
   CONFIG.PSU_MIO_32_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_32_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_32_POLARITY {Default} \
   CONFIG.PSU_MIO_32_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_32_SLEW {fast} \
   CONFIG.PSU_MIO_33_DIRECTION {inout} \
   CONFIG.PSU_MIO_33_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_33_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_33_POLARITY {Default} \
   CONFIG.PSU_MIO_33_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_33_SLEW {fast} \
   CONFIG.PSU_MIO_34_DIRECTION {inout} \
   CONFIG.PSU_MIO_34_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_34_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_34_POLARITY {Default} \
   CONFIG.PSU_MIO_34_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_34_SLEW {fast} \
   CONFIG.PSU_MIO_35_DIRECTION {inout} \
   CONFIG.PSU_MIO_35_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_35_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_35_POLARITY {Default} \
   CONFIG.PSU_MIO_35_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_35_SLEW {fast} \
   CONFIG.PSU_MIO_36_DIRECTION {inout} \
   CONFIG.PSU_MIO_36_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_36_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_36_POLARITY {Default} \
   CONFIG.PSU_MIO_36_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_36_SLEW {fast} \
   CONFIG.PSU_MIO_37_DIRECTION {out} \
   CONFIG.PSU_MIO_37_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_37_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_37_POLARITY {Default} \
   CONFIG.PSU_MIO_37_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_37_SLEW {fast} \
   CONFIG.PSU_MIO_38_DIRECTION {inout} \
   CONFIG.PSU_MIO_38_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_38_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_38_POLARITY {Default} \
   CONFIG.PSU_MIO_38_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_38_SLEW {fast} \
   CONFIG.PSU_MIO_39_DIRECTION {inout} \
   CONFIG.PSU_MIO_39_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_39_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_39_POLARITY {Default} \
   CONFIG.PSU_MIO_39_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_39_SLEW {fast} \
   CONFIG.PSU_MIO_3_DIRECTION {inout} \
   CONFIG.PSU_MIO_3_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_3_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_3_POLARITY {Default} \
   CONFIG.PSU_MIO_3_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_3_SLEW {fast} \
   CONFIG.PSU_MIO_40_DIRECTION {out} \
   CONFIG.PSU_MIO_40_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_40_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_40_POLARITY {Default} \
   CONFIG.PSU_MIO_40_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_40_SLEW {fast} \
   CONFIG.PSU_MIO_41_DIRECTION {in} \
   CONFIG.PSU_MIO_41_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_41_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_41_POLARITY {Default} \
   CONFIG.PSU_MIO_41_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_41_SLEW {fast} \
   CONFIG.PSU_MIO_42_DIRECTION {in} \
   CONFIG.PSU_MIO_42_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_42_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_42_POLARITY {Default} \
   CONFIG.PSU_MIO_42_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_42_SLEW {fast} \
   CONFIG.PSU_MIO_43_DIRECTION {out} \
   CONFIG.PSU_MIO_43_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_43_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_43_POLARITY {Default} \
   CONFIG.PSU_MIO_43_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_43_SLEW {fast} \
   CONFIG.PSU_MIO_44_DIRECTION {inout} \
   CONFIG.PSU_MIO_44_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_44_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_44_POLARITY {Default} \
   CONFIG.PSU_MIO_44_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_44_SLEW {fast} \
   CONFIG.PSU_MIO_45_DIRECTION {in} \
   CONFIG.PSU_MIO_45_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_45_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_45_POLARITY {Default} \
   CONFIG.PSU_MIO_45_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_45_SLEW {fast} \
   CONFIG.PSU_MIO_46_DIRECTION {inout} \
   CONFIG.PSU_MIO_46_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_46_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_46_POLARITY {Default} \
   CONFIG.PSU_MIO_46_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_46_SLEW {fast} \
   CONFIG.PSU_MIO_47_DIRECTION {inout} \
   CONFIG.PSU_MIO_47_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_47_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_47_POLARITY {Default} \
   CONFIG.PSU_MIO_47_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_47_SLEW {fast} \
   CONFIG.PSU_MIO_48_DIRECTION {inout} \
   CONFIG.PSU_MIO_48_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_48_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_48_POLARITY {Default} \
   CONFIG.PSU_MIO_48_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_48_SLEW {fast} \
   CONFIG.PSU_MIO_49_DIRECTION {inout} \
   CONFIG.PSU_MIO_49_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_49_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_49_POLARITY {Default} \
   CONFIG.PSU_MIO_49_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_49_SLEW {fast} \
   CONFIG.PSU_MIO_4_DIRECTION {inout} \
   CONFIG.PSU_MIO_4_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_4_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_4_POLARITY {Default} \
   CONFIG.PSU_MIO_4_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_4_SLEW {fast} \
   CONFIG.PSU_MIO_50_DIRECTION {inout} \
   CONFIG.PSU_MIO_50_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_50_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_50_POLARITY {Default} \
   CONFIG.PSU_MIO_50_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_50_SLEW {fast} \
   CONFIG.PSU_MIO_51_DIRECTION {out} \
   CONFIG.PSU_MIO_51_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_51_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_51_POLARITY {Default} \
   CONFIG.PSU_MIO_51_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_51_SLEW {fast} \
   CONFIG.PSU_MIO_52_DIRECTION {in} \
   CONFIG.PSU_MIO_52_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_52_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_52_POLARITY {Default} \
   CONFIG.PSU_MIO_52_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_52_SLEW {fast} \
   CONFIG.PSU_MIO_53_DIRECTION {in} \
   CONFIG.PSU_MIO_53_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_53_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_53_POLARITY {Default} \
   CONFIG.PSU_MIO_53_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_53_SLEW {fast} \
   CONFIG.PSU_MIO_54_DIRECTION {inout} \
   CONFIG.PSU_MIO_54_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_54_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_54_POLARITY {Default} \
   CONFIG.PSU_MIO_54_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_54_SLEW {fast} \
   CONFIG.PSU_MIO_55_DIRECTION {in} \
   CONFIG.PSU_MIO_55_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_55_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_55_POLARITY {Default} \
   CONFIG.PSU_MIO_55_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_55_SLEW {fast} \
   CONFIG.PSU_MIO_56_DIRECTION {inout} \
   CONFIG.PSU_MIO_56_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_56_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_56_POLARITY {Default} \
   CONFIG.PSU_MIO_56_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_56_SLEW {fast} \
   CONFIG.PSU_MIO_57_DIRECTION {inout} \
   CONFIG.PSU_MIO_57_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_57_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_57_POLARITY {Default} \
   CONFIG.PSU_MIO_57_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_57_SLEW {fast} \
   CONFIG.PSU_MIO_58_DIRECTION {out} \
   CONFIG.PSU_MIO_58_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_58_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_58_POLARITY {Default} \
   CONFIG.PSU_MIO_58_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_58_SLEW {fast} \
   CONFIG.PSU_MIO_59_DIRECTION {inout} \
   CONFIG.PSU_MIO_59_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_59_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_59_POLARITY {Default} \
   CONFIG.PSU_MIO_59_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_59_SLEW {fast} \
   CONFIG.PSU_MIO_5_DIRECTION {out} \
   CONFIG.PSU_MIO_5_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_5_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_5_POLARITY {Default} \
   CONFIG.PSU_MIO_5_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_5_SLEW {fast} \
   CONFIG.PSU_MIO_60_DIRECTION {inout} \
   CONFIG.PSU_MIO_60_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_60_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_60_POLARITY {Default} \
   CONFIG.PSU_MIO_60_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_60_SLEW {fast} \
   CONFIG.PSU_MIO_61_DIRECTION {inout} \
   CONFIG.PSU_MIO_61_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_61_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_61_POLARITY {Default} \
   CONFIG.PSU_MIO_61_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_61_SLEW {fast} \
   CONFIG.PSU_MIO_62_DIRECTION {inout} \
   CONFIG.PSU_MIO_62_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_62_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_62_POLARITY {Default} \
   CONFIG.PSU_MIO_62_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_62_SLEW {fast} \
   CONFIG.PSU_MIO_63_DIRECTION {inout} \
   CONFIG.PSU_MIO_63_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_63_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_63_POLARITY {Default} \
   CONFIG.PSU_MIO_63_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_63_SLEW {fast} \
   CONFIG.PSU_MIO_64_DIRECTION {out} \
   CONFIG.PSU_MIO_64_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_64_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_64_POLARITY {Default} \
   CONFIG.PSU_MIO_64_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_64_SLEW {fast} \
   CONFIG.PSU_MIO_65_DIRECTION {out} \
   CONFIG.PSU_MIO_65_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_65_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_65_POLARITY {Default} \
   CONFIG.PSU_MIO_65_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_65_SLEW {fast} \
   CONFIG.PSU_MIO_66_DIRECTION {out} \
   CONFIG.PSU_MIO_66_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_66_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_66_POLARITY {Default} \
   CONFIG.PSU_MIO_66_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_66_SLEW {fast} \
   CONFIG.PSU_MIO_67_DIRECTION {out} \
   CONFIG.PSU_MIO_67_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_67_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_67_POLARITY {Default} \
   CONFIG.PSU_MIO_67_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_67_SLEW {fast} \
   CONFIG.PSU_MIO_68_DIRECTION {out} \
   CONFIG.PSU_MIO_68_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_68_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_68_POLARITY {Default} \
   CONFIG.PSU_MIO_68_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_68_SLEW {fast} \
   CONFIG.PSU_MIO_69_DIRECTION {out} \
   CONFIG.PSU_MIO_69_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_69_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_69_POLARITY {Default} \
   CONFIG.PSU_MIO_69_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_69_SLEW {fast} \
   CONFIG.PSU_MIO_6_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_6_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_6_POLARITY {Default} \
   CONFIG.PSU_MIO_6_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_6_SLEW {fast} \
   CONFIG.PSU_MIO_70_DIRECTION {in} \
   CONFIG.PSU_MIO_70_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_70_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_70_POLARITY {Default} \
   CONFIG.PSU_MIO_70_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_70_SLEW {fast} \
   CONFIG.PSU_MIO_71_DIRECTION {in} \
   CONFIG.PSU_MIO_71_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_71_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_71_POLARITY {Default} \
   CONFIG.PSU_MIO_71_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_71_SLEW {fast} \
   CONFIG.PSU_MIO_72_DIRECTION {in} \
   CONFIG.PSU_MIO_72_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_72_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_72_POLARITY {Default} \
   CONFIG.PSU_MIO_72_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_72_SLEW {fast} \
   CONFIG.PSU_MIO_73_DIRECTION {in} \
   CONFIG.PSU_MIO_73_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_73_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_73_POLARITY {Default} \
   CONFIG.PSU_MIO_73_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_73_SLEW {fast} \
   CONFIG.PSU_MIO_74_DIRECTION {in} \
   CONFIG.PSU_MIO_74_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_74_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_74_POLARITY {Default} \
   CONFIG.PSU_MIO_74_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_74_SLEW {fast} \
   CONFIG.PSU_MIO_75_DIRECTION {in} \
   CONFIG.PSU_MIO_75_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_75_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_75_POLARITY {Default} \
   CONFIG.PSU_MIO_75_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_75_SLEW {fast} \
   CONFIG.PSU_MIO_76_DIRECTION {out} \
   CONFIG.PSU_MIO_76_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_76_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_76_POLARITY {Default} \
   CONFIG.PSU_MIO_76_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_76_SLEW {fast} \
   CONFIG.PSU_MIO_77_DIRECTION {inout} \
   CONFIG.PSU_MIO_77_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_77_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_77_POLARITY {Default} \
   CONFIG.PSU_MIO_77_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_77_SLEW {fast} \
   CONFIG.PSU_MIO_7_DIRECTION {out} \
   CONFIG.PSU_MIO_7_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_7_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_7_POLARITY {Default} \
   CONFIG.PSU_MIO_7_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_7_SLEW {fast} \
   CONFIG.PSU_MIO_8_DIRECTION {inout} \
   CONFIG.PSU_MIO_8_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_8_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_8_POLARITY {Default} \
   CONFIG.PSU_MIO_8_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_8_SLEW {fast} \
   CONFIG.PSU_MIO_9_DIRECTION {inout} \
   CONFIG.PSU_MIO_9_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_9_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_9_POLARITY {Default} \
   CONFIG.PSU_MIO_9_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_9_SLEW {fast} \
   CONFIG.PSU_MIO_TREE_PERIPHERALS {Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash########SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#I2C 1#I2C 1#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#USB0 Reset#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#PCIE#GPIO1 MIO#GPIO1 MIO#UART 1#UART 1#UART 0#UART 0#GPIO1 MIO#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#MDIO 3#MDIO 3} \
   CONFIG.PSU_MIO_TREE_SIGNALS {sclk_out#miso_mo1#mo2#mo3#mosi_mi0#n_ss_out########sdio0_data_out[0]#sdio0_data_out[1]#sdio0_data_out[2]#sdio0_data_out[3]#sdio0_data_out[4]#sdio0_data_out[5]#sdio0_data_out[6]#sdio0_data_out[7]#sdio0_cmd_out#sdio0_clk_out#sdio0_bus_pow#scl_out#sda_out#gpio1[26]#gpio1[27]#gpio1[28]#gpio1[29]#gpio1[30]#reset#gpio1[32]#gpio1[33]#gpio1[34]#gpio1[35]#gpio1[36]#reset_n#gpio1[38]#gpio1[39]#txd#rxd#rxd#txd#gpio1[44]#sdio1_cd_n#sdio1_data_out[0]#sdio1_data_out[1]#sdio1_data_out[2]#sdio1_data_out[3]#sdio1_cmd_out#sdio1_clk_out#ulpi_clk_in#ulpi_dir#ulpi_tx_data[2]#ulpi_nxt#ulpi_tx_data[0]#ulpi_tx_data[1]#ulpi_stp#ulpi_tx_data[3]#ulpi_tx_data[4]#ulpi_tx_data[5]#ulpi_tx_data[6]#ulpi_tx_data[7]#rgmii_tx_clk#rgmii_txd[0]#rgmii_txd[1]#rgmii_txd[2]#rgmii_txd[3]#rgmii_tx_ctl#rgmii_rx_clk#rgmii_rxd[0]#rgmii_rxd[1]#rgmii_rxd[2]#rgmii_rxd[3]#rgmii_rx_ctl#gem3_mdc#gem3_mdio_out} \
   CONFIG.PSU_PERIPHERAL_BOARD_PRESET {} \
   CONFIG.PSU_SD0_INTERNAL_BUS_WIDTH {8} \
   CONFIG.PSU_SD1_INTERNAL_BUS_WIDTH {4} \
   CONFIG.PSU_SMC_CYCLE_T0 {NA} \
   CONFIG.PSU_SMC_CYCLE_T1 {NA} \
   CONFIG.PSU_SMC_CYCLE_T2 {NA} \
   CONFIG.PSU_SMC_CYCLE_T3 {NA} \
   CONFIG.PSU_SMC_CYCLE_T4 {NA} \
   CONFIG.PSU_SMC_CYCLE_T5 {NA} \
   CONFIG.PSU_SMC_CYCLE_T6 {NA} \
   CONFIG.PSU_USB3__DUAL_CLOCK_ENABLE {1} \
   CONFIG.PSU_VALUE_SILVERSION {3} \
   CONFIG.PSU__ACPU0__POWER__ON {1} \
   CONFIG.PSU__ACPU1__POWER__ON {1} \
   CONFIG.PSU__ACPU2__POWER__ON {1} \
   CONFIG.PSU__ACPU3__POWER__ON {1} \
   CONFIG.PSU__ACTUAL__IP {1} \
   CONFIG.PSU__ACT_DDR_FREQ_MHZ {1199.999756} \
   CONFIG.PSU__AFI0_COHERENCY {0} \
   CONFIG.PSU__AFI1_COHERENCY {0} \
   CONFIG.PSU__AUX_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__CAN0_LOOP_CAN1__ENABLE {0} \
   CONFIG.PSU__CAN0__GRP_CLK__ENABLE {0} \
   CONFIG.PSU__CAN0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__CAN0__PERIPHERAL__IO {<Select>} \
   CONFIG.PSU__CAN1__GRP_CLK__ENABLE {0} \
   CONFIG.PSU__CAN1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__CAN1__PERIPHERAL__IO {<Select>} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__ACT_FREQMHZ {1316.666504} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__FREQMHZ {1333.333} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL} \
   CONFIG.PSU__CRF_APB__ACPU__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI0_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI1_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI2_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI3_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI4_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI5_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FBDIV {79} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__APLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__APLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__APM_CTRL__ACT_FREQMHZ {1} \
   CONFIG.PSU__CRF_APB__APM_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRF_APB__APM_CTRL__FREQMHZ {1} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__ACT_FREQMHZ {249.999954} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__ACT_FREQMHZ {249.999954} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__ACT_FREQMHZ {599.999878} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {1200} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__ACT_FREQMHZ {599.999878} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {72} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__DPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__ACT_FREQMHZ {24.999750} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR0 {63} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__FREQMHZ {25} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRF_APB__DP_AUDIO__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__ACT_FREQMHZ {26.315527} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR1 {10} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__FREQMHZ {27} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__ACT_FREQMHZ {299.997009} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__FREQMHZ {300} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {VPLL} \
   CONFIG.PSU__CRF_APB__DP_VIDEO__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__ACT_FREQMHZ {599.999878} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__ACT_FREQMHZ {599.999878} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__ACT_FREQMHZ {-1} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__DIVISOR0 {-1} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__FREQMHZ {-1} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__SRCSEL {NA} \
   CONFIG.PSU__CRF_APB__GTGREF0__ENABLE {NA} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__ACT_FREQMHZ {249.999954} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__ACT_FREQMHZ {249.999954} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__ACT_FREQMHZ {99.999985} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__ACT_FREQMHZ {438.888824} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__FREQMHZ {533.333} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {APLL} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FBDIV {90} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__VPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__VPLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__ACT_FREQMHZ {499.999908} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__ACT_FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__AFI6__ENABLE {0} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__ACT_FREQMHZ {49.999992} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR0 {30} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__FREQMHZ {50} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__ACT_FREQMHZ {499.999908} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__ACT_FREQMHZ {180} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__FREQMHZ {180} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__SRCSEL {SysOsc} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__ACT_FREQMHZ {249.999954} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__ACT_FREQMHZ {1000} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__FREQMHZ {1000} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__ACT_FREQMHZ {1499.999756} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__FREQMHZ {1500} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__ACT_FREQMHZ {124.999977} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__ACT_FREQMHZ {124.999977} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__ACT_FREQMHZ {124.999977} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__ACT_FREQMHZ {124.999977} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__ACT_FREQMHZ {249.999954} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__ACT_FREQMHZ {99.999985} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__ACT_FREQMHZ {99.999985} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FBDIV {90} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__IOPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRL_APB__IOPLL_TO_FPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__ACT_FREQMHZ {266.666626} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__FREQMHZ {267} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__ACT_FREQMHZ {99.999985} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__ACT_FREQMHZ {499.999908} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__ACT_FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__ACT_FREQMHZ {187.499969} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ {99.999985} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__ACT_FREQMHZ {99.999985} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__ACT_FREQMHZ {199.998001} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__ACT_FREQMHZ {299.999939} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__FREQMHZ {300} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FBDIV {48} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__RPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRL_APB__RPLL_TO_FPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__ACT_FREQMHZ {187.499969} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__ACT_FREQMHZ {187.499969} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__ACT_FREQMHZ {214} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__ACT_FREQMHZ {214} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__ACT_FREQMHZ {33.333328} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__ACT_FREQMHZ {99.999985} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__ACT_FREQMHZ {99.999985} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__ACT_FREQMHZ {249.999954} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__ACT_FREQMHZ {19.999996} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR0 {25} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR1 {3} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__FREQMHZ {20} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB3__ENABLE {1} \
   CONFIG.PSU__CSUPMU__PERIPHERAL__VALID {0} \
   CONFIG.PSU__CSU_COHERENCY {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_0__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_0__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_10__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_10__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_11__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_11__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_12__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_12__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_1__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_1__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_2__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_2__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_3__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_3__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_4__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_4__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_5__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_5__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_6__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_6__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_7__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_7__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_8__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_8__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_9__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_9__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__DDRC__ADDR_MIRROR {0} \
   CONFIG.PSU__DDRC__AL {0} \
   CONFIG.PSU__DDRC__BANK_ADDR_COUNT {2} \
   CONFIG.PSU__DDRC__BG_ADDR_COUNT {1} \
   CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL} \
   CONFIG.PSU__DDRC__BUS_WIDTH {64 Bit} \
   CONFIG.PSU__DDRC__CL {16} \
   CONFIG.PSU__DDRC__CLOCK_STOP_EN {0} \
   CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
   CONFIG.PSU__DDRC__COMPONENTS {Components} \
   CONFIG.PSU__DDRC__CWL {12} \
   CONFIG.PSU__DDRC__DDR3L_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {0} \
   CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {0} \
   CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {0} \
   CONFIG.PSU__DDRC__DDR4_MAXPWR_SAVING_EN {0} \
   CONFIG.PSU__DDRC__DDR4_T_REF_MODE {0} \
   CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {Normal (0-85)} \
   CONFIG.PSU__DDRC__DEEP_PWR_DOWN_EN {0} \
   CONFIG.PSU__DDRC__DEVICE_CAPACITY {8192 MBits} \
   CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {0} \
   CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
   CONFIG.PSU__DDRC__DQMAP_0_3 {0} \
   CONFIG.PSU__DDRC__DQMAP_12_15 {0} \
   CONFIG.PSU__DDRC__DQMAP_16_19 {0} \
   CONFIG.PSU__DDRC__DQMAP_20_23 {0} \
   CONFIG.PSU__DDRC__DQMAP_24_27 {0} \
   CONFIG.PSU__DDRC__DQMAP_28_31 {0} \
   CONFIG.PSU__DDRC__DQMAP_32_35 {0} \
   CONFIG.PSU__DDRC__DQMAP_36_39 {0} \
   CONFIG.PSU__DDRC__DQMAP_40_43 {0} \
   CONFIG.PSU__DDRC__DQMAP_44_47 {0} \
   CONFIG.PSU__DDRC__DQMAP_48_51 {0} \
   CONFIG.PSU__DDRC__DQMAP_4_7 {0} \
   CONFIG.PSU__DDRC__DQMAP_52_55 {0} \
   CONFIG.PSU__DDRC__DQMAP_56_59 {0} \
   CONFIG.PSU__DDRC__DQMAP_60_63 {0} \
   CONFIG.PSU__DDRC__DQMAP_64_67 {0} \
   CONFIG.PSU__DDRC__DQMAP_68_71 {0} \
   CONFIG.PSU__DDRC__DQMAP_8_11 {0} \
   CONFIG.PSU__DDRC__DRAM_WIDTH {16 Bits} \
   CONFIG.PSU__DDRC__ECC {Disabled} \
   CONFIG.PSU__DDRC__ECC_SCRUB {0} \
   CONFIG.PSU__DDRC__ENABLE {1} \
   CONFIG.PSU__DDRC__ENABLE_2T_TIMING {0} \
   CONFIG.PSU__DDRC__ENABLE_DP_SWITCH {0} \
   CONFIG.PSU__DDRC__ENABLE_LP4_HAS_ECC_COMP {0} \
   CONFIG.PSU__DDRC__ENABLE_LP4_SLOWBOOT {0} \
   CONFIG.PSU__DDRC__EN_2ND_CLK {0} \
   CONFIG.PSU__DDRC__FGRM {1X} \
   CONFIG.PSU__DDRC__FREQ_MHZ {1} \
   CONFIG.PSU__DDRC__LPDDR3_DUALRANK_SDP {0} \
   CONFIG.PSU__DDRC__LPDDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__LPDDR4_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__LP_ASR {manual normal} \
   CONFIG.PSU__DDRC__MEMORY_TYPE {DDR 4} \
   CONFIG.PSU__DDRC__PARITY_ENABLE {0} \
   CONFIG.PSU__DDRC__PER_BANK_REFRESH {0} \
   CONFIG.PSU__DDRC__PHY_DBI_MODE {0} \
   CONFIG.PSU__DDRC__PLL_BYPASS {0} \
   CONFIG.PSU__DDRC__PWR_DOWN_EN {0} \
   CONFIG.PSU__DDRC__RANK_ADDR_COUNT {0} \
   CONFIG.PSU__DDRC__RD_DQS_CENTER {0} \
   CONFIG.PSU__DDRC__ROW_ADDR_COUNT {16} \
   CONFIG.PSU__DDRC__SB_TARGET {15-15-15} \
   CONFIG.PSU__DDRC__SELF_REF_ABORT {0} \
   CONFIG.PSU__DDRC__SPEED_BIN {DDR4_2400P} \
   CONFIG.PSU__DDRC__STATIC_RD_MODE {0} \
   CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} \
   CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} \
   CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} \
   CONFIG.PSU__DDRC__T_FAW {30.0} \
   CONFIG.PSU__DDRC__T_RAS_MIN {32} \
   CONFIG.PSU__DDRC__T_RC {45.32} \
   CONFIG.PSU__DDRC__T_RCD {16} \
   CONFIG.PSU__DDRC__T_RP {16} \
   CONFIG.PSU__DDRC__VENDOR_PART {OTHERS} \
   CONFIG.PSU__DDRC__VIDEO_BUFFER_SIZE {0} \
   CONFIG.PSU__DDRC__VREF {1} \
   CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE {1} \
   CONFIG.PSU__DDR_QOS_ENABLE {0} \
   CONFIG.PSU__DDR_QOS_FIX_HP0_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP0_WRQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP1_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP1_WRQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP2_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP2_WRQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP3_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP3_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP0_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP0_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP1_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP1_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP2_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP2_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP3_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP3_WRQOS {} \
   CONFIG.PSU__DDR_QOS_RD_HPR_THRSHLD {} \
   CONFIG.PSU__DDR_QOS_RD_LPR_THRSHLD {} \
   CONFIG.PSU__DDR_QOS_WR_THRSHLD {} \
   CONFIG.PSU__DDR_SW_REFRESH_ENABLED {1} \
   CONFIG.PSU__DDR__INTERFACE__FREQMHZ {600.000} \
   CONFIG.PSU__DEVICE_TYPE {EV} \
   CONFIG.PSU__DISPLAYPORT__LANE0__ENABLE {0} \
   CONFIG.PSU__DISPLAYPORT__LANE0__IO {<Select>} \
   CONFIG.PSU__DISPLAYPORT__LANE1__ENABLE {0} \
   CONFIG.PSU__DISPLAYPORT__LANE1__IO {<Select>} \
   CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__DLL__ISUSED {1} \
   CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__DPAUX__PERIPHERAL__IO {<Select>} \
   CONFIG.PSU__DP__LANE_SEL {<Select>} \
   CONFIG.PSU__DP__REF_CLK_FREQ {<Select>} \
   CONFIG.PSU__DP__REF_CLK_SEL {<Select>} \
   CONFIG.PSU__ENABLE__DDR__REFRESH__SIGNALS {0} \
   CONFIG.PSU__ENET0__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET0__GRP_MDIO__ENABLE {1} \
   CONFIG.PSU__ENET0__GRP_MDIO__IO {EMIO} \
   CONFIG.PSU__ENET0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__ENET0__PERIPHERAL__IO {EMIO} \
   CONFIG.PSU__ENET0__PTP__ENABLE {0} \
   CONFIG.PSU__ENET0__TSU__ENABLE {1} \
   CONFIG.PSU__ENET1__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET1__GRP_MDIO__ENABLE {1} \
   CONFIG.PSU__ENET1__GRP_MDIO__IO {EMIO} \
   CONFIG.PSU__ENET1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__ENET1__PERIPHERAL__IO {EMIO} \
   CONFIG.PSU__ENET1__PTP__ENABLE {0} \
   CONFIG.PSU__ENET1__TSU__ENABLE {1} \
   CONFIG.PSU__ENET2__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET2__GRP_MDIO__ENABLE {1} \
   CONFIG.PSU__ENET2__GRP_MDIO__IO {EMIO} \
   CONFIG.PSU__ENET2__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__ENET2__PERIPHERAL__IO {EMIO} \
   CONFIG.PSU__ENET2__PTP__ENABLE {0} \
   CONFIG.PSU__ENET2__TSU__ENABLE {1} \
   CONFIG.PSU__ENET3__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} \
   CONFIG.PSU__ENET3__GRP_MDIO__IO {MIO 76 .. 77} \
   CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__ENET3__PERIPHERAL__IO {MIO 64 .. 75} \
   CONFIG.PSU__ENET3__PTP__ENABLE {0} \
   CONFIG.PSU__ENET3__TSU__ENABLE {0} \
   CONFIG.PSU__EN_AXI_STATUS_PORTS {0} \
   CONFIG.PSU__EN_EMIO_TRACE {0} \
   CONFIG.PSU__EP__IP {0} \
   CONFIG.PSU__EXPAND__CORESIGHT {0} \
   CONFIG.PSU__EXPAND__FPD_SLAVES {0} \
   CONFIG.PSU__EXPAND__GIC {0} \
   CONFIG.PSU__EXPAND__LOWER_LPS_SLAVES {0} \
   CONFIG.PSU__EXPAND__UPPER_LPS_SLAVES {0} \
   CONFIG.PSU__FPDMASTERS_COHERENCY {0} \
   CONFIG.PSU__FPD_SLCR__WDT1__ACT_FREQMHZ {100} \
   CONFIG.PSU__FPD_SLCR__WDT1__FREQMHZ {100} \
   CONFIG.PSU__FPD_SLCR__WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__FPGA_PL0_ENABLE {1} \
   CONFIG.PSU__FPGA_PL1_ENABLE {1} \
   CONFIG.PSU__FPGA_PL2_ENABLE {0} \
   CONFIG.PSU__FPGA_PL3_ENABLE {0} \
   CONFIG.PSU__FP__POWER__ON {1} \
   CONFIG.PSU__FTM__CTI_IN_0 {0} \
   CONFIG.PSU__FTM__CTI_IN_1 {0} \
   CONFIG.PSU__FTM__CTI_IN_2 {0} \
   CONFIG.PSU__FTM__CTI_IN_3 {0} \
   CONFIG.PSU__FTM__CTI_OUT_0 {0} \
   CONFIG.PSU__FTM__CTI_OUT_1 {0} \
   CONFIG.PSU__FTM__CTI_OUT_2 {0} \
   CONFIG.PSU__FTM__CTI_OUT_3 {0} \
   CONFIG.PSU__FTM__GPI {0} \
   CONFIG.PSU__FTM__GPO {0} \
   CONFIG.PSU__GEM0_COHERENCY {0} \
   CONFIG.PSU__GEM0_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM1_COHERENCY {0} \
   CONFIG.PSU__GEM1_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM2_COHERENCY {0} \
   CONFIG.PSU__GEM2_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM3_COHERENCY {0} \
   CONFIG.PSU__GEM3_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM__TSU__ENABLE {0} \
   CONFIG.PSU__GEN_IPI_0__MASTER {APU} \
   CONFIG.PSU__GEN_IPI_10__MASTER {NONE} \
   CONFIG.PSU__GEN_IPI_1__MASTER {RPU0} \
   CONFIG.PSU__GEN_IPI_2__MASTER {RPU1} \
   CONFIG.PSU__GEN_IPI_3__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_4__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_5__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_6__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_7__MASTER {NONE} \
   CONFIG.PSU__GEN_IPI_8__MASTER {NONE} \
   CONFIG.PSU__GEN_IPI_9__MASTER {NONE} \
   CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__GPIO1_MIO__IO {MIO 26 .. 51} \
   CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__GPIO2_MIO__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__GPIO_EMIO_WIDTH {4} \
   CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO {4} \
   CONFIG.PSU__GPIO_EMIO__WIDTH {[94:0]} \
   CONFIG.PSU__GPU_PP0__POWER__ON {1} \
   CONFIG.PSU__GPU_PP1__POWER__ON {1} \
   CONFIG.PSU__GT_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__GT__LINK_SPEED {<Select>} \
   CONFIG.PSU__GT__PRE_EMPH_LVL_4 {} \
   CONFIG.PSU__GT__VLT_SWNG_LVL_4 {} \
   CONFIG.PSU__HIGH_ADDRESS__ENABLE {1} \
   CONFIG.PSU__HPM0_FPD__NUM_READ_THREADS {4} \
   CONFIG.PSU__HPM0_FPD__NUM_WRITE_THREADS {4} \
   CONFIG.PSU__HPM0_LPD__NUM_READ_THREADS {4} \
   CONFIG.PSU__HPM0_LPD__NUM_WRITE_THREADS {4} \
   CONFIG.PSU__HPM1_FPD__NUM_READ_THREADS {4} \
   CONFIG.PSU__HPM1_FPD__NUM_WRITE_THREADS {4} \
   CONFIG.PSU__I2C0_LOOP_I2C1__ENABLE {0} \
   CONFIG.PSU__I2C0__GRP_INT__ENABLE {0} \
   CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__I2C0__PERIPHERAL__IO {<Select>} \
   CONFIG.PSU__I2C1__GRP_INT__ENABLE {0} \
   CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 24 .. 25} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC0_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC1_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC2_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC3_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__TTC0__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC0__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC1__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC1__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC2__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC2__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC3__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC3__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__WDT0__ACT_FREQMHZ {100} \
   CONFIG.PSU__IOU_SLCR__WDT0__FREQMHZ {100} \
   CONFIG.PSU__IOU_SLCR__WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__IRQ_P2F_ADMA_CHAN__INT {0} \
   CONFIG.PSU__IRQ_P2F_AIB_AXI__INT {0} \
   CONFIG.PSU__IRQ_P2F_AMS__INT {0} \
   CONFIG.PSU__IRQ_P2F_APM_FPD__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_COMM__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_CPUMNT__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_CTI__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_EXTERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_IPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_L2ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_PMU__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_REGS__INT {0} \
   CONFIG.PSU__IRQ_P2F_ATB_LPD__INT {0} \
   CONFIG.PSU__IRQ_P2F_CAN0__INT {0} \
   CONFIG.PSU__IRQ_P2F_CAN1__INT {0} \
   CONFIG.PSU__IRQ_P2F_CLKMON__INT {0} \
   CONFIG.PSU__IRQ_P2F_CSUPMU_WDT__INT {0} \
   CONFIG.PSU__IRQ_P2F_CSU_DMA__INT {0} \
   CONFIG.PSU__IRQ_P2F_CSU__INT {0} \
   CONFIG.PSU__IRQ_P2F_DDR_SS__INT {0} \
   CONFIG.PSU__IRQ_P2F_DPDMA__INT {0} \
   CONFIG.PSU__IRQ_P2F_DPORT__INT {0} \
   CONFIG.PSU__IRQ_P2F_EFUSE__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT0_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT0__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT1_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT1__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT2_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT2__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT3_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT3__INT {0} \
   CONFIG.PSU__IRQ_P2F_FPD_APB__INT {0} \
   CONFIG.PSU__IRQ_P2F_FPD_ATB_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_FP_WDT__INT {0} \
   CONFIG.PSU__IRQ_P2F_GDMA_CHAN__INT {0} \
   CONFIG.PSU__IRQ_P2F_GPIO__INT {0} \
   CONFIG.PSU__IRQ_P2F_GPU__INT {0} \
   CONFIG.PSU__IRQ_P2F_I2C0__INT {0} \
   CONFIG.PSU__IRQ_P2F_I2C1__INT {0} \
   CONFIG.PSU__IRQ_P2F_LPD_APB__INT {0} \
   CONFIG.PSU__IRQ_P2F_LPD_APM__INT {0} \
   CONFIG.PSU__IRQ_P2F_LP_WDT__INT {0} \
   CONFIG.PSU__IRQ_P2F_NAND__INT {0} \
   CONFIG.PSU__IRQ_P2F_OCM_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_DMA__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_LEGACY__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_MSC__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_MSI__INT {0} \
   CONFIG.PSU__IRQ_P2F_PL_IPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_QSPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_R5_CORE0_ECC_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_R5_CORE1_ECC_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_RPU_IPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_RPU_PERMON__INT {0} \
   CONFIG.PSU__IRQ_P2F_RTC_ALARM__INT {0} \
   CONFIG.PSU__IRQ_P2F_RTC_SECONDS__INT {0} \
   CONFIG.PSU__IRQ_P2F_SATA__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO0_WAKE__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO0__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO1_WAKE__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO1__INT {0} \
   CONFIG.PSU__IRQ_P2F_SPI0__INT {0} \
   CONFIG.PSU__IRQ_P2F_SPI1__INT {0} \
   CONFIG.PSU__IRQ_P2F_TTC0__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC0__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC0__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_TTC1__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC1__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC1__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_TTC2__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC2__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC2__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_TTC3__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC3__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC3__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_UART0__INT {0} \
   CONFIG.PSU__IRQ_P2F_UART1__INT {0} \
   CONFIG.PSU__IRQ_P2F_USB3_ENDPOINT__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_ENDPOINT__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_OTG__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_OTG__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_PMU_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_XMPU_FPD__INT {0} \
   CONFIG.PSU__IRQ_P2F_XMPU_LPD__INT {0} \
   CONFIG.PSU__IRQ_P2F__INTF_FPD_SMMU__INT {0} \
   CONFIG.PSU__IRQ_P2F__INTF_PPD_CCI__INT {0} \
   CONFIG.PSU__L2_BANK0__POWER__ON {1} \
   CONFIG.PSU__LPDMA0_COHERENCY {0} \
   CONFIG.PSU__LPDMA1_COHERENCY {0} \
   CONFIG.PSU__LPDMA2_COHERENCY {0} \
   CONFIG.PSU__LPDMA3_COHERENCY {0} \
   CONFIG.PSU__LPDMA4_COHERENCY {0} \
   CONFIG.PSU__LPDMA5_COHERENCY {0} \
   CONFIG.PSU__LPDMA6_COHERENCY {0} \
   CONFIG.PSU__LPDMA7_COHERENCY {0} \
   CONFIG.PSU__LPD_SLCR__CSUPMU_WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__LPD_SLCR__CSUPMU__ACT_FREQMHZ {100} \
   CONFIG.PSU__LPD_SLCR__CSUPMU__FREQMHZ {100} \
   CONFIG.PSU__MAXIGP0__DATA_WIDTH {32} \
   CONFIG.PSU__MAXIGP1__DATA_WIDTH {32} \
   CONFIG.PSU__MAXIGP2__DATA_WIDTH {32} \
   CONFIG.PSU__M_AXI_GP0_SUPPORTS_NARROW_BURST {1} \
   CONFIG.PSU__M_AXI_GP1_SUPPORTS_NARROW_BURST {1} \
   CONFIG.PSU__M_AXI_GP2_SUPPORTS_NARROW_BURST {1} \
   CONFIG.PSU__NAND_COHERENCY {0} \
   CONFIG.PSU__NAND_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__NAND__CHIP_ENABLE__ENABLE {0} \
   CONFIG.PSU__NAND__DATA_STROBE__ENABLE {0} \
   CONFIG.PSU__NAND__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__NAND__READY0_BUSY__ENABLE {0} \
   CONFIG.PSU__NAND__READY1_BUSY__ENABLE {0} \
   CONFIG.PSU__NAND__READY_BUSY__ENABLE {0} \
   CONFIG.PSU__NUM_FABRIC_RESETS {1} \
   CONFIG.PSU__OCM_BANK0__POWER__ON {1} \
   CONFIG.PSU__OCM_BANK1__POWER__ON {1} \
   CONFIG.PSU__OCM_BANK2__POWER__ON {1} \
   CONFIG.PSU__OCM_BANK3__POWER__ON {1} \
   CONFIG.PSU__OVERRIDE_HPX_QOS {0} \
   CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0} \
   CONFIG.PSU__PCIE__ACS_VIOLAION {0} \
   CONFIG.PSU__PCIE__ACS_VIOLATION {0} \
   CONFIG.PSU__PCIE__AER_CAPABILITY {0} \
   CONFIG.PSU__PCIE__ATOMICOP_EGRESS_BLOCKED {0} \
   CONFIG.PSU__PCIE__BAR0_64BIT {0} \
   CONFIG.PSU__PCIE__BAR0_ENABLE {1} \
   CONFIG.PSU__PCIE__BAR0_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR0_SCALE {Megabytes} \
   CONFIG.PSU__PCIE__BAR0_SIZE {1} \
   CONFIG.PSU__PCIE__BAR0_TYPE {Memory} \
   CONFIG.PSU__PCIE__BAR0_VAL {0xfff00000} \
   CONFIG.PSU__PCIE__BAR1_64BIT {0} \
   CONFIG.PSU__PCIE__BAR1_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR1_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR1_VAL {0x0} \
   CONFIG.PSU__PCIE__BAR2_64BIT {0} \
   CONFIG.PSU__PCIE__BAR2_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR2_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR2_VAL {0x0} \
   CONFIG.PSU__PCIE__BAR3_64BIT {0} \
   CONFIG.PSU__PCIE__BAR3_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR3_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR3_VAL {0x0} \
   CONFIG.PSU__PCIE__BAR4_64BIT {0} \
   CONFIG.PSU__PCIE__BAR4_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR4_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR4_VAL {0x0} \
   CONFIG.PSU__PCIE__BAR5_64BIT {0} \
   CONFIG.PSU__PCIE__BAR5_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR5_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR5_VAL {0x0} \
   CONFIG.PSU__PCIE__BRIDGE_BAR_INDICATOR {<Select>} \
   CONFIG.PSU__PCIE__CLASS_CODE_BASE {0x06} \
   CONFIG.PSU__PCIE__CLASS_CODE_INTERFACE {0x0} \
   CONFIG.PSU__PCIE__CLASS_CODE_SUB {0x04} \
   CONFIG.PSU__PCIE__CLASS_CODE_VALUE {0x60400} \
   CONFIG.PSU__PCIE__COMPLETER_ABORT {0} \
   CONFIG.PSU__PCIE__COMPLTION_TIMEOUT {0} \
   CONFIG.PSU__PCIE__CORRECTABLE_INT_ERR {0} \
   CONFIG.PSU__PCIE__CRS_SW_VISIBILITY {0} \
   CONFIG.PSU__PCIE__DEVICE_ID {0xD011} \
   CONFIG.PSU__PCIE__DEVICE_PORT_TYPE {Root Port} \
   CONFIG.PSU__PCIE__ECRC_CHECK {0} \
   CONFIG.PSU__PCIE__ECRC_ERR {0} \
   CONFIG.PSU__PCIE__ECRC_GEN {0} \
   CONFIG.PSU__PCIE__EROM_ENABLE {0} \
   CONFIG.PSU__PCIE__EROM_VAL {0x0} \
   CONFIG.PSU__PCIE__FLOW_CONTROL_ERR {0} \
   CONFIG.PSU__PCIE__FLOW_CONTROL_PROTOCOL_ERR {0} \
   CONFIG.PSU__PCIE__HEADER_LOG_OVERFLOW {0} \
   CONFIG.PSU__PCIE__INTX_GENERATION {1} \
   CONFIG.PSU__PCIE__INTX_PIN {<Select>} \
   CONFIG.PSU__PCIE__LANE0__ENABLE {1} \
   CONFIG.PSU__PCIE__LANE0__IO {GT Lane0} \
   CONFIG.PSU__PCIE__LANE1__ENABLE {0} \
   CONFIG.PSU__PCIE__LANE2__ENABLE {0} \
   CONFIG.PSU__PCIE__LANE3__ENABLE {0} \
   CONFIG.PSU__PCIE__LINK_SPEED {5.0 Gb/s} \
   CONFIG.PSU__PCIE__MAXIMUM_LINK_WIDTH {x1} \
   CONFIG.PSU__PCIE__MAX_PAYLOAD_SIZE {256 bytes} \
   CONFIG.PSU__PCIE__MC_BLOCKED_TLP {0} \
   CONFIG.PSU__PCIE__MSIX_BAR_INDICATOR {} \
   CONFIG.PSU__PCIE__MSIX_CAPABILITY {0} \
   CONFIG.PSU__PCIE__MSIX_PBA_BAR_INDICATOR {} \
   CONFIG.PSU__PCIE__MSIX_PBA_OFFSET {0} \
   CONFIG.PSU__PCIE__MSIX_TABLE_OFFSET {0} \
   CONFIG.PSU__PCIE__MSIX_TABLE_SIZE {0} \
   CONFIG.PSU__PCIE__MSI_64BIT_ADDR_CAPABLE {0} \
   CONFIG.PSU__PCIE__MSI_CAPABILITY {0} \
   CONFIG.PSU__PCIE__MULTIHEADER {0} \
   CONFIG.PSU__PCIE__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__PCIE__PERIPHERAL__ENDPOINT_ENABLE {0} \
   CONFIG.PSU__PCIE__PERIPHERAL__ENDPOINT_IO {<Select>} \
   CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_ENABLE {1} \
   CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_IO {MIO 37} \
   CONFIG.PSU__PCIE__PERM_ROOT_ERR_UPDATE {0} \
   CONFIG.PSU__PCIE__RECEIVER_ERR {0} \
   CONFIG.PSU__PCIE__RECEIVER_OVERFLOW {0} \
   CONFIG.PSU__PCIE__REF_CLK_FREQ {100} \
   CONFIG.PSU__PCIE__REF_CLK_SEL {Ref Clk0} \
   CONFIG.PSU__PCIE__RESET__POLARITY {Active Low} \
   CONFIG.PSU__PCIE__REVISION_ID {0x0} \
   CONFIG.PSU__PCIE__SUBSYSTEM_ID {0x7} \
   CONFIG.PSU__PCIE__SUBSYSTEM_VENDOR_ID {0x10EE} \
   CONFIG.PSU__PCIE__SURPRISE_DOWN {0} \
   CONFIG.PSU__PCIE__TLP_PREFIX_BLOCKED {0} \
   CONFIG.PSU__PCIE__UNCORRECTABL_INT_ERR {0} \
   CONFIG.PSU__PCIE__VENDOR_ID {0x10EE} \
   CONFIG.PSU__PJTAG__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__PL_CLK0_BUF {TRUE} \
   CONFIG.PSU__PL_CLK1_BUF {TRUE} \
   CONFIG.PSU__PL_CLK2_BUF {FALSE} \
   CONFIG.PSU__PL_CLK3_BUF {FALSE} \
   CONFIG.PSU__PL__POWER__ON {1} \
   CONFIG.PSU__PMU_COHERENCY {0} \
   CONFIG.PSU__PMU__AIBACK__ENABLE {0} \
   CONFIG.PSU__PMU__EMIO_GPI__ENABLE {0} \
   CONFIG.PSU__PMU__EMIO_GPO__ENABLE {0} \
   CONFIG.PSU__PMU__GPI0__ENABLE {0} \
   CONFIG.PSU__PMU__GPI1__ENABLE {0} \
   CONFIG.PSU__PMU__GPI2__ENABLE {0} \
   CONFIG.PSU__PMU__GPI3__ENABLE {0} \
   CONFIG.PSU__PMU__GPI4__ENABLE {0} \
   CONFIG.PSU__PMU__GPI5__ENABLE {0} \
   CONFIG.PSU__PMU__GPO0__ENABLE {0} \
   CONFIG.PSU__PMU__GPO1__ENABLE {0} \
   CONFIG.PSU__PMU__GPO2__ENABLE {0} \
   CONFIG.PSU__PMU__GPO3__ENABLE {0} \
   CONFIG.PSU__PMU__GPO4__ENABLE {0} \
   CONFIG.PSU__PMU__GPO5__ENABLE {0} \
   CONFIG.PSU__PMU__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__PMU__PLERROR__ENABLE {0} \
   CONFIG.PSU__PRESET_APPLIED {0} \
   CONFIG.PSU__PROTECTION__DDR_SEGMENTS {NONE} \
   CONFIG.PSU__PROTECTION__DEBUG {0} \
   CONFIG.PSU__PROTECTION__ENABLE {0} \
   CONFIG.PSU__PROTECTION__FPD_SEGMENTS {SA:0xFD1A0000; SIZE:1280; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware         |          SA:0xFD000000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware         |          SA:0xFD010000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware         |          SA:0xFD020000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware         |          SA:0xFD030000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware         |          SA:0xFD040000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware         |          SA:0xFD050000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware         |          SA:0xFD610000; SIZE:512; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware         |          SA:0xFD5D0000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware         |         SA:0xFD1A0000 ; SIZE:1280; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem} \
   CONFIG.PSU__PROTECTION__LOCK_UNUSED_SEGMENTS {0} \
   CONFIG.PSU__PROTECTION__LPD_SEGMENTS {SA:0xFF980000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF5E0000; SIZE:2560; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFFCC0000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF180000; SIZE:768; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF410000; SIZE:640; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFFA70000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF9A0000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware|SA:0xFF5E0000 ; SIZE:2560; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem|SA:0xFFCC0000 ; SIZE:64; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem|SA:0xFF180000 ; SIZE:768; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem|SA:0xFF9A0000 ; SIZE:64; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem} \
   CONFIG.PSU__PROTECTION__MASTERS {USB1:NonSecure;0|USB0:NonSecure;1|S_AXI_LPD:NA;0|S_AXI_HPC1_FPD:NA;0|S_AXI_HPC0_FPD:NA;0|S_AXI_HP3_FPD:NA;0|S_AXI_HP2_FPD:NA;0|S_AXI_HP1_FPD:NA;1|S_AXI_HP0_FPD:NA;1|S_AXI_ACP:NA;0|S_AXI_ACE:NA;0|SD1:NonSecure;1|SD0:NonSecure;1|SATA1:NonSecure;1|SATA0:NonSecure;1|RPU1:Secure;1|RPU0:Secure;1|QSPI:NonSecure;1|PMU:NA;1|PCIe:NonSecure;1|NAND:NonSecure;0|LDMA:NonSecure;1|GPU:NonSecure;1|GEM3:NonSecure;1|GEM2:NonSecure;1|GEM1:NonSecure;1|GEM0:NonSecure;1|FDMA:NonSecure;1|DP:NonSecure;0|DAP:NA;1|Coresight:NA;1|CSU:NA;1|APU:NA;1} \
   CONFIG.PSU__PROTECTION__MASTERS_TZ {GEM0:NonSecure|SD1:NonSecure|GEM2:NonSecure|GEM1:NonSecure|GEM3:NonSecure|PCIe:NonSecure|DP:NonSecure|NAND:NonSecure|GPU:NonSecure|USB1:NonSecure|USB0:NonSecure|LDMA:NonSecure|FDMA:NonSecure|QSPI:NonSecure|SD0:NonSecure} \
   CONFIG.PSU__PROTECTION__OCM_SEGMENTS {NONE} \
   CONFIG.PSU__PROTECTION__PRESUBSYSTEMS {NONE} \
   CONFIG.PSU__PROTECTION__SLAVES { \
     LPD;USB3_1_XHCI;FE300000;FE3FFFFF;0|LPD;USB3_1;FF9E0000;FF9EFFFF;0|LPD;USB3_0_XHCI;FE200000;FE2FFFFF;1|LPD;USB3_0;FF9D0000;FF9DFFFF;1|LPD;UART1;FF010000;FF01FFFF;1|LPD;UART0;FF000000;FF00FFFF;1|LPD;TTC3;FF140000;FF14FFFF;1|LPD;TTC2;FF130000;FF13FFFF;1|LPD;TTC1;FF120000;FF12FFFF;1|LPD;TTC0;FF110000;FF11FFFF;1|FPD;SWDT1;FD4D0000;FD4DFFFF;0|LPD;SWDT0;FF150000;FF15FFFF;0|LPD;SPI1;FF050000;FF05FFFF;0|LPD;SPI0;FF040000;FF04FFFF;0|FPD;SMMU_REG;FD5F0000;FD5FFFFF;1|FPD;SMMU;FD800000;FDFFFFFF;1|FPD;SIOU;FD3D0000;FD3DFFFF;1|FPD;SERDES;FD400000;FD47FFFF;1|LPD;SD1;FF170000;FF17FFFF;1|LPD;SD0;FF160000;FF16FFFF;1|FPD;SATA;FD0C0000;FD0CFFFF;1|LPD;RTC;FFA60000;FFA6FFFF;1|LPD;RSA_CORE;FFCE0000;FFCEFFFF;1|LPD;RPU;FF9A0000;FF9AFFFF;1|LPD;R5_TCM_RAM_GLOBAL;FFE00000;FFE3FFFF;1|LPD;R5_1_Instruction_Cache;FFEC0000;FFECFFFF;1|LPD;R5_1_Data_Cache;FFED0000;FFEDFFFF;1|LPD;R5_1_BTCM_GLOBAL;FFEB0000;FFEBFFFF;1|LPD;R5_1_ATCM_GLOBAL;FFE90000;FFE9FFFF;1|LPD;R5_0_Instruction_Cache;FFE40000;FFE4FFFF;1|LPD;R5_0_Data_Cache;FFE50000;FFE5FFFF;1|LPD;R5_0_BTCM_GLOBAL;FFE20000;FFE2FFFF;1|LPD;R5_0_ATCM_GLOBAL;FFE00000;FFE0FFFF;1|LPD;QSPI_Linear_Address;C0000000;DFFFFFFF;1|LPD;QSPI;FF0F0000;FF0FFFFF;1|LPD;PMU_RAM;FFDC0000;FFDDFFFF;1|LPD;PMU_GLOBAL;FFD80000;FFDBFFFF;1|FPD;PCIE_MAIN;FD0E0000;FD0EFFFF;1|FPD;PCIE_LOW;E0000000;EFFFFFFF;1|FPD;PCIE_HIGH2;8000000000;BFFFFFFFFF;1|FPD;PCIE_HIGH1;600000000;7FFFFFFFF;1|FPD;PCIE_DMA;FD0F0000;FD0FFFFF;1|FPD;PCIE_ATTRIB;FD480000;FD48FFFF;1|LPD;OCM_XMPU_CFG;FFA70000;FFA7FFFF;1|LPD;OCM_SLCR;FF960000;FF96FFFF;1|OCM;OCM;FFFC0000;FFFFFFFF;1|LPD;NAND;FF100000;FF10FFFF;0|LPD;MBISTJTAG;FFCF0000;FFCFFFFF;1|LPD;LPD_XPPU_SINK;FF9C0000;FF9CFFFF;1|LPD;LPD_XPPU;FF980000;FF98FFFF;1|LPD;LPD_SLCR_SECURE;FF4B0000;FF4DFFFF;1|LPD;LPD_SLCR;FF410000;FF4AFFFF;1|LPD;LPD_GPV;FE100000;FE1FFFFF;1|LPD;LPD_DMA_7;FFAF0000;FFAFFFFF;1|LPD;LPD_DMA_6;FFAE0000;FFAEFFFF;1|LPD;LPD_DMA_5;FFAD0000;FFADFFFF;1|LPD;LPD_DMA_4;FFAC0000;FFACFFFF;1|LPD;LPD_DMA_3;FFAB0000;FFABFFFF;1|LPD;LPD_DMA_2;FFAA0000;FFAAFFFF;1|LPD;LPD_DMA_1;FFA90000;FFA9FFFF;1|LPD;LPD_DMA_0;FFA80000;FFA8FFFF;1|LPD;IPI_CTRL;FF380000;FF3FFFFF;1|LPD;IOU_SLCR;FF180000;FF23FFFF;1|LPD;IOU_SECURE_SLCR;FF240000;FF24FFFF;1|LPD;IOU_SCNTRS;FF260000;FF26FFFF;1|LPD;IOU_SCNTR;FF250000;FF25FFFF;1|LPD;IOU_GPV;FE000000;FE0FFFFF;1|LPD;I2C1;FF030000;FF03FFFF;1|LPD;I2C0;FF020000;FF02FFFF;0|FPD;GPU;FD4B0000;FD4BFFFF;1|LPD;GPIO;FF0A0000;FF0AFFFF;1|LPD;GEM3;FF0E0000;FF0EFFFF;1|LPD;GEM2;FF0D0000;FF0DFFFF;1|LPD;GEM1;FF0C0000;FF0CFFFF;1|LPD;GEM0;FF0B0000;FF0BFFFF;1|FPD;FPD_XMPU_SINK;FD4F0000;FD4FFFFF;1|FPD;FPD_XMPU_CFG;FD5D0000;FD5DFFFF;1|FPD;FPD_SLCR_SECURE;FD690000;FD6CFFFF;1|FPD;FPD_SLCR;FD610000;FD68FFFF;1|FPD;FPD_DMA_CH7;FD570000;FD57FFFF;1|FPD;FPD_DMA_CH6;FD560000;FD56FFFF;1|FPD;FPD_DMA_CH5;FD550000;FD55FFFF;1|FPD;FPD_DMA_CH4;FD540000;FD54FFFF;1|FPD;FPD_DMA_CH3;FD530000;FD53FFFF;1|FPD;FPD_DMA_CH2;FD520000;FD52FFFF;1|FPD;FPD_DMA_CH1;FD510000;FD51FFFF;1|FPD;FPD_DMA_CH0;FD500000;FD50FFFF;1|LPD;EFUSE;FFCC0000;FFCCFFFF;1|FPD;Display Port;FD4A0000;FD4AFFFF;0|FPD;DPDMA;FD4C0000;FD4CFFFF;0|FPD;DDR_XMPU5_CFG;FD050000;FD05FFFF;1|FPD;DDR_XMPU4_CFG;FD040000;FD04FFFF;1|FPD;DDR_XMPU3_CFG;FD030000;FD03FFFF;1|FPD;DDR_XMPU2_CFG;FD020000;FD02FFFF;1|FPD;DDR_XMPU1_CFG;FD010000;FD01FFFF;1|FPD;DDR_XMPU0_CFG;FD000000;FD00FFFF;1|FPD;DDR_QOS_CTRL;FD090000;FD09FFFF;1|FPD;DDR_PHY;FD080000;FD08FFFF;1|DDR;DDR_LOW;0;7FFFFFFF;1|DDR;DDR_HIGH;800000000;87FFFFFFF;1|FPD;DDDR_CTRL;FD070000;FD070FFF;1|LPD;Coresight;FE800000;FEFFFFFF;1|LPD;CSU_DMA;FFC80000;FFC9FFFF;1|LPD;CSU;FFCA0000;FFCAFFFF;1|LPD;CRL_APB;FF5E0000;FF85FFFF;1|FPD;CRF_APB;FD1A0000;FD2DFFFF;1|FPD;CCI_REG;FD5E0000;FD5EFFFF;1|LPD;CAN1;FF070000;FF07FFFF;0|LPD;CAN0;FF060000;FF06FFFF;0|FPD;APU;FD5C0000;FD5CFFFF;1|LPD;APM_INTC_IOU;FFA20000;FFA2FFFF;1|LPD;APM_FPD_LPD;FFA30000;FFA3FFFF;1|FPD;APM_5;FD490000;FD49FFFF;1|FPD;APM_0;FD0B0000;FD0BFFFF;1|LPD;APM2;FFA10000;FFA1FFFF;1|LPD;APM1;FFA00000;FFA0FFFF;1|LPD;AMS;FFA50000;FFA5FFFF;1|FPD;AFI_5;FD3B0000;FD3BFFFF;1|FPD;AFI_4;FD3A0000;FD3AFFFF;1|FPD;AFI_3;FD390000;FD39FFFF;1|FPD;AFI_2;FD380000;FD38FFFF;1|FPD;AFI_1;FD370000;FD37FFFF;1|FPD;AFI_0;FD360000;FD36FFFF;1|LPD;AFIFM6;FF9B0000;FF9BFFFF;1|FPD;ACPU_GIC;F9010000;F907FFFF;1 \
   } \
   CONFIG.PSU__PROTECTION__SUBSYSTEMS {PMU Firmware:PMU|Secure Subsystem:} \
   CONFIG.PSU__PSS_ALT_REF_CLK__ENABLE {0} \
   CONFIG.PSU__PSS_ALT_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.33333} \
   CONFIG.PSU__QSPI_COHERENCY {0} \
   CONFIG.PSU__QSPI_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {0} \
   CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} \
   CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__QSPI__PERIPHERAL__IO {MIO 0 .. 5} \
   CONFIG.PSU__QSPI__PERIPHERAL__MODE {Single} \
   CONFIG.PSU__REPORT__DBGLOG {0} \
   CONFIG.PSU__RPU_COHERENCY {0} \
   CONFIG.PSU__RPU__POWER__ON {1} \
   CONFIG.PSU__SATA__LANE0__ENABLE {1} \
   CONFIG.PSU__SATA__LANE0__IO {GT Lane2} \
   CONFIG.PSU__SATA__LANE1__ENABLE {1} \
   CONFIG.PSU__SATA__LANE1__IO {GT Lane3} \
   CONFIG.PSU__SATA__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SATA__REF_CLK_FREQ {125} \
   CONFIG.PSU__SATA__REF_CLK_SEL {Ref Clk2} \
   CONFIG.PSU__SAXIGP0__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP1__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP2__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP3__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP4__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP5__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP6__DATA_WIDTH {128} \
   CONFIG.PSU__SD0_COHERENCY {0} \
   CONFIG.PSU__SD0_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__SD0__DATA_TRANSFER_MODE {8Bit} \
   CONFIG.PSU__SD0__GRP_CD__ENABLE {0} \
   CONFIG.PSU__SD0__GRP_POW__ENABLE {1} \
   CONFIG.PSU__SD0__GRP_POW__IO {MIO 23} \
   CONFIG.PSU__SD0__GRP_WP__ENABLE {0} \
   CONFIG.PSU__SD0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SD0__PERIPHERAL__IO {MIO 13 .. 22} \
   CONFIG.PSU__SD0__RESET__ENABLE {1} \
   CONFIG.PSU__SD0__SLOT_TYPE {eMMC} \
   CONFIG.PSU__SD1_COHERENCY {0} \
   CONFIG.PSU__SD1_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__SD1__DATA_TRANSFER_MODE {4Bit} \
   CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
   CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} \
   CONFIG.PSU__SD1__GRP_POW__ENABLE {0} \
   CONFIG.PSU__SD1__GRP_WP__ENABLE {0} \
   CONFIG.PSU__SD1__GRP_WP__IO {<Select>} \
   CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 46 .. 51} \
   CONFIG.PSU__SD1__RESET__ENABLE {0} \
   CONFIG.PSU__SD1__SLOT_TYPE {SD 2.0} \
   CONFIG.PSU__SPI0_LOOP_SPI1__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS0__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS1__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS2__ENABLE {0} \
   CONFIG.PSU__SPI0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SPI0__PERIPHERAL__IO {<Select>} \
   CONFIG.PSU__SPI1__GRP_SS0__ENABLE {0} \
   CONFIG.PSU__SPI1__GRP_SS1__ENABLE {0} \
   CONFIG.PSU__SPI1__GRP_SS2__ENABLE {0} \
   CONFIG.PSU__SPI1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SWDT0__CLOCK__ENABLE {0} \
   CONFIG.PSU__SWDT0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SWDT0__PERIPHERAL__IO {NA} \
   CONFIG.PSU__SWDT0__RESET__ENABLE {0} \
   CONFIG.PSU__SWDT1__CLOCK__ENABLE {0} \
   CONFIG.PSU__SWDT1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SWDT1__PERIPHERAL__IO {NA} \
   CONFIG.PSU__SWDT1__RESET__ENABLE {0} \
   CONFIG.PSU__TCM0A__POWER__ON {1} \
   CONFIG.PSU__TCM0B__POWER__ON {1} \
   CONFIG.PSU__TCM1A__POWER__ON {1} \
   CONFIG.PSU__TCM1B__POWER__ON {1} \
   CONFIG.PSU__TESTSCAN__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__TRACE_PIPELINE_WIDTH {8} \
   CONFIG.PSU__TRACE__INTERNAL_WIDTH {32} \
   CONFIG.PSU__TRACE__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__TRISTATE__INVERTED {1} \
   CONFIG.PSU__TSU__BUFG_PORT_PAIR {0} \
   CONFIG.PSU__TTC0__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC0__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC0__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC1__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC1__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC1__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC2__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC2__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC2__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC2__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC3__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC3__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC3__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__UART0_LOOP_UART1__ENABLE {0} \
   CONFIG.PSU__UART0__BAUD_RATE {115200} \
   CONFIG.PSU__UART0__MODEM__ENABLE {0} \
   CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 42 .. 43} \
   CONFIG.PSU__UART1__BAUD_RATE {115200} \
   CONFIG.PSU__UART1__MODEM__ENABLE {0} \
   CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__UART1__PERIPHERAL__IO {MIO 40 .. 41} \
   CONFIG.PSU__USB0_COHERENCY {0} \
   CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__USB0__PERIPHERAL__IO {MIO 52 .. 63} \
   CONFIG.PSU__USB0__REF_CLK_FREQ {26} \
   CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk1} \
   CONFIG.PSU__USB0__RESET__ENABLE {1} \
   CONFIG.PSU__USB0__RESET__IO {MIO 31} \
   CONFIG.PSU__USB1_COHERENCY {0} \
   CONFIG.PSU__USB1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__USB1__RESET__ENABLE {0} \
   CONFIG.PSU__USB2_0__EMIO__ENABLE {0} \
   CONFIG.PSU__USB2_1__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_0__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane1} \
   CONFIG.PSU__USB3_1__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__USB__RESET__MODE {Shared MIO Pin} \
   CONFIG.PSU__USB__RESET__POLARITY {Active Low} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP0 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP1 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP2 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP3 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP4 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP5 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP6 {0} \
   CONFIG.PSU__USE__ADMA {0} \
   CONFIG.PSU__USE__APU_LEGACY_INTERRUPT {0} \
   CONFIG.PSU__USE__AUDIO {0} \
   CONFIG.PSU__USE__CLK {0} \
   CONFIG.PSU__USE__CLK0 {0} \
   CONFIG.PSU__USE__CLK1 {0} \
   CONFIG.PSU__USE__CLK2 {0} \
   CONFIG.PSU__USE__CLK3 {0} \
   CONFIG.PSU__USE__CROSS_TRIGGER {0} \
   CONFIG.PSU__USE__DDR_INTF_REQUESTED {0} \
   CONFIG.PSU__USE__DEBUG__TEST {0} \
   CONFIG.PSU__USE__EVENT_RPU {0} \
   CONFIG.PSU__USE__FABRIC__RST {1} \
   CONFIG.PSU__USE__FTM {0} \
   CONFIG.PSU__USE__GDMA {0} \
   CONFIG.PSU__USE__IRQ {0} \
   CONFIG.PSU__USE__IRQ0 {1} \
   CONFIG.PSU__USE__IRQ1 {1} \
   CONFIG.PSU__USE__M_AXI_GP0 {1} \
   CONFIG.PSU__USE__M_AXI_GP1 {1} \
   CONFIG.PSU__USE__M_AXI_GP2 {0} \
   CONFIG.PSU__USE__PROC_EVENT_BUS {0} \
   CONFIG.PSU__USE__RPU_LEGACY_INTERRUPT {0} \
   CONFIG.PSU__USE__RST0 {0} \
   CONFIG.PSU__USE__RST1 {0} \
   CONFIG.PSU__USE__RST2 {0} \
   CONFIG.PSU__USE__RST3 {0} \
   CONFIG.PSU__USE__RTC {0} \
   CONFIG.PSU__USE__STM {0} \
   CONFIG.PSU__USE__S_AXI_ACE {0} \
   CONFIG.PSU__USE__S_AXI_ACP {0} \
   CONFIG.PSU__USE__S_AXI_GP0 {0} \
   CONFIG.PSU__USE__S_AXI_GP1 {0} \
   CONFIG.PSU__USE__S_AXI_GP2 {1} \
   CONFIG.PSU__USE__S_AXI_GP3 {1} \
   CONFIG.PSU__USE__S_AXI_GP4 {0} \
   CONFIG.PSU__USE__S_AXI_GP5 {0} \
   CONFIG.PSU__USE__S_AXI_GP6 {0} \
   CONFIG.PSU__USE__USB3_0_HUB {0} \
   CONFIG.PSU__USE__USB3_1_HUB {0} \
   CONFIG.PSU__USE__VIDEO {0} \
   CONFIG.PSU__VIDEO_REF_CLK__ENABLE {0} \
   CONFIG.PSU__VIDEO_REF_CLK__FREQMHZ {33.333} \
   CONFIG.QSPI_BOARD_INTERFACE {custom} \
   CONFIG.SATA_BOARD_INTERFACE {custom} \
   CONFIG.SD0_BOARD_INTERFACE {custom} \
   CONFIG.SD1_BOARD_INTERFACE {custom} \
   CONFIG.SPI0_BOARD_INTERFACE {custom} \
   CONFIG.SPI1_BOARD_INTERFACE {custom} \
   CONFIG.SUBPRESET1 {Custom} \
   CONFIG.SUBPRESET2 {Custom} \
   CONFIG.SWDT0_BOARD_INTERFACE {custom} \
   CONFIG.SWDT1_BOARD_INTERFACE {custom} \
   CONFIG.TRACE_BOARD_INTERFACE {custom} \
   CONFIG.TTC0_BOARD_INTERFACE {custom} \
   CONFIG.TTC1_BOARD_INTERFACE {custom} \
   CONFIG.TTC2_BOARD_INTERFACE {custom} \
   CONFIG.TTC3_BOARD_INTERFACE {custom} \
   CONFIG.UART0_BOARD_INTERFACE {custom} \
   CONFIG.UART1_BOARD_INTERFACE {custom} \
   CONFIG.USB0_BOARD_INTERFACE {custom} \
   CONFIG.USB1_BOARD_INTERFACE {custom} \
 ] $zynq_ultra_ps_e_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins ps8_1_axi_periph/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM1_FPD]
  connect_bd_intf_net -intf_net S00_AXI_2 [get_bd_intf_pins axi_clu_ipcore/M00_AXI] [get_bd_intf_pins axi_xc_canfd_ipcore/S00_AXI]
  connect_bd_intf_net -intf_net S00_AXI_3 [get_bd_intf_pins axi_xc_mac2_ipcore/S00_AXI] [get_bd_intf_pins ps8_1_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net S00_AXI_4 [get_bd_intf_pins axi_clu_ipcore/M02_AXI] [get_bd_intf_pins axi_xc_uart_ipcore/S00_AXI]
  connect_bd_intf_net -intf_net S00_AXI_5 [get_bd_intf_pins axi_xc_mac1_ipcore/S00_AXI] [get_bd_intf_pins ps8_1_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net S00_AXI_6 [get_bd_intf_pins axi_xc_mac0_ipcore/S00_AXI] [get_bd_intf_pins ps8_1_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins axi_clu_ipcore/S01_AXI] [get_bd_intf_pins clu_0/m_axi_clu_addr]
  connect_bd_intf_net -intf_net S01_AXI_2 [get_bd_intf_pins axi_xc_mac2_ipcore/S01_AXI] [get_bd_intf_pins mac_logger_2/m_axi_mac_fifo]
  connect_bd_intf_net -intf_net S01_AXI_5 [get_bd_intf_pins axi_xc_ps_mac/S01_AXI] [get_bd_intf_pins mac_logger_1/m_axi_ps]
  connect_bd_intf_net -intf_net S01_AXI_6 [get_bd_intf_pins axi_xc_mac1_ipcore/S01_AXI] [get_bd_intf_pins mac_logger_1/m_axi_mac_fifo]
  connect_bd_intf_net -intf_net S01_AXI_7 [get_bd_intf_pins axi_xc_mac0_ipcore/S01_AXI] [get_bd_intf_pins mac_logger_0/m_axi_mac_fifo]
  connect_bd_intf_net -intf_net S02_AXI_2 [get_bd_intf_pins axi_xc_ps_mac/S02_AXI] [get_bd_intf_pins mac_logger_0/m_axi_ps]
  connect_bd_intf_net -intf_net axi_clu_ipcore_M01_AXI [get_bd_intf_pins axi_clu_ipcore/M01_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/S00_AXI]
  connect_bd_intf_net -intf_net axi_ethernet_1_m_axis_rxd [get_bd_intf_pins axi_ethernet_1/m_axis_rxd] [get_bd_intf_pins axi_ethernet_sw1_fifo1/AXI_STR_RXD]
  connect_bd_intf_net -intf_net axi_ethernet_1_mdio [get_bd_intf_ports mdio_sw1] [get_bd_intf_pins axi_ethernet_1/mdio]
  connect_bd_intf_net -intf_net axi_ethernet_1_sgmii [get_bd_intf_ports sgmii_sw1] [get_bd_intf_pins axi_ethernet_1/sgmii]
  connect_bd_intf_net -intf_net axi_ethernet_2_m_axis_rxd [get_bd_intf_pins axi_ethernet_2/m_axis_rxd] [get_bd_intf_pins axi_ethernet_sw2_fifo1/AXI_STR_RXD]
  connect_bd_intf_net -intf_net axi_ethernet_2_mdio [get_bd_intf_ports mdio_sw2] [get_bd_intf_pins axi_ethernet_2/mdio]
  connect_bd_intf_net -intf_net axi_ethernet_2_sgmii [get_bd_intf_ports sgmii_sw2] [get_bd_intf_pins axi_ethernet_2/sgmii]
  connect_bd_intf_net -intf_net axi_ethernet_3_fifo_AXI_STR_TXC [get_bd_intf_pins axi_ethernet_1/s_axis_txc] [get_bd_intf_pins axi_ethernet_sw1_fifo/AXI_STR_TXC]
  connect_bd_intf_net -intf_net axi_ethernet_3_fifo_AXI_STR_TXD [get_bd_intf_pins axi_ethernet_1/s_axis_txd] [get_bd_intf_pins axi_ethernet_sw1_fifo/AXI_STR_TXD]
  connect_bd_intf_net -intf_net axi_ethernet_3_m_axis_rxd [get_bd_intf_pins axi_ethernet_0/m_axis_rxd] [get_bd_intf_pins axi_ethernet_sw0_fifo1/AXI_STR_RXD]
  connect_bd_intf_net -intf_net axi_ethernet_3_mdio [get_bd_intf_ports mdio_sw0] [get_bd_intf_pins axi_ethernet_0/mdio]
  connect_bd_intf_net -intf_net axi_ethernet_3_sgmii [get_bd_intf_ports sgmii_sw0] [get_bd_intf_pins axi_ethernet_0/sgmii]
  connect_bd_intf_net -intf_net axi_ethernet_4_fifo_AXI_STR_TXC [get_bd_intf_pins axi_ethernet_2/s_axis_txc] [get_bd_intf_pins axi_ethernet_sw2_fifo/AXI_STR_TXC]
  connect_bd_intf_net -intf_net axi_ethernet_4_fifo_AXI_STR_TXD [get_bd_intf_pins axi_ethernet_2/s_axis_txd] [get_bd_intf_pins axi_ethernet_sw2_fifo/AXI_STR_TXD]
  connect_bd_intf_net -intf_net axi_ethernet_sw0_fifo_AXI_STR_TXC [get_bd_intf_pins axi_ethernet_0/s_axis_txc] [get_bd_intf_pins axi_ethernet_sw0_fifo/AXI_STR_TXC]
  connect_bd_intf_net -intf_net axi_ethernet_sw0_fifo_AXI_STR_TXD [get_bd_intf_pins axi_ethernet_0/s_axis_txd] [get_bd_intf_pins axi_ethernet_sw0_fifo/AXI_STR_TXD]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M00_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M00_AXI] [get_bd_intf_pins canfd_0/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M01_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M01_AXI] [get_bd_intf_pins canfd_1/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M02_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M02_AXI] [get_bd_intf_pins canfd_2/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M03_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M03_AXI] [get_bd_intf_pins canfd_5/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M04_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M04_AXI] [get_bd_intf_pins canfd_6/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M05_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M05_AXI] [get_bd_intf_pins canfd_7/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M06_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M06_AXI] [get_bd_intf_pins canfd_8/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M07_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M07_AXI] [get_bd_intf_pins canfd_9/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M08_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M08_AXI] [get_bd_intf_pins canfd_10/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M09_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M09_AXI] [get_bd_intf_pins canfd_11/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M10_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M10_AXI] [get_bd_intf_pins canfd_3/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_canfd_ipcore_M11_AXI [get_bd_intf_pins axi_xc_canfd_ipcore/M11_AXI] [get_bd_intf_pins canfd_4/CAN_S_AXI_LITE]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M00_AXI [get_bd_intf_pins CHIPDLIN_0/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M00_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M01_AXI [get_bd_intf_pins CHIPDLIN_1/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M01_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M02_AXI [get_bd_intf_pins CHIPDLIN_2/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M02_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M03_AXI [get_bd_intf_pins CHIPDLIN_3/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M03_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M04_AXI [get_bd_intf_pins CHIPDLIN_4/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M04_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M05_AXI [get_bd_intf_pins CHIPDLIN_5/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M05_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M06_AXI [get_bd_intf_pins CHIPDLIN_6/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M06_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M07_AXI [get_bd_intf_pins CHIPDLIN_7/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M07_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M08_AXI [get_bd_intf_pins CHIPDLIN_8/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M08_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M09_AXI [get_bd_intf_pins CHIPDLIN_9/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M09_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M10_AXI [get_bd_intf_pins CHIPDLIN_10/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M10_AXI]
  connect_bd_intf_net -intf_net axi_xc_lin_ipcore_M11_AXI [get_bd_intf_pins CHIPDLIN_11/S00_AXI] [get_bd_intf_pins axi_xc_lin_ipcore/M11_AXI]
  connect_bd_intf_net -intf_net axi_xc_mac0_ipcore_M00_AXI [get_bd_intf_pins axi_ethernet_sw0_fifo/S_AXI] [get_bd_intf_pins axi_xc_mac0_ipcore/M00_AXI]
  connect_bd_intf_net -intf_net axi_xc_mac0_ipcore_M01_AXI [get_bd_intf_pins axi_ethernet_0/s_axi] [get_bd_intf_pins axi_xc_mac0_ipcore/M01_AXI]
  connect_bd_intf_net -intf_net axi_xc_mac0_ipcore_M02_AXI [get_bd_intf_pins axi_ethernet_sw0_fifo1/S_AXI] [get_bd_intf_pins axi_xc_mac0_ipcore/M02_AXI]
  connect_bd_intf_net -intf_net axi_xc_mac1_ipcore_M00_AXI [get_bd_intf_pins axi_ethernet_sw1_fifo/S_AXI] [get_bd_intf_pins axi_xc_mac1_ipcore/M00_AXI]
  connect_bd_intf_net -intf_net axi_xc_mac1_ipcore_M01_AXI [get_bd_intf_pins axi_ethernet_1/s_axi] [get_bd_intf_pins axi_xc_mac1_ipcore/M01_AXI]
  connect_bd_intf_net -intf_net axi_xc_mac1_ipcore_M02_AXI [get_bd_intf_pins axi_ethernet_sw1_fifo1/S_AXI] [get_bd_intf_pins axi_xc_mac1_ipcore/M02_AXI]
  connect_bd_intf_net -intf_net axi_xc_mac2_ipcore_M00_AXI [get_bd_intf_pins axi_ethernet_sw2_fifo/S_AXI] [get_bd_intf_pins axi_xc_mac2_ipcore/M00_AXI]
  connect_bd_intf_net -intf_net axi_xc_mac2_ipcore_M01_AXI [get_bd_intf_pins axi_ethernet_2/s_axi] [get_bd_intf_pins axi_xc_mac2_ipcore/M01_AXI]
  connect_bd_intf_net -intf_net axi_xc_mac2_ipcore_M02_AXI [get_bd_intf_pins axi_ethernet_sw2_fifo1/S_AXI] [get_bd_intf_pins axi_xc_mac2_ipcore/M02_AXI]
  connect_bd_intf_net -intf_net axi_xc_ps_clu_M00_AXI [get_bd_intf_pins axi_xc_ps_clu/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP0_FPD]
  connect_bd_intf_net -intf_net axi_xc_ps_mac_M00_AXI [get_bd_intf_pins axi_xc_ps_mac/M00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/S_AXI_HP1_FPD]
  connect_bd_intf_net -intf_net axi_xc_uart_ipcore_M00_AXI [get_bd_intf_pins axi_uart16550_0/S_AXI] [get_bd_intf_pins axi_xc_uart_ipcore/M00_AXI]
  connect_bd_intf_net -intf_net axi_xc_uart_ipcore_M01_AXI [get_bd_intf_pins axi_uart16550_1/S_AXI] [get_bd_intf_pins axi_xc_uart_ipcore/M01_AXI]
  connect_bd_intf_net -intf_net axi_xc_uart_ipcore_M02_AXI [get_bd_intf_pins axi_uart16550_2/S_AXI] [get_bd_intf_pins axi_xc_uart_ipcore/M02_AXI]
  connect_bd_intf_net -intf_net axi_xc_uart_ipcore_M03_AXI [get_bd_intf_pins axi_uart16550_3/S_AXI] [get_bd_intf_pins axi_xc_uart_ipcore/M03_AXI]
  connect_bd_intf_net -intf_net axi_xc_uart_ipcore_M04_AXI [get_bd_intf_pins axi_uart16550_4/S_AXI] [get_bd_intf_pins axi_xc_uart_ipcore/M04_AXI]
  connect_bd_intf_net -intf_net axi_xc_uart_ipcore_M05_AXI [get_bd_intf_pins axi_uart16550_5/S_AXI] [get_bd_intf_pins axi_xc_uart_ipcore/M05_AXI]
  connect_bd_intf_net -intf_net axi_xc_uart_ipcore_M06_AXI [get_bd_intf_pins axi_uart16550_6/S_AXI] [get_bd_intf_pins axi_xc_uart_ipcore/M06_AXI]
  connect_bd_intf_net -intf_net axi_xc_uart_ipcore_M07_AXI [get_bd_intf_pins axi_uart16550_7/S_AXI] [get_bd_intf_pins axi_xc_uart_ipcore/M07_AXI]
  connect_bd_intf_net -intf_net clu_0_m_axi_ps_ddr [get_bd_intf_pins axi_xc_ps_clu/S00_AXI] [get_bd_intf_pins clu_0/m_axi_ps_ddr]
  connect_bd_intf_net -intf_net gmii_to_rgmii_0_MDIO_PHY [get_bd_intf_ports mdio_ps_enet0] [get_bd_intf_pins gmii_to_rgmii_0/MDIO_PHY]
  connect_bd_intf_net -intf_net gmii_to_rgmii_0_RGMII [get_bd_intf_ports ps_enet0] [get_bd_intf_pins gmii_to_rgmii_0/RGMII]
  connect_bd_intf_net -intf_net gmii_to_rgmii_1_MDIO_PHY [get_bd_intf_ports mdio_ps_enet1] [get_bd_intf_pins gmii_to_rgmii_1/MDIO_PHY]
  connect_bd_intf_net -intf_net gmii_to_rgmii_1_RGMII [get_bd_intf_ports ps_enet1] [get_bd_intf_pins gmii_to_rgmii_1/RGMII]
  connect_bd_intf_net -intf_net gmii_to_rgmii_2_MDIO_PHY [get_bd_intf_ports mdio_ps_enet2] [get_bd_intf_pins gmii_to_rgmii_2/MDIO_PHY]
  connect_bd_intf_net -intf_net gmii_to_rgmii_2_RGMII [get_bd_intf_ports ps_enet2] [get_bd_intf_pins gmii_to_rgmii_2/RGMII]
  connect_bd_intf_net -intf_net mac_logger_0_m_axi_fifo_axi_full [get_bd_intf_pins axi_ethernet_sw0_fifo1/S_AXI_FULL] [get_bd_intf_pins mac_logger_0/m_axi_fifo_axi_full]
  connect_bd_intf_net -intf_net mac_logger_0_m_axi_ps [get_bd_intf_pins axi_xc_ps_mac/S00_AXI] [get_bd_intf_pins mac_logger_2/m_axi_ps]
  connect_bd_intf_net -intf_net mac_logger_1_m_axi_fifo_axi_full [get_bd_intf_pins axi_ethernet_sw1_fifo1/S_AXI_FULL] [get_bd_intf_pins mac_logger_1/m_axi_fifo_axi_full]
  connect_bd_intf_net -intf_net mac_logger_2_m_axi_fifo_axi_full [get_bd_intf_pins axi_ethernet_sw2_fifo1/S_AXI_FULL] [get_bd_intf_pins mac_logger_2/m_axi_fifo_axi_full]
  connect_bd_intf_net -intf_net mgt_clk_sw0_1 [get_bd_intf_ports mgt_clk_sw0] [get_bd_intf_pins axi_ethernet_0/mgt_clk]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M00_AXI [get_bd_intf_pins axi_clu_ipcore/S00_AXI] [get_bd_intf_pins ps8_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M01_AXI [get_bd_intf_pins clu_0/s_axi_EN] [get_bd_intf_pins ps8_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M02_AXI [get_bd_intf_pins ps8_0_axi_periph/M02_AXI] [get_bd_intf_pins timestamp_0/s_axi_ts_base]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M03_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins ps8_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps8_0_axi_periph_M04_AXI [get_bd_intf_pins axi_uartlite_1/S_AXI] [get_bd_intf_pins ps8_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net ps8_1_axi_periph_M03_AXI [get_bd_intf_pins mac_logger_0/s_axi_axilites] [get_bd_intf_pins ps8_1_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps8_1_axi_periph_M04_AXI [get_bd_intf_pins mac_logger_1/s_axi_axilites] [get_bd_intf_pins ps8_1_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net ps8_1_axi_periph_M05_AXI [get_bd_intf_pins mac_logger_2/s_axi_axilites] [get_bd_intf_pins ps8_1_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_GMII_ENET0 [get_bd_intf_pins gmii_to_rgmii_0/GMII] [get_bd_intf_pins zynq_ultra_ps_e_0/GMII_ENET0]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_GMII_ENET1 [get_bd_intf_pins gmii_to_rgmii_1/GMII] [get_bd_intf_pins zynq_ultra_ps_e_0/GMII_ENET1]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_GMII_ENET2 [get_bd_intf_pins gmii_to_rgmii_2/GMII] [get_bd_intf_pins zynq_ultra_ps_e_0/GMII_ENET2]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_GPIO_0 [get_bd_intf_ports GPIO] [get_bd_intf_pins zynq_ultra_ps_e_0/GPIO_0]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_MDIO_ENET0 [get_bd_intf_pins gmii_to_rgmii_0/MDIO_GEM] [get_bd_intf_pins zynq_ultra_ps_e_0/MDIO_ENET0]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_MDIO_ENET1 [get_bd_intf_pins gmii_to_rgmii_1/MDIO_GEM] [get_bd_intf_pins zynq_ultra_ps_e_0/MDIO_ENET1]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_MDIO_ENET2 [get_bd_intf_pins gmii_to_rgmii_2/MDIO_GEM] [get_bd_intf_pins zynq_ultra_ps_e_0/MDIO_ENET2]
  connect_bd_intf_net -intf_net zynq_ultra_ps_e_0_M_AXI_HPM0_FPD [get_bd_intf_pins ps8_0_axi_periph/S00_AXI] [get_bd_intf_pins zynq_ultra_ps_e_0/M_AXI_HPM0_FPD]

  # Create port connections
  connect_bd_net -net CHIPDLIN_10_txdo [get_bd_ports lin_tx_9] [get_bd_pins CHIPDLIN_9/txdo]
  connect_bd_net -net CHIPDLIN_11_txdo [get_bd_ports lin_tx_10] [get_bd_pins CHIPDLIN_10/txdo]
  connect_bd_net -net CHIPDLIN_12_txdo [get_bd_ports lin_tx_11] [get_bd_pins CHIPDLIN_11/txdo]
  connect_bd_net -net CHIPDLIN_1_txdo [get_bd_ports lin_tx_0] [get_bd_pins CHIPDLIN_0/txdo]
  connect_bd_net -net CHIPDLIN_2_txdo [get_bd_ports lin_tx_1] [get_bd_pins CHIPDLIN_1/txdo]
  connect_bd_net -net CHIPDLIN_3_txdo [get_bd_ports lin_tx_2] [get_bd_pins CHIPDLIN_2/txdo]
  connect_bd_net -net CHIPDLIN_4_txdo [get_bd_ports lin_tx_3] [get_bd_pins CHIPDLIN_3/txdo]
  connect_bd_net -net CHIPDLIN_5_txdo [get_bd_ports lin_tx_4] [get_bd_pins CHIPDLIN_4/txdo]
  connect_bd_net -net CHIPDLIN_6_txdo [get_bd_ports lin_tx_5] [get_bd_pins CHIPDLIN_5/txdo]
  connect_bd_net -net CHIPDLIN_7_txdo [get_bd_ports lin_tx_6] [get_bd_pins CHIPDLIN_6/txdo]
  connect_bd_net -net CHIPDLIN_8_txdo [get_bd_ports lin_tx_7] [get_bd_pins CHIPDLIN_7/txdo]
  connect_bd_net -net CHIPDLIN_9_txdo [get_bd_ports lin_tx_8] [get_bd_pins CHIPDLIN_8/txdo]
  connect_bd_net -net Net [get_bd_pins axi_ethernet_2/rxuserclk] [get_bd_pins axi_ethernet_2/rxuserclk2] [get_bd_pins util_ds_buf_1/BUFG_GT_O]
  connect_bd_net -net Net1 [get_bd_pins axi_ethernet_0/ref_clk] [get_bd_pins axi_ethernet_1/ref_clk] [get_bd_pins axi_ethernet_2/ref_clk] [get_bd_pins clk_wiz_0/clk_out3]
  connect_bd_net -net Net2 [get_bd_pins gmii_to_rgmii_0/rx_reset] [get_bd_pins gmii_to_rgmii_0/tx_reset] [get_bd_pins gmii_to_rgmii_1/rx_reset] [get_bd_pins gmii_to_rgmii_1/tx_reset] [get_bd_pins gmii_to_rgmii_2/rx_reset] [get_bd_pins gmii_to_rgmii_2/tx_reset] [get_bd_pins rst_ps8_0_100M/peripheral_reset]
  connect_bd_net -net Net3 [get_bd_pins gmii_to_rgmii_0/ref_clk_out] [get_bd_pins gmii_to_rgmii_1/ref_clk_in] [get_bd_pins gmii_to_rgmii_2/ref_clk_in]
  connect_bd_net -net Net4 [get_bd_pins gmii_to_rgmii_0/gmii_clk_25m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_25m_in] [get_bd_pins gmii_to_rgmii_2/gmii_clk_25m_in]
  connect_bd_net -net Net5 [get_bd_pins gmii_to_rgmii_0/gmii_clk_125m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_125m_in] [get_bd_pins gmii_to_rgmii_2/gmii_clk_125m_in]
  connect_bd_net -net Net6 [get_bd_pins gmii_to_rgmii_0/gmii_clk_2_5m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_2_5m_in] [get_bd_pins gmii_to_rgmii_2/gmii_clk_2_5m_in]
  connect_bd_net -net Net7 [get_bd_pins axi_ethernet_1/rxuserclk] [get_bd_pins axi_ethernet_1/rxuserclk2] [get_bd_pins util_ds_buf_0/BUFG_GT_O]
  connect_bd_net -net axi_ethernet_0_gtref_clk_out [get_bd_pins axi_ethernet_0/gtref_clk_out] [get_bd_pins axi_ethernet_1/gtref_clk] [get_bd_pins axi_ethernet_2/gtref_clk]
  connect_bd_net -net axi_ethernet_0_mmcm_locked_out [get_bd_pins axi_ethernet_0/mmcm_locked_out] [get_bd_pins axi_ethernet_1/mmcm_locked] [get_bd_pins axi_ethernet_2/mmcm_locked]
  connect_bd_net -net axi_ethernet_0_pma_reset_out [get_bd_pins axi_ethernet_0/pma_reset_out] [get_bd_pins axi_ethernet_1/pma_reset] [get_bd_pins axi_ethernet_2/pma_reset]
  connect_bd_net -net axi_ethernet_0_userclk2_out [get_bd_pins axi_ethernet_0/userclk2_out] [get_bd_pins axi_ethernet_1/userclk2] [get_bd_pins axi_ethernet_2/userclk2]
  connect_bd_net -net axi_ethernet_0_userclk_out [get_bd_pins axi_ethernet_0/userclk_out] [get_bd_pins axi_ethernet_1/userclk] [get_bd_pins axi_ethernet_2/userclk]
  connect_bd_net -net axi_ethernet_1_rxoutclk [get_bd_pins axi_ethernet_1/rxoutclk] [get_bd_pins util_ds_buf_0/BUFG_GT_I]
  connect_bd_net -net axi_ethernet_2_fifo_s2mm_prmry_reset_out_n [get_bd_pins axi_ethernet_0/axi_rxd_arstn] [get_bd_pins axi_ethernet_0/axi_rxs_arstn] [get_bd_pins axi_ethernet_sw0_fifo/s2mm_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_2_rxoutclk [get_bd_pins axi_ethernet_2/rxoutclk] [get_bd_pins util_ds_buf_1/BUFG_GT_I]
  connect_bd_net -net axi_ethernet_3_fifo_mm2s_cntrl_reset_out_n [get_bd_pins axi_ethernet_1/axi_txc_arstn] [get_bd_pins axi_ethernet_sw1_fifo/mm2s_cntrl_reset_out_n]
  connect_bd_net -net axi_ethernet_3_fifo_mm2s_prmry_reset_out_n [get_bd_pins axi_ethernet_1/axi_txd_arstn] [get_bd_pins axi_ethernet_sw1_fifo/mm2s_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_3_fifo_s2mm_prmry_reset_out_n [get_bd_pins axi_ethernet_1/axi_rxd_arstn] [get_bd_pins axi_ethernet_1/axi_rxs_arstn] [get_bd_pins axi_ethernet_sw1_fifo/s2mm_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_4_fifo_mm2s_cntrl_reset_out_n [get_bd_pins axi_ethernet_2/axi_txc_arstn] [get_bd_pins axi_ethernet_sw2_fifo/mm2s_cntrl_reset_out_n]
  connect_bd_net -net axi_ethernet_4_fifo_mm2s_prmry_reset_out_n [get_bd_pins axi_ethernet_2/axi_txd_arstn] [get_bd_pins axi_ethernet_sw2_fifo/mm2s_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_4_fifo_s2mm_prmry_reset_out_n [get_bd_pins axi_ethernet_2/axi_rxd_arstn] [get_bd_pins axi_ethernet_2/axi_rxs_arstn] [get_bd_pins axi_ethernet_sw2_fifo/s2mm_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_sw0_fifo_mm2s_cntrl_reset_out_n [get_bd_pins axi_ethernet_0/axi_txc_arstn] [get_bd_pins axi_ethernet_sw0_fifo/mm2s_cntrl_reset_out_n]
  connect_bd_net -net axi_ethernet_sw0_fifo_mm2s_prmry_reset_out_n [get_bd_pins axi_ethernet_0/axi_txd_arstn] [get_bd_pins axi_ethernet_sw0_fifo/mm2s_prmry_reset_out_n]
  connect_bd_net -net axi_uart16550_1_sout [get_bd_ports uart_tx_0] [get_bd_pins axi_uart16550_0/sout]
  connect_bd_net -net axi_uart16550_2_sout [get_bd_ports uart_tx_1] [get_bd_pins axi_uart16550_1/sout]
  connect_bd_net -net axi_uart16550_3_sout [get_bd_ports uart_tx_2] [get_bd_pins axi_uart16550_2/sout]
  connect_bd_net -net axi_uart16550_4_sout [get_bd_ports uart_tx_3] [get_bd_pins axi_uart16550_3/sout]
  connect_bd_net -net axi_uart16550_5_sout [get_bd_ports uart_tx_4] [get_bd_pins axi_uart16550_4/sout]
  connect_bd_net -net axi_uart16550_6_sout [get_bd_ports uart_tx_5] [get_bd_pins axi_uart16550_5/sout]
  connect_bd_net -net axi_uart16550_7_sout [get_bd_ports uart_tx_6] [get_bd_pins axi_uart16550_6/sout]
  connect_bd_net -net axi_uart16550_8_sout [get_bd_ports uart_tx_7] [get_bd_pins axi_uart16550_7/sout]
  connect_bd_net -net canfd_10_can_phy_tx [get_bd_ports card1_can_tx_9] [get_bd_pins canfd_9/can_phy_tx]
  connect_bd_net -net canfd_11_can_phy_tx [get_bd_ports card1_can_tx_10] [get_bd_pins canfd_10/can_phy_tx]
  connect_bd_net -net canfd_12_can_phy_tx [get_bd_ports card1_can_tx_11] [get_bd_pins canfd_11/can_phy_tx]
  connect_bd_net -net canfd_1_can_phy_tx [get_bd_ports card1_can_tx_0] [get_bd_pins canfd_0/can_phy_tx]
  connect_bd_net -net canfd_2_can_phy_tx [get_bd_ports card1_can_tx_1] [get_bd_pins canfd_1/can_phy_tx]
  connect_bd_net -net canfd_3_can_phy_tx [get_bd_ports card1_can_tx_2] [get_bd_pins canfd_2/can_phy_tx]
  connect_bd_net -net canfd_4_can_phy_tx [get_bd_ports card1_can_tx_3] [get_bd_pins canfd_3/can_phy_tx]
  connect_bd_net -net canfd_5_can_phy_tx [get_bd_ports card1_can_tx_4] [get_bd_pins canfd_4/can_phy_tx]
  connect_bd_net -net canfd_6_can_phy_tx [get_bd_ports card1_can_tx_5] [get_bd_pins canfd_5/can_phy_tx]
  connect_bd_net -net canfd_7_can_phy_tx [get_bd_ports card1_can_tx_6] [get_bd_pins canfd_6/can_phy_tx]
  connect_bd_net -net canfd_8_can_phy_tx [get_bd_ports card1_can_tx_7] [get_bd_pins canfd_7/can_phy_tx]
  connect_bd_net -net canfd_9_can_phy_tx [get_bd_ports card1_can_tx_8] [get_bd_pins canfd_8/can_phy_tx]
  connect_bd_net -net card1_can_rx_10_1 [get_bd_ports card1_can_rx_9] [get_bd_pins canfd_9/can_phy_rx]
  connect_bd_net -net card1_can_rx_11_1 [get_bd_ports card1_can_rx_10] [get_bd_pins canfd_10/can_phy_rx]
  connect_bd_net -net card1_can_rx_12_1 [get_bd_ports card1_can_rx_11] [get_bd_pins canfd_11/can_phy_rx]
  connect_bd_net -net card1_can_rx_1_1 [get_bd_ports card1_can_rx_0] [get_bd_pins canfd_0/can_phy_rx]
  connect_bd_net -net card1_can_rx_2_1 [get_bd_ports card1_can_rx_1] [get_bd_pins canfd_1/can_phy_rx]
  connect_bd_net -net card1_can_rx_3_1 [get_bd_ports card1_can_rx_2] [get_bd_pins canfd_2/can_phy_rx]
  connect_bd_net -net card1_can_rx_4_1 [get_bd_ports card1_can_rx_3] [get_bd_pins canfd_3/can_phy_rx]
  connect_bd_net -net card1_can_rx_5_1 [get_bd_ports card1_can_rx_4] [get_bd_pins canfd_4/can_phy_rx]
  connect_bd_net -net card1_can_rx_6_1 [get_bd_ports card1_can_rx_5] [get_bd_pins canfd_5/can_phy_rx]
  connect_bd_net -net card1_can_rx_7_1 [get_bd_ports card1_can_rx_6] [get_bd_pins canfd_6/can_phy_rx]
  connect_bd_net -net card1_can_rx_8_1 [get_bd_ports card1_can_rx_7] [get_bd_pins canfd_7/can_phy_rx]
  connect_bd_net -net card1_can_rx_9_1 [get_bd_ports card1_can_rx_8] [get_bd_pins canfd_8/can_phy_rx]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins gmii_to_rgmii_0/clkin]
  connect_bd_net -net clk_wiz_1_clk_out1 [get_bd_pins canfd_0/can_clk] [get_bd_pins canfd_1/can_clk] [get_bd_pins canfd_10/can_clk] [get_bd_pins canfd_11/can_clk] [get_bd_pins canfd_2/can_clk] [get_bd_pins canfd_3/can_clk] [get_bd_pins canfd_4/can_clk] [get_bd_pins canfd_5/can_clk] [get_bd_pins canfd_6/can_clk] [get_bd_pins canfd_7/can_clk] [get_bd_pins canfd_8/can_clk] [get_bd_pins canfd_9/can_clk] [get_bd_pins clk_wiz_canfd/clk_out1]
  connect_bd_net -net clk_wiz_1_clk_out2 [get_bd_pins canfd_0/can_clk_x2] [get_bd_pins canfd_1/can_clk_x2] [get_bd_pins canfd_10/can_clk_x2] [get_bd_pins canfd_11/can_clk_x2] [get_bd_pins canfd_2/can_clk_x2] [get_bd_pins canfd_3/can_clk_x2] [get_bd_pins canfd_4/can_clk_x2] [get_bd_pins canfd_5/can_clk_x2] [get_bd_pins canfd_6/can_clk_x2] [get_bd_pins canfd_7/can_clk_x2] [get_bd_pins canfd_8/can_clk_x2] [get_bd_pins canfd_9/can_clk_x2] [get_bd_pins clk_wiz_canfd/clk_out2]
  connect_bd_net -net gmii_to_rgmii_0_mmcm_locked_out [get_bd_pins gmii_to_rgmii_0/mmcm_locked_out] [get_bd_pins gmii_to_rgmii_1/mmcm_locked_in] [get_bd_pins gmii_to_rgmii_2/mmcm_locked_in]
  connect_bd_net -net lin_rx_10_1 [get_bd_ports lin_rx_9] [get_bd_pins CHIPDLIN_9/rxdi]
  connect_bd_net -net lin_rx_11_1 [get_bd_ports lin_rx_10] [get_bd_pins CHIPDLIN_10/rxdi]
  connect_bd_net -net lin_rx_12_1 [get_bd_ports lin_rx_11] [get_bd_pins CHIPDLIN_11/rxdi]
  connect_bd_net -net lin_rx_1_1 [get_bd_ports lin_rx_0] [get_bd_pins CHIPDLIN_0/rxdi]
  connect_bd_net -net lin_rx_2_1 [get_bd_ports lin_rx_1] [get_bd_pins CHIPDLIN_1/rxdi]
  connect_bd_net -net lin_rx_3_1 [get_bd_ports lin_rx_2] [get_bd_pins CHIPDLIN_2/rxdi]
  connect_bd_net -net lin_rx_4_1 [get_bd_ports lin_rx_3] [get_bd_pins CHIPDLIN_3/rxdi]
  connect_bd_net -net lin_rx_5_1 [get_bd_ports lin_rx_4] [get_bd_pins CHIPDLIN_4/rxdi]
  connect_bd_net -net lin_rx_6_1 [get_bd_ports lin_rx_5] [get_bd_pins CHIPDLIN_5/rxdi]
  connect_bd_net -net lin_rx_7_1 [get_bd_ports lin_rx_6] [get_bd_pins CHIPDLIN_6/rxdi]
  connect_bd_net -net lin_rx_8_1 [get_bd_ports lin_rx_7] [get_bd_pins CHIPDLIN_7/rxdi]
  connect_bd_net -net lin_rx_9_1 [get_bd_ports lin_rx_8] [get_bd_pins CHIPDLIN_8/rxdi]
  connect_bd_net -net rst_ps8_0_100M_interconnect_aresetn [get_bd_pins ps8_0_axi_periph/ARESETN] [get_bd_pins rst_ps8_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_ps8_0_100M_peripheral_aresetn [get_bd_pins CHIPDLIN_0/s00_axi_aresetn] [get_bd_pins CHIPDLIN_1/s00_axi_aresetn] [get_bd_pins CHIPDLIN_10/s00_axi_aresetn] [get_bd_pins CHIPDLIN_11/s00_axi_aresetn] [get_bd_pins CHIPDLIN_2/s00_axi_aresetn] [get_bd_pins CHIPDLIN_3/s00_axi_aresetn] [get_bd_pins CHIPDLIN_4/s00_axi_aresetn] [get_bd_pins CHIPDLIN_5/s00_axi_aresetn] [get_bd_pins CHIPDLIN_6/s00_axi_aresetn] [get_bd_pins CHIPDLIN_7/s00_axi_aresetn] [get_bd_pins CHIPDLIN_8/s00_axi_aresetn] [get_bd_pins CHIPDLIN_9/s00_axi_aresetn] [get_bd_pins axi_clu_ipcore/ARESETN] [get_bd_pins axi_clu_ipcore/M00_ARESETN] [get_bd_pins axi_clu_ipcore/M01_ARESETN] [get_bd_pins axi_clu_ipcore/M02_ARESETN] [get_bd_pins axi_clu_ipcore/S00_ARESETN] [get_bd_pins axi_clu_ipcore/S01_ARESETN] [get_bd_pins axi_uart16550_0/s_axi_aresetn] [get_bd_pins axi_uart16550_1/s_axi_aresetn] [get_bd_pins axi_uart16550_2/s_axi_aresetn] [get_bd_pins axi_uart16550_3/s_axi_aresetn] [get_bd_pins axi_uart16550_4/s_axi_aresetn] [get_bd_pins axi_uart16550_5/s_axi_aresetn] [get_bd_pins axi_uart16550_6/s_axi_aresetn] [get_bd_pins axi_uart16550_7/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins axi_uartlite_1/s_axi_aresetn] [get_bd_pins axi_xc_canfd_ipcore/ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M00_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M01_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M02_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M03_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M04_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M05_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M06_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M07_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M08_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M09_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M10_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/M11_ARESETN] [get_bd_pins axi_xc_canfd_ipcore/S00_ARESETN] [get_bd_pins axi_xc_lin_ipcore/ARESETN] [get_bd_pins axi_xc_lin_ipcore/M00_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M01_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M02_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M03_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M04_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M05_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M06_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M07_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M08_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M09_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M10_ARESETN] [get_bd_pins axi_xc_lin_ipcore/M11_ARESETN] [get_bd_pins axi_xc_lin_ipcore/S00_ARESETN] [get_bd_pins axi_xc_ps_clu/ARESETN] [get_bd_pins axi_xc_ps_clu/M00_ARESETN] [get_bd_pins axi_xc_ps_clu/S00_ARESETN] [get_bd_pins axi_xc_uart_ipcore/ARESETN] [get_bd_pins axi_xc_uart_ipcore/M00_ARESETN] [get_bd_pins axi_xc_uart_ipcore/M01_ARESETN] [get_bd_pins axi_xc_uart_ipcore/M02_ARESETN] [get_bd_pins axi_xc_uart_ipcore/M03_ARESETN] [get_bd_pins axi_xc_uart_ipcore/M04_ARESETN] [get_bd_pins axi_xc_uart_ipcore/M05_ARESETN] [get_bd_pins axi_xc_uart_ipcore/M06_ARESETN] [get_bd_pins axi_xc_uart_ipcore/M07_ARESETN] [get_bd_pins axi_xc_uart_ipcore/S00_ARESETN] [get_bd_pins canfd_0/s_axi_aresetn] [get_bd_pins canfd_1/s_axi_aresetn] [get_bd_pins canfd_10/s_axi_aresetn] [get_bd_pins canfd_11/s_axi_aresetn] [get_bd_pins canfd_2/s_axi_aresetn] [get_bd_pins canfd_3/s_axi_aresetn] [get_bd_pins canfd_4/s_axi_aresetn] [get_bd_pins canfd_5/s_axi_aresetn] [get_bd_pins canfd_6/s_axi_aresetn] [get_bd_pins canfd_7/s_axi_aresetn] [get_bd_pins canfd_8/s_axi_aresetn] [get_bd_pins canfd_9/s_axi_aresetn] [get_bd_pins clu_0/ap_rst_n] [get_bd_pins ps8_0_axi_periph/M00_ARESETN] [get_bd_pins ps8_0_axi_periph/M01_ARESETN] [get_bd_pins ps8_0_axi_periph/M02_ARESETN] [get_bd_pins ps8_0_axi_periph/M03_ARESETN] [get_bd_pins ps8_0_axi_periph/M04_ARESETN] [get_bd_pins ps8_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps8_0_100M/peripheral_aresetn] [get_bd_pins timestamp_0/ap_rst_n]
  connect_bd_net -net rst_sw_mac_100M_interconnect_aresetn [get_bd_pins axi_ethernet_0/s_axi_lite_resetn] [get_bd_pins axi_ethernet_1/s_axi_lite_resetn] [get_bd_pins axi_ethernet_2/s_axi_lite_resetn] [get_bd_pins axi_ethernet_sw0_fifo/s_axi_aresetn] [get_bd_pins axi_ethernet_sw0_fifo1/s_axi_aresetn] [get_bd_pins axi_ethernet_sw1_fifo/s_axi_aresetn] [get_bd_pins axi_ethernet_sw1_fifo1/s_axi_aresetn] [get_bd_pins axi_ethernet_sw2_fifo/s_axi_aresetn] [get_bd_pins axi_ethernet_sw2_fifo1/s_axi_aresetn] [get_bd_pins axi_xc_mac0_ipcore/ARESETN] [get_bd_pins axi_xc_mac1_ipcore/ARESETN] [get_bd_pins axi_xc_mac2_ipcore/ARESETN] [get_bd_pins axi_xc_ps_mac/ARESETN] [get_bd_pins mac_logger_0/ap_rst_n] [get_bd_pins mac_logger_1/ap_rst_n] [get_bd_pins mac_logger_2/ap_rst_n] [get_bd_pins ps8_1_axi_periph/ARESETN] [get_bd_pins rst_sw_mac_100M/interconnect_aresetn]
  connect_bd_net -net rst_sw_mac_100M_peripheral_aresetn [get_bd_pins axi_xc_mac0_ipcore/M00_ARESETN] [get_bd_pins axi_xc_mac0_ipcore/M01_ARESETN] [get_bd_pins axi_xc_mac0_ipcore/M02_ARESETN] [get_bd_pins axi_xc_mac0_ipcore/S00_ARESETN] [get_bd_pins axi_xc_mac0_ipcore/S01_ARESETN] [get_bd_pins axi_xc_mac1_ipcore/M00_ARESETN] [get_bd_pins axi_xc_mac1_ipcore/M01_ARESETN] [get_bd_pins axi_xc_mac1_ipcore/M02_ARESETN] [get_bd_pins axi_xc_mac1_ipcore/S00_ARESETN] [get_bd_pins axi_xc_mac1_ipcore/S01_ARESETN] [get_bd_pins axi_xc_mac2_ipcore/M00_ARESETN] [get_bd_pins axi_xc_mac2_ipcore/M01_ARESETN] [get_bd_pins axi_xc_mac2_ipcore/M02_ARESETN] [get_bd_pins axi_xc_mac2_ipcore/S00_ARESETN] [get_bd_pins axi_xc_mac2_ipcore/S01_ARESETN] [get_bd_pins axi_xc_ps_mac/M00_ARESETN] [get_bd_pins axi_xc_ps_mac/S00_ARESETN] [get_bd_pins axi_xc_ps_mac/S01_ARESETN] [get_bd_pins axi_xc_ps_mac/S02_ARESETN] [get_bd_pins ps8_1_axi_periph/M00_ARESETN] [get_bd_pins ps8_1_axi_periph/M01_ARESETN] [get_bd_pins ps8_1_axi_periph/M02_ARESETN] [get_bd_pins ps8_1_axi_periph/M03_ARESETN] [get_bd_pins ps8_1_axi_periph/M04_ARESETN] [get_bd_pins ps8_1_axi_periph/M05_ARESETN] [get_bd_pins ps8_1_axi_periph/S00_ARESETN] [get_bd_pins rst_sw_mac_100M/peripheral_aresetn]
  connect_bd_net -net sgmii_signal_detect1_dout [get_bd_pins sgmii_signal_detect1/dout] [get_bd_pins util_ds_buf_0/BUFG_GT_DIV] [get_bd_pins util_ds_buf_1/BUFG_GT_DIV]
  connect_bd_net -net sgmii_signal_detect2_dout [get_bd_pins sgmii_signal_detect2/dout] [get_bd_pins util_ds_buf_0/BUFG_GT_CLR] [get_bd_pins util_ds_buf_0/BUFG_GT_CLRMASK] [get_bd_pins util_ds_buf_1/BUFG_GT_CLR] [get_bd_pins util_ds_buf_1/BUFG_GT_CLRMASK]
  connect_bd_net -net timestamp_0_timestamp_r [get_bd_pins clu_0/timestamp] [get_bd_pins mac_logger_0/timestamp] [get_bd_pins mac_logger_1/timestamp] [get_bd_pins mac_logger_2/timestamp] [get_bd_pins timestamp_0/timestamp_r]
  connect_bd_net -net uart_rx_1_1 [get_bd_ports uart_rx_0] [get_bd_pins axi_uart16550_0/sin]
  connect_bd_net -net uart_rx_2_1 [get_bd_ports uart_rx_1] [get_bd_pins axi_uart16550_1/sin]
  connect_bd_net -net uart_rx_3_1 [get_bd_ports uart_rx_2] [get_bd_pins axi_uart16550_2/sin]
  connect_bd_net -net uart_rx_4_1 [get_bd_ports uart_rx_3] [get_bd_pins axi_uart16550_3/sin]
  connect_bd_net -net uart_rx_5_1 [get_bd_ports uart_rx_4] [get_bd_pins axi_uart16550_4/sin]
  connect_bd_net -net uart_rx_6_1 [get_bd_ports uart_rx_5] [get_bd_pins axi_uart16550_5/sin]
  connect_bd_net -net uart_rx_7_1 [get_bd_ports uart_rx_6] [get_bd_pins axi_uart16550_6/sin]
  connect_bd_net -net uart_rx_8_1 [get_bd_ports uart_rx_7] [get_bd_pins axi_uart16550_7/sin]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins axi_ethernet_0/signal_detect] [get_bd_pins axi_ethernet_1/signal_detect] [get_bd_pins axi_ethernet_2/signal_detect] [get_bd_pins sgmii_signal_detect/dout] [get_bd_pins util_ds_buf_0/BUFG_GT_CE] [get_bd_pins util_ds_buf_0/BUFG_GT_CEMASK] [get_bd_pins util_ds_buf_1/BUFG_GT_CE] [get_bd_pins util_ds_buf_1/BUFG_GT_CEMASK]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins CHIPDLIN_0/s00_axi_aclk] [get_bd_pins CHIPDLIN_1/s00_axi_aclk] [get_bd_pins CHIPDLIN_10/s00_axi_aclk] [get_bd_pins CHIPDLIN_11/s00_axi_aclk] [get_bd_pins CHIPDLIN_2/s00_axi_aclk] [get_bd_pins CHIPDLIN_3/s00_axi_aclk] [get_bd_pins CHIPDLIN_4/s00_axi_aclk] [get_bd_pins CHIPDLIN_5/s00_axi_aclk] [get_bd_pins CHIPDLIN_6/s00_axi_aclk] [get_bd_pins CHIPDLIN_7/s00_axi_aclk] [get_bd_pins CHIPDLIN_8/s00_axi_aclk] [get_bd_pins CHIPDLIN_9/s00_axi_aclk] [get_bd_pins axi_clu_ipcore/ACLK] [get_bd_pins axi_clu_ipcore/M00_ACLK] [get_bd_pins axi_clu_ipcore/M01_ACLK] [get_bd_pins axi_clu_ipcore/M02_ACLK] [get_bd_pins axi_clu_ipcore/S00_ACLK] [get_bd_pins axi_clu_ipcore/S01_ACLK] [get_bd_pins axi_uart16550_0/s_axi_aclk] [get_bd_pins axi_uart16550_1/s_axi_aclk] [get_bd_pins axi_uart16550_2/s_axi_aclk] [get_bd_pins axi_uart16550_3/s_axi_aclk] [get_bd_pins axi_uart16550_4/s_axi_aclk] [get_bd_pins axi_uart16550_5/s_axi_aclk] [get_bd_pins axi_uart16550_6/s_axi_aclk] [get_bd_pins axi_uart16550_7/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins axi_uartlite_1/s_axi_aclk] [get_bd_pins axi_xc_canfd_ipcore/ACLK] [get_bd_pins axi_xc_canfd_ipcore/M00_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M01_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M02_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M03_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M04_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M05_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M06_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M07_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M08_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M09_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M10_ACLK] [get_bd_pins axi_xc_canfd_ipcore/M11_ACLK] [get_bd_pins axi_xc_canfd_ipcore/S00_ACLK] [get_bd_pins axi_xc_lin_ipcore/ACLK] [get_bd_pins axi_xc_lin_ipcore/M00_ACLK] [get_bd_pins axi_xc_lin_ipcore/M01_ACLK] [get_bd_pins axi_xc_lin_ipcore/M02_ACLK] [get_bd_pins axi_xc_lin_ipcore/M03_ACLK] [get_bd_pins axi_xc_lin_ipcore/M04_ACLK] [get_bd_pins axi_xc_lin_ipcore/M05_ACLK] [get_bd_pins axi_xc_lin_ipcore/M06_ACLK] [get_bd_pins axi_xc_lin_ipcore/M07_ACLK] [get_bd_pins axi_xc_lin_ipcore/M08_ACLK] [get_bd_pins axi_xc_lin_ipcore/M09_ACLK] [get_bd_pins axi_xc_lin_ipcore/M10_ACLK] [get_bd_pins axi_xc_lin_ipcore/M11_ACLK] [get_bd_pins axi_xc_lin_ipcore/S00_ACLK] [get_bd_pins axi_xc_ps_clu/ACLK] [get_bd_pins axi_xc_ps_clu/M00_ACLK] [get_bd_pins axi_xc_ps_clu/S00_ACLK] [get_bd_pins axi_xc_uart_ipcore/ACLK] [get_bd_pins axi_xc_uart_ipcore/M00_ACLK] [get_bd_pins axi_xc_uart_ipcore/M01_ACLK] [get_bd_pins axi_xc_uart_ipcore/M02_ACLK] [get_bd_pins axi_xc_uart_ipcore/M03_ACLK] [get_bd_pins axi_xc_uart_ipcore/M04_ACLK] [get_bd_pins axi_xc_uart_ipcore/M05_ACLK] [get_bd_pins axi_xc_uart_ipcore/M06_ACLK] [get_bd_pins axi_xc_uart_ipcore/M07_ACLK] [get_bd_pins axi_xc_uart_ipcore/S00_ACLK] [get_bd_pins canfd_0/s_axi_aclk] [get_bd_pins canfd_1/s_axi_aclk] [get_bd_pins canfd_10/s_axi_aclk] [get_bd_pins canfd_11/s_axi_aclk] [get_bd_pins canfd_2/s_axi_aclk] [get_bd_pins canfd_3/s_axi_aclk] [get_bd_pins canfd_4/s_axi_aclk] [get_bd_pins canfd_5/s_axi_aclk] [get_bd_pins canfd_6/s_axi_aclk] [get_bd_pins canfd_7/s_axi_aclk] [get_bd_pins canfd_8/s_axi_aclk] [get_bd_pins canfd_9/s_axi_aclk] [get_bd_pins clk_wiz_canfd/clk_in1] [get_bd_pins clu_0/ap_clk] [get_bd_pins ps8_0_axi_periph/ACLK] [get_bd_pins ps8_0_axi_periph/M00_ACLK] [get_bd_pins ps8_0_axi_periph/M01_ACLK] [get_bd_pins ps8_0_axi_periph/M02_ACLK] [get_bd_pins ps8_0_axi_periph/M03_ACLK] [get_bd_pins ps8_0_axi_periph/M04_ACLK] [get_bd_pins ps8_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps8_0_100M/slowest_sync_clk] [get_bd_pins timestamp_0/ap_clk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0] [get_bd_pins zynq_ultra_ps_e_0/saxihp0_fpd_aclk]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk1 [get_bd_pins axi_ethernet_0/axis_clk] [get_bd_pins axi_ethernet_0/s_axi_lite_clk] [get_bd_pins axi_ethernet_1/axis_clk] [get_bd_pins axi_ethernet_1/s_axi_lite_clk] [get_bd_pins axi_ethernet_2/axis_clk] [get_bd_pins axi_ethernet_2/s_axi_lite_clk] [get_bd_pins axi_ethernet_sw0_fifo/s_axi_aclk] [get_bd_pins axi_ethernet_sw0_fifo1/s_axi_aclk] [get_bd_pins axi_ethernet_sw1_fifo/s_axi_aclk] [get_bd_pins axi_ethernet_sw1_fifo1/s_axi_aclk] [get_bd_pins axi_ethernet_sw2_fifo/s_axi_aclk] [get_bd_pins axi_ethernet_sw2_fifo1/s_axi_aclk] [get_bd_pins axi_xc_mac0_ipcore/ACLK] [get_bd_pins axi_xc_mac0_ipcore/M00_ACLK] [get_bd_pins axi_xc_mac0_ipcore/M01_ACLK] [get_bd_pins axi_xc_mac0_ipcore/M02_ACLK] [get_bd_pins axi_xc_mac0_ipcore/S00_ACLK] [get_bd_pins axi_xc_mac0_ipcore/S01_ACLK] [get_bd_pins axi_xc_mac1_ipcore/ACLK] [get_bd_pins axi_xc_mac1_ipcore/M00_ACLK] [get_bd_pins axi_xc_mac1_ipcore/M01_ACLK] [get_bd_pins axi_xc_mac1_ipcore/M02_ACLK] [get_bd_pins axi_xc_mac1_ipcore/S00_ACLK] [get_bd_pins axi_xc_mac1_ipcore/S01_ACLK] [get_bd_pins axi_xc_mac2_ipcore/ACLK] [get_bd_pins axi_xc_mac2_ipcore/M00_ACLK] [get_bd_pins axi_xc_mac2_ipcore/M01_ACLK] [get_bd_pins axi_xc_mac2_ipcore/M02_ACLK] [get_bd_pins axi_xc_mac2_ipcore/S00_ACLK] [get_bd_pins axi_xc_mac2_ipcore/S01_ACLK] [get_bd_pins axi_xc_ps_mac/ACLK] [get_bd_pins axi_xc_ps_mac/M00_ACLK] [get_bd_pins axi_xc_ps_mac/S00_ACLK] [get_bd_pins axi_xc_ps_mac/S01_ACLK] [get_bd_pins axi_xc_ps_mac/S02_ACLK] [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins mac_logger_0/ap_clk] [get_bd_pins mac_logger_1/ap_clk] [get_bd_pins mac_logger_2/ap_clk] [get_bd_pins ps8_1_axi_periph/ACLK] [get_bd_pins ps8_1_axi_periph/M00_ACLK] [get_bd_pins ps8_1_axi_periph/M01_ACLK] [get_bd_pins ps8_1_axi_periph/M02_ACLK] [get_bd_pins ps8_1_axi_periph/M03_ACLK] [get_bd_pins ps8_1_axi_periph/M04_ACLK] [get_bd_pins ps8_1_axi_periph/M05_ACLK] [get_bd_pins ps8_1_axi_periph/S00_ACLK] [get_bd_pins rst_sw_mac_100M/slowest_sync_clk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm1_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk1] [get_bd_pins zynq_ultra_ps_e_0/saxihp1_fpd_aclk]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn0 [get_bd_pins rst_ps8_0_100M/ext_reset_in] [get_bd_pins rst_sw_mac_100M/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0]

  # Create address segments
  assign_bd_address -offset 0xA0000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_0/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA000A000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_10/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA000B000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_11/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_1/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0002000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_2/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0003000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_3/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_4/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0005000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_5/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0006000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_6/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0007000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_7/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0008000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_8/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0009000 -range 0x00001000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs CHIPDLIN_9/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0010000 -range 0x00004000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0014000 -range 0x00004000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs axi_uart16550_1/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0018000 -range 0x00004000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs axi_uart16550_2/S_AXI/Reg] -force
  assign_bd_address -offset 0xA001C000 -range 0x00004000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs axi_uart16550_3/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0020000 -range 0x00004000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs axi_uart16550_4/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0024000 -range 0x00004000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs axi_uart16550_5/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0028000 -range 0x00004000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs axi_uart16550_6/S_AXI/Reg] -force
  assign_bd_address -offset 0xA002C000 -range 0x00004000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs axi_uart16550_7/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0140000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0150000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_1/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0160000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_2/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0190000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_5/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0170000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_3/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01A0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_6/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0180000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_4/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01B0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_7/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_8/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01D0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_9/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01E0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_10/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01F0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_clu_addr] [get_bd_addr_segs canfd_11/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_ps_ddr] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_ps_ddr] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_DDR_LOW] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_ps_ddr] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_LPS_OCM] -force
  assign_bd_address -offset 0xE0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_ps_ddr] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_PCIE_LOW] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces clu_0/Data_m_axi_ps_ddr] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP2/HP0_QSPI] -force
  assign_bd_address -offset 0xB00D0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mac_logger_0/Data_m_axi_mac_fifo] [get_bd_addr_segs axi_ethernet_sw0_fifo1/S_AXI/Mem0] -force
  assign_bd_address -offset 0xB0100000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mac_logger_0/Data_m_axi_fifo_axi_full] [get_bd_addr_segs axi_ethernet_sw0_fifo1/S_AXI_FULL/Mem1] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces mac_logger_0/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces mac_logger_0/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_LOW] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces mac_logger_0/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_LPS_OCM] -force
  assign_bd_address -offset 0xE0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces mac_logger_0/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_PCIE_LOW] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces mac_logger_0/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_QSPI] -force
  assign_bd_address -offset 0xB00E0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mac_logger_1/Data_m_axi_mac_fifo] [get_bd_addr_segs axi_ethernet_sw1_fifo1/S_AXI/Mem0] -force
  assign_bd_address -offset 0xB0110000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mac_logger_1/Data_m_axi_fifo_axi_full] [get_bd_addr_segs axi_ethernet_sw1_fifo1/S_AXI_FULL/Mem1] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces mac_logger_1/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces mac_logger_1/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_LOW] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces mac_logger_1/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_LPS_OCM] -force
  assign_bd_address -offset 0xE0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces mac_logger_1/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_PCIE_LOW] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces mac_logger_1/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_QSPI] -force
  assign_bd_address -offset 0xB00F0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mac_logger_2/Data_m_axi_mac_fifo] [get_bd_addr_segs axi_ethernet_sw2_fifo1/S_AXI/Mem0] -force
  assign_bd_address -offset 0xB0120000 -range 0x00010000 -target_address_space [get_bd_addr_spaces mac_logger_2/Data_m_axi_fifo_axi_full] [get_bd_addr_segs axi_ethernet_sw2_fifo1/S_AXI_FULL/Mem1] -force
  assign_bd_address -offset 0x000800000000 -range 0x000800000000 -target_address_space [get_bd_addr_spaces mac_logger_2/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_HIGH] -force
  assign_bd_address -offset 0x00000000 -range 0x80000000 -target_address_space [get_bd_addr_spaces mac_logger_2/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_DDR_LOW] -force
  assign_bd_address -offset 0xFF000000 -range 0x01000000 -target_address_space [get_bd_addr_spaces mac_logger_2/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_LPS_OCM] -force
  assign_bd_address -offset 0xE0000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces mac_logger_2/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_PCIE_LOW] -force
  assign_bd_address -offset 0xC0000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces mac_logger_2/Data_m_axi_ps] [get_bd_addr_segs zynq_ultra_ps_e_0/SAXIGP3/HP1_QSPI] -force
  assign_bd_address -offset 0xA0000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_0/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA000A000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_10/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA000B000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_11/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_1/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0002000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_2/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0003000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_3/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_4/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0005000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_5/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0006000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_6/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0007000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_7/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0008000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_8/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xA0009000 -range 0x00001000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs CHIPDLIN_9/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0xB0000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_ethernet_0/s_axi/Reg0] -force
  assign_bd_address -offset 0xB0040000 -range 0x00040000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_ethernet_1/s_axi/Reg0] -force
  assign_bd_address -offset 0xB0080000 -range 0x00040000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_ethernet_2/s_axi/Reg0] -force
  assign_bd_address -offset 0xB00D0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_ethernet_sw0_fifo1/S_AXI/Mem0] -force
  assign_bd_address -offset 0xB00C0000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_ethernet_sw0_fifo/S_AXI/Mem0] -force
  assign_bd_address -offset 0xB00E0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_ethernet_sw1_fifo1/S_AXI/Mem0] -force
  assign_bd_address -offset 0xB00C4000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_ethernet_sw1_fifo/S_AXI/Mem0] -force
  assign_bd_address -offset 0xB00F0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_ethernet_sw2_fifo1/S_AXI/Mem0] -force
  assign_bd_address -offset 0xB00C8000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_ethernet_sw2_fifo/S_AXI/Mem0] -force
  assign_bd_address -offset 0xA0010000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0014000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uart16550_1/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0018000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uart16550_2/S_AXI/Reg] -force
  assign_bd_address -offset 0xA001C000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uart16550_3/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0020000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uart16550_4/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0024000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uart16550_5/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0028000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uart16550_6/S_AXI/Reg] -force
  assign_bd_address -offset 0xA002C000 -range 0x00004000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uart16550_7/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0030000 -range 0x00002000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0032000 -range 0x00002000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs axi_uartlite_1/S_AXI/Reg] -force
  assign_bd_address -offset 0xA0140000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_0/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0180000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_4/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0150000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_1/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0160000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_2/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0190000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_5/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0170000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_3/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01A0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_6/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01B0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_7/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01C0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_8/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01D0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_9/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01E0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_10/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA01F0000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs canfd_11/S_AXI_LITE/Reg] -force
  assign_bd_address -offset 0xA0040000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs clu_0/s_axi_EN/Reg] -force
  assign_bd_address -offset 0xB0130000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs mac_logger_0/s_axi_axilites/Reg] -force
  assign_bd_address -offset 0xB0140000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs mac_logger_1/s_axi_axilites/Reg] -force
  assign_bd_address -offset 0xB0150000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs mac_logger_2/s_axi_axilites/Reg] -force
  assign_bd_address -offset 0xA0050000 -range 0x00010000 -target_address_space [get_bd_addr_spaces zynq_ultra_ps_e_0/Data] [get_bd_addr_segs timestamp_0/s_axi_ts_base/Reg] -force

  # Exclude Address Segments
  exclude_bd_addr_seg -offset 0xB0000000 -range 0x00040000 -target_address_space [get_bd_addr_spaces mac_logger_0/Data_m_axi_mac_fifo] [get_bd_addr_segs axi_ethernet_0/s_axi/Reg0]
  exclude_bd_addr_seg -offset 0xB00C0000 -range 0x00004000 -target_address_space [get_bd_addr_spaces mac_logger_0/Data_m_axi_mac_fifo] [get_bd_addr_segs axi_ethernet_sw0_fifo/S_AXI/Mem0]
  exclude_bd_addr_seg -offset 0xB0040000 -range 0x00040000 -target_address_space [get_bd_addr_spaces mac_logger_1/Data_m_axi_mac_fifo] [get_bd_addr_segs axi_ethernet_1/s_axi/Reg0]
  exclude_bd_addr_seg -offset 0xB00C4000 -range 0x00004000 -target_address_space [get_bd_addr_spaces mac_logger_1/Data_m_axi_mac_fifo] [get_bd_addr_segs axi_ethernet_sw1_fifo/S_AXI/Mem0]
  exclude_bd_addr_seg -offset 0xB0080000 -range 0x00040000 -target_address_space [get_bd_addr_spaces mac_logger_2/Data_m_axi_mac_fifo] [get_bd_addr_segs axi_ethernet_2/s_axi/Reg0]
  exclude_bd_addr_seg -offset 0xB00C8000 -range 0x00004000 -target_address_space [get_bd_addr_spaces mac_logger_2/Data_m_axi_mac_fifo] [get_bd_addr_segs axi_ethernet_sw2_fifo/S_AXI/Mem0]


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


