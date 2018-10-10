//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Sep 10 15:34:20 2018
// Version: PolarFire v2.2 12.200.30.10
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// TOP
module TOP(
    // Inputs
    IO_CFG_INTF,
    RESET_N,
    SC_SPI_EN,
    SPI_MISO,
    TCK,
    TDI,
    TMS,
    TRSTB,
    UART_RX,
    // Outputs
    GPIO_OUT,
    INT_RESET_N,
    SPI_FLASH_HOLD,
    SPI_FLASH_WP,
    SPI_MOSI,
    TDO,
    UART_TX,
    // Inouts
    SPI_CLK,
    SPI_SS
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        IO_CFG_INTF;
input        RESET_N;
input        SC_SPI_EN;
input        SPI_MISO;
input        TCK;
input        TDI;
input        TMS;
input        TRSTB;
input        UART_RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [3:0] GPIO_OUT;
output       INT_RESET_N;
output       SPI_FLASH_HOLD;
output       SPI_FLASH_WP;
output       SPI_MOSI;
output       TDO;
output       UART_TX;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout        SPI_CLK;
inout        SPI_SS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLOCKS_RESETS_0_CLK100;
wire   [3:0]  GPIO_OUT_net_0;
wire          INT_RESET_N_net_0;
wire          IO_0_RXRDY;
wire          IO_CFG_INTF;
wire   [31:0] PROCESSOR_0_AHB_MST_MEM_HADDR;
wire   [2:0]  PROCESSOR_0_AHB_MST_MEM_HBURST;
wire          PROCESSOR_0_AHB_MST_MEM_HLOCK;
wire   [3:0]  PROCESSOR_0_AHB_MST_MEM_HPROT;
wire   [31:0] PROCESSOR_0_AHB_MST_MEM_HRDATA;
wire          PROCESSOR_0_AHB_MST_MEM_HREADY;
wire   [2:0]  PROCESSOR_0_AHB_MST_MEM_HSIZE;
wire   [1:0]  PROCESSOR_0_AHB_MST_MEM_HTRANS;
wire   [31:0] PROCESSOR_0_AHB_MST_MEM_HWDATA;
wire          PROCESSOR_0_AHB_MST_MEM_HWRITE;
wire          PROCESSOR_0_AHB_MST_MEM_HSEL;
wire   [2:0]  PROCESSOR_0_AHB_MST_MMIO_HBURST;
wire          PROCESSOR_0_AHB_MST_MMIO_HLOCK;
wire   [3:0]  PROCESSOR_0_AHB_MST_MMIO_HPROT;
wire   [31:0] PROCESSOR_0_AHB_MST_MMIO_HRDATA;
wire          PROCESSOR_0_AHB_MST_MMIO_HREADY;
wire   [2:0]  PROCESSOR_0_AHB_MST_MMIO_HSIZE;
wire   [1:0]  PROCESSOR_0_AHB_MST_MMIO_HTRANS;
wire   [31:0] PROCESSOR_0_AHB_MST_MMIO_HWDATA;
wire          PROCESSOR_0_AHB_MST_MMIO_HWRITE;
wire          RESET_N;
wire          SC_SPI_EN;
wire          SPI_CLK;
wire          SPI_MISO;
wire          SPI_MOSI_0;
wire          SPI_SS;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          UART_RX;
wire          UART_TX_net_0;
wire          UART_TX_net_1;
wire          TDO_net_1;
wire          INT_RESET_N_net_1;
wire   [3:0]  GPIO_OUT_net_1;
wire          SPI_MOSI_0_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [0:0]  PROCESSOR_0_AHB_MST_MEM_HRESP_0_0to0;
wire          PROCESSOR_0_AHB_MST_MEM_HRESP_0;
wire   [1:0]  PROCESSOR_0_AHB_MST_MEM_HRESP;
wire   [31:31]PROCESSOR_0_AHB_MST_MMIO_HADDR_0_31to31;
wire   [30:0] PROCESSOR_0_AHB_MST_MMIO_HADDR_0_30to0;
wire   [31:0] PROCESSOR_0_AHB_MST_MMIO_HADDR_0;
wire   [30:0] PROCESSOR_0_AHB_MST_MMIO_HADDR;
wire   [1:0]  PROCESSOR_0_AHB_MST_MMIO_HRESP;
wire   [0:0]  PROCESSOR_0_AHB_MST_MMIO_HRESP_0_0to0;
wire          PROCESSOR_0_AHB_MST_MMIO_HRESP_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// TieOff assignments
//--------------------------------------------------------------------
assign SPI_FLASH_HOLD    = 1'b1;
assign SPI_FLASH_WP      = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign UART_TX_net_1     = UART_TX_net_0;
assign UART_TX           = UART_TX_net_1;
assign TDO_net_1         = TDO_net_0;
assign TDO               = TDO_net_1;
assign INT_RESET_N_net_1 = INT_RESET_N_net_0;
assign INT_RESET_N       = INT_RESET_N_net_1;
assign GPIO_OUT_net_1    = GPIO_OUT_net_0;
assign GPIO_OUT[3:0]     = GPIO_OUT_net_1;
assign SPI_MOSI_0_net_0  = SPI_MOSI_0;
assign SPI_MOSI          = SPI_MOSI_0_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign PROCESSOR_0_AHB_MST_MEM_HRESP_0_0to0 = PROCESSOR_0_AHB_MST_MEM_HRESP[0:0];
assign PROCESSOR_0_AHB_MST_MEM_HRESP_0 = { PROCESSOR_0_AHB_MST_MEM_HRESP_0_0to0 };

assign PROCESSOR_0_AHB_MST_MMIO_HADDR_0_31to31 = 1'b0;
assign PROCESSOR_0_AHB_MST_MMIO_HADDR_0_30to0 = PROCESSOR_0_AHB_MST_MMIO_HADDR[30:0];
assign PROCESSOR_0_AHB_MST_MMIO_HADDR_0 = { PROCESSOR_0_AHB_MST_MMIO_HADDR_0_31to31, PROCESSOR_0_AHB_MST_MMIO_HADDR_0_30to0 };

assign PROCESSOR_0_AHB_MST_MMIO_HRESP_0_0to0 = PROCESSOR_0_AHB_MST_MMIO_HRESP[0:0];
assign PROCESSOR_0_AHB_MST_MMIO_HRESP_0 = { PROCESSOR_0_AHB_MST_MMIO_HRESP_0_0to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CLOCKS_RESETS
CLOCKS_RESETS CLOCKS_RESETS_0(
        // Inputs
        .RESET_N     ( RESET_N ),
        // Outputs
        .CLK100      ( CLOCKS_RESETS_0_CLK100 ),
        .INT_RESET_N ( INT_RESET_N_net_0 ) 
        );

//--------IO
IO IO_0(
        // Inputs
        .HCLK         ( CLOCKS_RESETS_0_CLK100 ),
        .HRESETN      ( INT_RESET_N_net_0 ),
        .RX           ( UART_RX ),
        .HWRITE_M0    ( PROCESSOR_0_AHB_MST_MMIO_HWRITE ),
        .HMASTLOCK_M0 ( PROCESSOR_0_AHB_MST_MMIO_HLOCK ),
        .HADDR_M0     ( PROCESSOR_0_AHB_MST_MMIO_HADDR_0 ),
        .HTRANS_M0    ( PROCESSOR_0_AHB_MST_MMIO_HTRANS ),
        .HSIZE_M0     ( PROCESSOR_0_AHB_MST_MMIO_HSIZE ),
        .HBURST_M0    ( PROCESSOR_0_AHB_MST_MMIO_HBURST ),
        .HPROT_M0     ( PROCESSOR_0_AHB_MST_MMIO_HPROT ),
        .HWDATA_M0    ( PROCESSOR_0_AHB_MST_MMIO_HWDATA ),
        .SPI_MISO     ( SPI_MISO ),
        .IO_CFG_INTF  ( IO_CFG_INTF ),
        .SC_SPI_EN    ( SC_SPI_EN ),
        // Outputs
        .TX           ( UART_TX_net_0 ),
        .HREADY_M0    ( PROCESSOR_0_AHB_MST_MMIO_HREADY ),
        .RXRDY        ( IO_0_RXRDY ),
        .GPIO_OUT     ( GPIO_OUT_net_0 ),
        .HRDATA_M0    ( PROCESSOR_0_AHB_MST_MMIO_HRDATA ),
        .HRESP_M0     ( PROCESSOR_0_AHB_MST_MMIO_HRESP ),
        .SPI_MOSI     ( SPI_MOSI_0 ),
        // Inouts
        .SPI_CLK      ( SPI_CLK ),
        .SPI_SS       ( SPI_SS ) 
        );

//--------MEMORY2
MEMORY2 MEMORY_0(
        // Inputs
        .HCLK         ( CLOCKS_RESETS_0_CLK100 ),
        .HRESETN      ( INT_RESET_N_net_0 ),
        .HWRITE_M0    ( PROCESSOR_0_AHB_MST_MEM_HWRITE ),
        .HMASTLOCK_M0 ( PROCESSOR_0_AHB_MST_MEM_HLOCK ),
        .HADDR_M0     ( PROCESSOR_0_AHB_MST_MEM_HADDR ),
        .HTRANS_M0    ( PROCESSOR_0_AHB_MST_MEM_HTRANS ),
        .HSIZE_M0     ( PROCESSOR_0_AHB_MST_MEM_HSIZE ),
        .HBURST_M0    ( PROCESSOR_0_AHB_MST_MEM_HBURST ),
        .HPROT_M0     ( PROCESSOR_0_AHB_MST_MEM_HPROT ),
        .HWDATA_M0    ( PROCESSOR_0_AHB_MST_MEM_HWDATA ),
        // Outputs
        .HREADY_M0    ( PROCESSOR_0_AHB_MST_MEM_HREADY ),
        .HRDATA_M0    ( PROCESSOR_0_AHB_MST_MEM_HRDATA ),
        .HRESP_M0     ( PROCESSOR_0_AHB_MST_MEM_HRESP ) 
        );

//--------PROCESSOR
PROCESSOR PROCESSOR_0(
        // Inputs
        .CLK                 ( CLOCKS_RESETS_0_CLK100 ),
        .RESETN              ( INT_RESET_N_net_0 ),
        .TRSTB               ( TRSTB ),
        .TCK                 ( TCK ),
        .TDI                 ( TDI ),
        .TMS                 ( TMS ),
        .AHB_MST_MEM_HREADY  ( PROCESSOR_0_AHB_MST_MEM_HREADY ),
        .AHB_MST_MEM_HRESP   ( PROCESSOR_0_AHB_MST_MEM_HRESP_0 ),
        .AHB_MST_MMIO_HREADY ( PROCESSOR_0_AHB_MST_MMIO_HREADY ),
        .AHB_MST_MMIO_HRESP  ( PROCESSOR_0_AHB_MST_MMIO_HRESP_0 ),
        .IRQ                 ( IO_0_RXRDY ),
        .AHB_MST_MEM_HRDATA  ( PROCESSOR_0_AHB_MST_MEM_HRDATA ),
        .AHB_MST_MMIO_HRDATA ( PROCESSOR_0_AHB_MST_MMIO_HRDATA ),
        // Outputs
        .TDO                 ( TDO_net_0 ),
        .AHB_MST_MEM_HWRITE  ( PROCESSOR_0_AHB_MST_MEM_HWRITE ),
        .AHB_MST_MEM_HLOCK   ( PROCESSOR_0_AHB_MST_MEM_HLOCK ),
        .AHB_MST_MMIO_HWRITE ( PROCESSOR_0_AHB_MST_MMIO_HWRITE ),
        .AHB_MST_MMIO_HLOCK  ( PROCESSOR_0_AHB_MST_MMIO_HLOCK ),
        .AHB_MST_MEM_HSEL    ( PROCESSOR_0_AHB_MST_MEM_HSEL ),
        .AHB_MST_MEM_HADDR   ( PROCESSOR_0_AHB_MST_MEM_HADDR ),
        .AHB_MST_MEM_HTRANS  ( PROCESSOR_0_AHB_MST_MEM_HTRANS ),
        .AHB_MST_MEM_HSIZE   ( PROCESSOR_0_AHB_MST_MEM_HSIZE ),
        .AHB_MST_MEM_HBURST  ( PROCESSOR_0_AHB_MST_MEM_HBURST ),
        .AHB_MST_MEM_HPROT   ( PROCESSOR_0_AHB_MST_MEM_HPROT ),
        .AHB_MST_MEM_HWDATA  ( PROCESSOR_0_AHB_MST_MEM_HWDATA ),
        .AHB_MST_MMIO_HADDR  ( PROCESSOR_0_AHB_MST_MMIO_HADDR ),
        .AHB_MST_MMIO_HTRANS ( PROCESSOR_0_AHB_MST_MMIO_HTRANS ),
        .AHB_MST_MMIO_HSIZE  ( PROCESSOR_0_AHB_MST_MMIO_HSIZE ),
        .AHB_MST_MMIO_HBURST ( PROCESSOR_0_AHB_MST_MMIO_HBURST ),
        .AHB_MST_MMIO_HPROT  ( PROCESSOR_0_AHB_MST_MMIO_HPROT ),
        .AHB_MST_MMIO_HWDATA ( PROCESSOR_0_AHB_MST_MMIO_HWDATA ) 
        );


endmodule
