set_device \
    -fam PolarFire \
    -die PA5M300TS_ES \
    -pkg fcg1152
set_proj_dir \
    -path {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_eval2_ddr}
set_impl_dir \
    -path {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SPI_Bridge_eval2_ddr\designer\TOP}
set_first_stage \
    -address 00000000
set_second_stage \
    -uprom_address 00000000 \
    -snvm_address 00000000 \
    -spi_address 00000400 \
    -spi_binding spi_noauth
set_override_file \
    -path {}
set_auto_calib_timeout \
    -value {3000}
