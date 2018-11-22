open_project -project {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_eval2_ddr\designer\TOP\TOP_fp\TOP.pro}
enable_device -name {MPF300TS_ES} -enable 1
set_programming_file -name {MPF300TS_ES} -file {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_eval2_ddr\designer\TOP\TOP.ipd}
set_programming_action -action {PROGRAM} -name {MPF300TS_ES} 
run_selected_actions
set_programming_file -name {MPF300TS_ES} -no_file
save_project
close_project
