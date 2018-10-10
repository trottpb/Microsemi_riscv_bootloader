open_project -project {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\designer\TOP\TOP_fp\TOP.pro}\
         -connect_programmers {FALSE}
if { [catch {load_programming_data \
    -name {MPF300TS_ES} \
    -fpga {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\designer\TOP\TOP.map} \
    -header {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\designer\TOP\TOP.hdr} \
    -envm {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\designer\TOP\TOP.efc}  \
    -spm {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\designer\TOP\TOP.spm} \
    -dca {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\designer\TOP\TOP.dca} } return_val] } {
    save_project
    close_project
    exit }
if { [catch {export_single_stapl \
    -name {MPF300TS_ES} \
    -file {C:\Microsemiprj_PF23\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_sram\designer\TOP\export\UART_2_SCSPI_Bridge_everest2_sram.stp} \
    -secured} return_val ] } {
    save_project
    close_project
    exit}

set_programming_file -name {MPF300TS_ES} -no_file
save_project
close_project
