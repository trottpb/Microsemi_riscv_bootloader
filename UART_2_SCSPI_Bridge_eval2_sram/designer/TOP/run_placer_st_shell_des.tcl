set_device \
    -family  PolarFire \
    -die     PA5M300TS_ES \
    -package fcg1152 \
    -speed   -1 \
    -tempr   {EXT} \
    -voltr   {EXT}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {EXT}
set_def {VCCI_1.5_VOLTR} {EXT}
set_def {VCCI_1.8_VOLTR} {EXT}
set_def {VCCI_2.5_VOLTR} {EXT}
set_def {VCCI_3.3_VOLTR} {EXT}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name TOP
set_workdir {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\designer\TOP}
set_log     {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SCSPI_Bridge_eval2_sram\designer\TOP\TOP_sdc.log}
set_design_state pre_layout
