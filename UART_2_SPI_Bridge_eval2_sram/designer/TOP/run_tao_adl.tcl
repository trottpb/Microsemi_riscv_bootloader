set_family {PolarFire}
read_adl {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_eval2_sram\designer\TOP\TOP.adl}
map_netlist
read_sdc {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_eval2_sram\constraint\TOP_derived_constraints.sdc}
read_sdc {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_eval2_sram\constraint\jtag_tck_constraint.sdc}
check_constraints {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_eval2_sram\constraint\placer_sdc_errors.log}
write_sdc -strict {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SPI_Bridge_eval2_sram\designer\TOP\place_route.sdc}
