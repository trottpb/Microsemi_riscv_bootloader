# Microsemi Corp.
# Date: 2018-Aug-08 11:12:44
# This file was generated based on the following SDC source files:
#   C:/Users/crudel/Documents/Projects/PF_MPF300-EK/UART_2_SPI_Bridge/component/work/CCC_100MHz/CCC_100MHz_0/CCC_100MHz_CCC_100MHz_0_PF_CCC.sdc
#   C:/Microsemi/Libero_SoC_PolarFire_v2.2/Designer/data/aPA5M/cores/constraints/osc_rc160mhz.sdc
#

create_clock -name {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK} -period 6.25 [ get_pins { CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK } ]
create_generated_clock -name {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0} -multiply_by 5 -divide_by 8 -source [ get_pins { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ]
