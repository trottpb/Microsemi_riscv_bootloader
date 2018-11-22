# Written by Synplify Pro version mapact2017q4p1, Build 003R. Synopsys Run ID: sid1539877708 
# Top Level Design Parameters 

# Clocks 
create_clock -period 6.250 -waveform {0.000 3.125} -name {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK} [get_pins {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {COREJTAGDEBUG_85_1s|iUDRCK_inferred_clock} [get_pins {PROCESSOR_0/JTAG_DEBUG_0/JTAG_DEBUG_0/genblk1.UJTAG_0/UDRCK}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0} -multiply_by {25} -divide_by {36} -source [get_pins {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160_INT/Y}]  [get_pins {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0}] 
create_generated_clock -name {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT0} -multiply_by {4} -source [get_pins {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/clkint_0/Y}]  [get_pins {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT0}] 
create_generated_clock -name {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT1} -divide_by {1} -source [get_pins {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/clkint_0/Y}]  [get_pins {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT1}] 
create_generated_clock -name {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT2} -multiply_by {4} -source [get_pins {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/clkint_0/Y}]  [get_pins {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT2}] 
create_generated_clock -name {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT3} -multiply_by {4} -source [get_pins {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/clkint_0/Y}]  [get_pins {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT3}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 
set_false_path -through [get_pins {MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQS/I_BIBUF_DIFF_DQS_0/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQS/I_BIBUF_DIFF_DQS_0/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_7/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_6/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_5/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_4/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_3/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_2/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_1/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQ/I_BIBUF_0/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_0_IOD_DQS/I_BIBUF_DIFF_DQS_0/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_7/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_6/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_5/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_4/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_3/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_2/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_1/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQ/I_BIBUF_0/Y MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_1_IOD_DQS/I_BIBUF_DIFF_DQS_0/Y}] 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {COREJTAGDEBUG_85_1s|iUDRCK_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_IOD_*.ARST_N }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.HS_IO_CLK_PAUSE }]
# set_false_path -through [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_*FEEDBACK*.Y }]
# set_false_path -through [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.OB_A_12.Y }]
# set_false_path -through [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.OB_DIFF_CK0.Y }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.DDR_READ }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.RESET }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.DELAY_LINE_DIRECTION }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.DELAY_LINE_MOVE }]
# set_false_path -through [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_IOD_*.DELAY_LINE_OUT_OF_RANGE }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.DELAY_LINE_LOAD MEMORY_0.DDR3_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.DELAY_LINE_SEL }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.SWITCH }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.LANE_*_CTRL.I_LANECTRL.READ_CLK_SEL[2] }]
# set_false_path -through [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_TRIBUFF_*.D }]
# set_false_path -through [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_TRIBUFF_*.E }]
# set_false_path -through [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_BIBUF*.D }]
# set_false_path -through [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_BIBUF*.E }]
# set_false_path -through [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_BIBUF_DIFF_DQS_*.YN }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_IOD_*.FIFO_RD_PTR* }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_IOD_*.RX_SYNC_RST* }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_IOD_*.FIFO_WR_PTR* }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_IOD_*.TX_SYNC_RST* }]
# set_false_path -to [get_pins { MEMORY_0.DDR3_0.DDRPHY_BLK_0.*.I_IOD_*.DELAY_LINE_MOVE }]

# Non-forward-annotatable constraints (intentionally commented out) 
# set_clock_groups -name Inferred_clkgroup_0 -derive -asynchronous -group c:uj_jtag_85|un1_duttck_inferred_clock

# Block Path constraints 

