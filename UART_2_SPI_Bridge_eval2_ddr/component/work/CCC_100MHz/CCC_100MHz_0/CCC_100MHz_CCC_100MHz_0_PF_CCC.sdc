set_component CCC_100MHz_CCC_100MHz_0_PF_CCC
# Microsemi Corp.
# Date: 2018-Oct-18 15:02:36
#

# Base clock for PLL #0
create_clock -period 6.25 [ get_pins { pll_inst_0/REF_CLK_0 } ]
create_generated_clock -multiply_by 25 -divide_by 36 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT0 } ]
