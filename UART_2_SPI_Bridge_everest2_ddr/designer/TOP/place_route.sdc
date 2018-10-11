# Microsemi Corp.
# Date: 2018-Sep-06 14:36:57
# This file was generated based on the following SDC source files:
#   C:/Microsemiprj_PF/apps/riscv_bootloader/UART_2_SPI_Bridge_everest2_ddr/constraint/TOP_derived_constraints.sdc
#   C:/Microsemiprj_PF/apps/riscv_bootloader/UART_2_SPI_Bridge_everest2_ddr/constraint/jtag_tck_constraint.sdc
#

create_clock -name {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK} -period 6.25 [ get_pins { CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK } ]
create_clock -name {TCK} -period 33.33 -waveform {0 16.665 } [ get_ports { TCK } ]
create_generated_clock -name {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0} -multiply_by 5 -divide_by 8 -source [ get_pins { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ]
set_false_path -from [ get_clocks { TCK } ] -to [ get_clocks { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ]
set_false_path -from [ get_clocks { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ] -to [ get_clocks { TCK } ]
set_clock_groups -name {async1} -asynchronous -group [ get_clocks { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ] -group [ get_clocks { TCK } ]
