read_sdc -scenario "place_and_route" -netlist "user" -pin_separator "/" -ignore_errors {C:/Microsemiprj_PF/apps/riscv_bootloader/UART_2_SCSPI_Bridge_everest2_ddr/designer/TOP/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_ddr\designer\TOP\TOP_layout_combinational_loops.xml}
report -type slack {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_ddr\designer\TOP\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_ddr\designer\TOP\TOP_place_and_route_constraint_coverage.xml}]
set reportfile {C:\Microsemiprj_PF\apps\riscv_bootloader\UART_2_SCSPI_Bridge_everest2_ddr\designer\TOP\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp