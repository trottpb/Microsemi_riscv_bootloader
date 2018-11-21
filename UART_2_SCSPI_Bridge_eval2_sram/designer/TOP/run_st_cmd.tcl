read_sdc -scenario "timing_analysis" -netlist "user" -pin_separator "/" -ignore_errors {C:/Microsemiprj_PF23/apps/riscv_bootloader/UART_2_SCSPI_Bridge_eval2_sram/designer/TOP/timing_analysis.sdc}
set_options -analysis_scenario "timing_analysis" 
save
