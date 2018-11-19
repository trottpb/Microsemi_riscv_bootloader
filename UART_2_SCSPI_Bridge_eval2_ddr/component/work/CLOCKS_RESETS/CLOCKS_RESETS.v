//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Oct 18 10:14:30 2018
// Version: PolarFire v2.3 12.200.35.9
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// CLOCKS_RESETS
module CLOCKS_RESETS(
    // Inputs
    RESET_N,
    // Outputs
    CLK100,
    INT_RESET_N
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  RESET_N;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output CLK100;
output INT_RESET_N;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   AND3_0_Y;
wire   CCC_100MHz_0_PLL_LOCK_0;
wire   CLK100_net_0;
wire   Init_Monitor_0_DEVICE_INIT_DONE;
wire   INT_RESET_N_net_0;
wire   RCOSC_0_RCOSC_160MHZ_GL;
wire   RESET_N;
wire   CLK100_net_1;
wire   INT_RESET_N_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign CLK100_net_1      = CLK100_net_0;
assign CLK100            = CLK100_net_1;
assign INT_RESET_N_net_1 = INT_RESET_N_net_0;
assign INT_RESET_N       = INT_RESET_N_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND3
AND3 AND3_0(
        // Inputs
        .A ( CCC_100MHz_0_PLL_LOCK_0 ),
        .B ( RESET_N ),
        .C ( Init_Monitor_0_DEVICE_INIT_DONE ),
        // Outputs
        .Y ( AND3_0_Y ) 
        );

//--------CCC_100MHz
CCC_100MHz CCC_100MHz_0(
        // Inputs
        .REF_CLK_0     ( RCOSC_0_RCOSC_160MHZ_GL ),
        // Outputs
        .OUT0_FABCLK_0 ( CLK100_net_0 ),
        .PLL_LOCK_0    ( CCC_100MHz_0_PLL_LOCK_0 ) 
        );

//--------Init_Monitor
Init_Monitor Init_Monitor_0(
        // Outputs
        .FABRIC_POR_N               (  ),
        .PCIE_INIT_DONE             (  ),
        .USRAM_INIT_DONE            (  ),
        .SRAM_INIT_DONE             (  ),
        .DEVICE_INIT_DONE           ( Init_Monitor_0_DEVICE_INIT_DONE ),
        .XCVR_INIT_DONE             (  ),
        .USRAM_INIT_FROM_SNVM_DONE  (  ),
        .USRAM_INIT_FROM_UPROM_DONE (  ),
        .USRAM_INIT_FROM_SPI_DONE   (  ),
        .SRAM_INIT_FROM_SNVM_DONE   (  ),
        .SRAM_INIT_FROM_UPROM_DONE  (  ),
        .SRAM_INIT_FROM_SPI_DONE    (  ),
        .AUTOCALIB_DONE             (  ) 
        );

//--------RCOSC
RCOSC RCOSC_0(
        // Outputs
        .RCOSC_160MHZ_GL ( RCOSC_0_RCOSC_160MHZ_GL ) 
        );

//--------reset_synchronizer
reset_synchronizer reset_synchronizer_0(
        // Inputs
        .clock      ( CLK100_net_0 ),
        .reset      ( AND3_0_Y ),
        // Outputs
        .reset_sync ( INT_RESET_N_net_0 ) 
        );


endmodule
