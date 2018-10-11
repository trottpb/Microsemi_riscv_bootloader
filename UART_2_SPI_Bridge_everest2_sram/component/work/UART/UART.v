//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Aug 06 08:07:39 2018
// Version: PolarFire v2.2 12.200.30.10
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// UART
module UART(
    // Inputs
    PADDR,
    PCLK,
    PENABLE,
    PRESETN,
    PSEL,
    PWDATA,
    PWRITE,
    RX,
    // Outputs
    FRAMING_ERR,
    OVERFLOW,
    PARITY_ERR,
    PRDATA,
    PREADY,
    PSLVERR,
    RXRDY,
    TX,
    TXRDY
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [4:0] PADDR;
input        PCLK;
input        PENABLE;
input        PRESETN;
input        PSEL;
input  [7:0] PWDATA;
input        PWRITE;
input        RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       FRAMING_ERR;
output       OVERFLOW;
output       PARITY_ERR;
output [7:0] PRDATA;
output       PREADY;
output       PSLVERR;
output       RXRDY;
output       TX;
output       TXRDY;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [4:0] PADDR;
wire         PENABLE;
wire   [7:0] APB_bif_PRDATA;
wire         APB_bif_PREADY;
wire         PSEL;
wire         APB_bif_PSLVERR;
wire   [7:0] PWDATA;
wire         PWRITE;
wire         FRAMING_ERR_net_0;
wire         OVERFLOW_net_0;
wire         PARITY_ERR_net_0;
wire         PCLK;
wire         PRESETN;
wire         RX;
wire         RXRDY_net_0;
wire         TX_net_0;
wire         TXRDY_net_0;
wire         TXRDY_net_1;
wire         RXRDY_net_1;
wire         PARITY_ERR_net_1;
wire         OVERFLOW_net_1;
wire         TX_net_1;
wire         FRAMING_ERR_net_1;
wire         APB_bif_PREADY_net_0;
wire         APB_bif_PSLVERR_net_0;
wire   [7:0] APB_bif_PRDATA_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TXRDY_net_1           = TXRDY_net_0;
assign TXRDY                 = TXRDY_net_1;
assign RXRDY_net_1           = RXRDY_net_0;
assign RXRDY                 = RXRDY_net_1;
assign PARITY_ERR_net_1      = PARITY_ERR_net_0;
assign PARITY_ERR            = PARITY_ERR_net_1;
assign OVERFLOW_net_1        = OVERFLOW_net_0;
assign OVERFLOW              = OVERFLOW_net_1;
assign TX_net_1              = TX_net_0;
assign TX                    = TX_net_1;
assign FRAMING_ERR_net_1     = FRAMING_ERR_net_0;
assign FRAMING_ERR           = FRAMING_ERR_net_1;
assign APB_bif_PREADY_net_0  = APB_bif_PREADY;
assign PREADY                = APB_bif_PREADY_net_0;
assign APB_bif_PSLVERR_net_0 = APB_bif_PSLVERR;
assign PSLVERR               = APB_bif_PSLVERR_net_0;
assign APB_bif_PRDATA_net_0  = APB_bif_PRDATA;
assign PRDATA[7:0]           = APB_bif_PRDATA_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------UART_UART_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.6.102
UART_UART_0_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 26 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
UART_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .PSEL        ( PSEL ),
        .PENABLE     ( PENABLE ),
        .PWRITE      ( PWRITE ),
        .RX          ( RX ),
        .PADDR       ( PADDR ),
        .PWDATA      ( PWDATA ),
        // Outputs
        .TXRDY       ( TXRDY_net_0 ),
        .RXRDY       ( RXRDY_net_0 ),
        .PARITY_ERR  ( PARITY_ERR_net_0 ),
        .OVERFLOW    ( OVERFLOW_net_0 ),
        .TX          ( TX_net_0 ),
        .PREADY      ( APB_bif_PREADY ),
        .PSLVERR     ( APB_bif_PSLVERR ),
        .FRAMING_ERR ( FRAMING_ERR_net_0 ),
        .PRDATA      ( APB_bif_PRDATA ) 
        );


endmodule
