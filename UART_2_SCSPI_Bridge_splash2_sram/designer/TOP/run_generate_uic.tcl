set_device \
    -fam PolarFire \
    -die PA5M300T_ES \
    -pkg fcg484
set_proj_dir \
    -path {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_splash2_sram}
set_impl_dir \
    -path {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_splash2_sram\designer\TOP}
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
