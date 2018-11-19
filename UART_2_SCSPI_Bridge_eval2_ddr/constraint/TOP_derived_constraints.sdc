# Microsemi Corp.
# Date: 2018-Oct-18 11:32:25
# This file was generated based on the following SDC source files:
#   C:/Microsemiprj_PF23/apps/riscv_bootloader/UART_2_SCSPI_Bridge_eval2_ddr/component/work/CCC_100MHz/CCC_100MHz_0/CCC_100MHz_CCC_100MHz_0_PF_CCC.sdc
#   C:/Microsemiprj_PF23/apps/riscv_bootloader/UART_2_SCSPI_Bridge_eval2_ddr/component/work/DDR3/DDR3.sdc
#   C:/Microsemiprj_PF23/apps/riscv_bootloader/UART_2_SCSPI_Bridge_eval2_ddr/component/work/DDR3/CCC_0/DDR3_CCC_0_PF_CCC.sdc
#   C:/Microsemiprj_PF23/apps/riscv_bootloader/UART_2_SCSPI_Bridge_eval2_ddr/component/work/DDR3/DLL_0/DDR3_DLL_0_PF_CCC.sdc
#   C:/Microsemi/Libero_SoC_PolarFire_v2.3/Designer/data/aPA5M/cores/constraints/osc_rc160mhz.sdc
#

create_clock -name {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK} -period 6.25 [ get_pins { CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK } ]
create_generated_clock -name {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0} -multiply_by 25 -divide_by 36 -source [ get_pins { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0 } ]
create_generated_clock -name {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT0} -multiply_by 4 -source [ get_pins { MEMORY_0/DDR3_0/CCC_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT0 } ]
create_generated_clock -name {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT1} -divide_by 1 -source [ get_pins { MEMORY_0/DDR3_0/CCC_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT1 } ]
create_generated_clock -name {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT2} -multiply_by 4 -source [ get_pins { MEMORY_0/DDR3_0/CCC_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT2 } ]
create_generated_clock -name {MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT3} -multiply_by 4 -source [ get_pins { MEMORY_0/DDR3_0/CCC_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { MEMORY_0/DDR3_0/CCC_0/pll_inst_0/OUT3 } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_IOD_*/ARST_N } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_*_CTRL/I_LANECTRL/HS_IO_CLK_PAUSE } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_*FEEDBACK*/Y } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/OB_A_12/Y } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/OB_DIFF_CK0/Y } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_*_CTRL/I_LANECTRL/DDR_READ } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_*_CTRL/I_LANECTRL/RESET } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_*_CTRL/I_LANECTRL/DELAY_LINE_DIRECTION } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_*_CTRL/I_LANECTRL/DELAY_LINE_MOVE } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_IOD_*/DELAY_LINE_OUT_OF_RANGE } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_*_CTRL/I_LANECTRL/DELAY_LINE_LOAD MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_*_CTRL/I_LANECTRL/DELAY_LINE_SEL } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_*_CTRL/I_LANECTRL/SWITCH } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/LANE_*_CTRL/I_LANECTRL/READ_CLK_SEL[2] } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_TRIBUFF_*/D } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_TRIBUFF_*/E } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_BIBUF*/D } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_BIBUF*/E } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_BIBUF*/Y } ]
set_false_path -through [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_BIBUF_DIFF_DQS_*/YN } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_IOD_*/FIFO_RD_PTR* } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_IOD_*/RX_SYNC_RST* } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_IOD_*/FIFO_WR_PTR* } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_IOD_*/TX_SYNC_RST* } ]
set_false_path -to [ get_pins { MEMORY_0/DDR3_0/DDRPHY_BLK_0/*/I_IOD_*/DELAY_LINE_MOVE } ]
set_multicycle_path -setup_only 2 -from [ get_cells { MEMORY_0/DDR3_0/DDRPHY_BLK_0/IOD_TRAINING_0/COREDDR_TIP_INT_U/TIP_CTRL_BLK/u_write_callibrator/select* } ]
