# Written by Synplify Pro version mapact2017q4p1, Build 003R. Synopsys Run ID: sid1541691324 
# Top Level Design Parameters 

# Clocks 
create_clock -period 6.250 -waveform {0.000 3.125} -name {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK} [get_pins {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160/CLK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {COREJTAGDEBUG_85_1s|iUDRCK_inferred_clock} [get_pins {PROCESSOR_0/JTAG_DEBUG_0/JTAG_DEBUG_0/genblk1.UJTAG_0/UDRCK}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0} -multiply_by {5} -divide_by {8} -source [get_pins {CLOCKS_RESETS_0/RCOSC_0/RCOSC_0/I_OSC_160_INT/Y}]  [get_pins {CLOCKS_RESETS_0/CCC_100MHz_0/CCC_100MHz_0/pll_inst_0/OUT0}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

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

# Non-forward-annotatable constraints (intentionally commented out) 
# set_clock_groups -name Inferred_clkgroup_0 -derive -asynchronous -group c:uj_jtag_85|un1_duttck_inferred_clock

# Block Path constraints 

