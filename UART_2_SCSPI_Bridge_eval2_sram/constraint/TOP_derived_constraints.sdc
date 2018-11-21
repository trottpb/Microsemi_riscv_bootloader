# Microsemi Corp.
# Date: 2018-Nov-21 16:17:03
# This file was generated based on the following SDC source files:
#   C:/Microsemiprj_PF23/apps/riscv_bootloader/UART_2_SCSPI_Bridge_eval2_sram/component/work/CCC_100MHz/CCC_100MHz_0/CCC_100MHz_CCC_100MHz_0_PF_CCC.sdc
#   C:/Microsemi/Libero_SoC_PolarFire_v2.3/Designer/data/aPA5M/cores/constraints/osc_rc160mhz.sdc
#

create_clock -name {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK} -period 6.25 [ get_pins { CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK } ]
create_generated_clock -name {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0} -multiply_by 25 -divide_by 36 -source [ get_pins { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ]
