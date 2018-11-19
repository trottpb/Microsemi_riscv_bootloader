set_family {PolarFire}
read_adl {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\designer\TOP\TOP.adl}
map_netlist
read_sdc {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\constraint\TOP_derived_constraints.sdc}
read_sdc {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\constraint\jtag_tck_constraint.sdc}
check_constraints {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\constraint\placer_sdc_errors.log}
write_sdc -strict {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_ddr\designer\TOP\place_route.sdc}
