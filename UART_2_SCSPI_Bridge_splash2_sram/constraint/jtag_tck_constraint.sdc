create_clock -name { TCK } -period 33.33 -waveform { 0 16.665 } [ get_ports { TCK } ]

set_false_path -from [ get_clocks { TCK } ] -to [ get_clocks { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ]
set_false_path -from [ get_clocks { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ] -to [ get_clocks { TCK } ]

set_clock_groups -name {async1} -asynchronous -group [ get_clocks { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ] -group [ get_clocks { TCK } ]
