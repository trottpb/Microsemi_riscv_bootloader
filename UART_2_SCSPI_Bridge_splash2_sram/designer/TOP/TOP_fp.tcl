new_project \
         -name {TOP} \
         -location {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SCSPI_Bridge_splash2_sram\designer\TOP\TOP_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF300T_ES} \
         -name {MPF300T_ES}
enable_device \
         -name {MPF300T_ES} \
         -enable {TRUE}
save_project
close_project
