new_project \
         -name {TOP} \
         -location {C:\Users\crudel\Documents\Projects\PF_MPF300-EK\UART_2_SPI_Bridge\designer\TOP\TOP_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF300TS_ES} \
         -name {MPF300TS_ES}
enable_device \
         -name {MPF300TS_ES} \
         -enable {TRUE}
save_project
close_project
