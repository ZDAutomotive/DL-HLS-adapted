
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 7.3
 PARAMETER PROC_INSTANCE = psu_pmu_0
 PARAMETER stdin = psu_uart_0
 PARAMETER stdout = psu_uart_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.12
 PARAMETER HW_INSTANCE = psu_pmu_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_8
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = CHIPDLIN
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = CHIPDLIN_9
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axiethernet
 PARAMETER DRIVER_VER = 5.11
 PARAMETER HW_INSTANCE = axi_ethernet_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axiethernet
 PARAMETER DRIVER_VER = 5.11
 PARAMETER HW_INSTANCE = axi_ethernet_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axiethernet
 PARAMETER DRIVER_VER = 5.11
 PARAMETER HW_INSTANCE = axi_ethernet_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = llfifo
 PARAMETER DRIVER_VER = 5.5
 PARAMETER HW_INSTANCE = axi_ethernet_sw0_fifo
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = llfifo
 PARAMETER DRIVER_VER = 5.5
 PARAMETER HW_INSTANCE = axi_ethernet_sw1_fifo
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = llfifo
 PARAMETER DRIVER_VER = 5.5
 PARAMETER HW_INSTANCE = axi_ethernet_sw2_fifo
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartns550
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = axi_uart16550_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartns550
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = axi_uart16550_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartns550
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = axi_uart16550_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartns550
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = axi_uart16550_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartns550
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = axi_uart16550_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartns550
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = axi_uart16550_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartns550
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = axi_uart16550_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartns550
 PARAMETER DRIVER_VER = 3.7
 PARAMETER HW_INSTANCE = axi_uart16550_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.5
 PARAMETER HW_INSTANCE = axi_uartlite_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.5
 PARAMETER HW_INSTANCE = axi_uartlite_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_10
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_11
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_8
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = canfd
 PARAMETER DRIVER_VER = 2.4
 PARAMETER HW_INSTANCE = canfd_9
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = clu
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = clu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mac_logger
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = mac_logger_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mac_logger
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = mac_logger_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mac_logger
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = mac_logger_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_adma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_adma_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_adma_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_adma_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_adma_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_adma_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_adma_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_adma_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_afi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_afi_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_afi_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_afi_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_afi_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_afi_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_afi_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sysmonpsu
 PARAMETER DRIVER_VER = 2.7
 PARAMETER HW_INSTANCE = psu_ams
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axipmon
 PARAMETER DRIVER_VER = 6.9
 PARAMETER HW_INSTANCE = psu_apm_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axipmon
 PARAMETER DRIVER_VER = 6.9
 PARAMETER HW_INSTANCE = psu_apm_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axipmon
 PARAMETER DRIVER_VER = 6.9
 PARAMETER HW_INSTANCE = psu_apm_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axipmon
 PARAMETER DRIVER_VER = 6.9
 PARAMETER HW_INSTANCE = psu_apm_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_apu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_bbram_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_cci_gpv
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_cci_reg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = resetps
 PARAMETER DRIVER_VER = 1.4
 PARAMETER HW_INSTANCE = psu_crf_apb
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_crl_apb
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_csu_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = csudma
 PARAMETER DRIVER_VER = 1.7
 PARAMETER HW_INSTANCE = psu_csudma
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ctrl_ipi
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ddr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ddr_phy
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ddr_qos_ctrl
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ddr_xmpu0_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ddr_xmpu1_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ddr_xmpu2_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ddr_xmpu3_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ddr_xmpu4_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ddr_xmpu5_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ddrcpsu
 PARAMETER DRIVER_VER = 1.3
 PARAMETER HW_INSTANCE = psu_ddrc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_efuse
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emacps
 PARAMETER DRIVER_VER = 3.12
 PARAMETER HW_INSTANCE = psu_ethernet_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emacps
 PARAMETER DRIVER_VER = 3.12
 PARAMETER HW_INSTANCE = psu_ethernet_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emacps
 PARAMETER DRIVER_VER = 3.12
 PARAMETER HW_INSTANCE = psu_ethernet_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = emacps
 PARAMETER DRIVER_VER = 3.12
 PARAMETER HW_INSTANCE = psu_ethernet_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_fpd_gpv
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_fpd_slcr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_fpd_slcr_secure
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_fpd_xmpu_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_fpd_xmpu_sink
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_gdma_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_gdma_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_gdma_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_gdma_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_gdma_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_gdma_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_gdma_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = zdma
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_gdma_7
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpiops
 PARAMETER DRIVER_VER = 3.8
 PARAMETER HW_INSTANCE = psu_gpio_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_gpu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iicps
 PARAMETER DRIVER_VER = 3.12
 PARAMETER HW_INSTANCE = psu_i2c_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_iou_scntr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_iou_scntrs
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_iousecure_slcr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_iouslcr_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.7
 PARAMETER HW_INSTANCE = psu_ipi_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.7
 PARAMETER HW_INSTANCE = psu_ipi_4
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.7
 PARAMETER HW_INSTANCE = psu_ipi_5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ipipsu
 PARAMETER DRIVER_VER = 2.7
 PARAMETER HW_INSTANCE = psu_ipi_6
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_lpd_slcr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_lpd_slcr_secure
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_lpd_xppu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_lpd_xppu_sink
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_mbistjtag
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_message_buffers
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ocm
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ocm_ram_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_ocm_xmpu_cfg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pciepsu
 PARAMETER DRIVER_VER = 1.2
 PARAMETER HW_INSTANCE = psu_pcie
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pciepsu
 PARAMETER DRIVER_VER = 1.2
 PARAMETER HW_INSTANCE = psu_pcie_attrib_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pciepsu
 PARAMETER DRIVER_VER = 1.2
 PARAMETER HW_INSTANCE = psu_pcie_dma
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pciepsu
 PARAMETER DRIVER_VER = 1.2
 PARAMETER HW_INSTANCE = psu_pcie_high1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pciepsu
 PARAMETER DRIVER_VER = 1.2
 PARAMETER HW_INSTANCE = psu_pcie_high2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = pciepsu
 PARAMETER DRIVER_VER = 1.2
 PARAMETER HW_INSTANCE = psu_pcie_low
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_pmu_global_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_pmu_iomodule
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_pmu_ram
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = qspipsu
 PARAMETER DRIVER_VER = 1.12
 PARAMETER HW_INSTANCE = psu_qspi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_qspi_linear_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_r5_0_atcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_r5_0_btcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_r5_1_atcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_r5_1_btcm_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_r5_tcm_ram_global
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_rpu
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_rsa
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = rtcpsu
 PARAMETER DRIVER_VER = 1.10
 PARAMETER HW_INSTANCE = psu_rtc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_sata
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sdps
 PARAMETER DRIVER_VER = 3.10
 PARAMETER HW_INSTANCE = psu_sd_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sdps
 PARAMETER DRIVER_VER = 3.10
 PARAMETER HW_INSTANCE = psu_sd_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_serdes
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_siou
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_smmu_gpv
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_smmu_reg
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER DRIVER_VER = 3.12
 PARAMETER HW_INSTANCE = psu_ttc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER DRIVER_VER = 3.12
 PARAMETER HW_INSTANCE = psu_ttc_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER DRIVER_VER = 3.12
 PARAMETER HW_INSTANCE = psu_ttc_2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = ttcps
 PARAMETER DRIVER_VER = 3.12
 PARAMETER HW_INSTANCE = psu_ttc_3
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartps
 PARAMETER DRIVER_VER = 3.10
 PARAMETER HW_INSTANCE = psu_uart_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartps
 PARAMETER DRIVER_VER = 3.10
 PARAMETER HW_INSTANCE = psu_uart_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.1
 PARAMETER HW_INSTANCE = psu_usb_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = usbpsu
 PARAMETER DRIVER_VER = 1.8
 PARAMETER HW_INSTANCE = psu_usb_xhci_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = timestamp
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = timestamp_0
END


BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = xilfpga
 PARAMETER LIBRARY_VER = 5.3
 PARAMETER PROC_INSTANCE = psu_pmu_0
END


BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = xilsecure
 PARAMETER LIBRARY_VER = 4.3
 PARAMETER PROC_INSTANCE = psu_pmu_0
END


BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = xilskey
 PARAMETER LIBRARY_VER = 7.0
 PARAMETER PROC_INSTANCE = psu_pmu_0
END


