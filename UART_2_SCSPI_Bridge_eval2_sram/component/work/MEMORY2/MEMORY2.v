//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Nov 21 16:16:15 2018
// Version: PolarFire v2.3 12.200.35.9
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// MEMORY2
module MEMORY2(
    // Inputs
    HADDR_M0,
    HBURST_M0,
    HCLK,
    HMASTLOCK_M0,
    HPROT_M0,
    HRESETN,
    HSIZE_M0,
    HTRANS_M0,
    HWDATA_M0,
    HWRITE_M0,
    // Outputs
    HRDATA_M0,
    HREADY_M0,
    HRESP_M0
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] HADDR_M0;
input  [2:0]  HBURST_M0;
input         HCLK;
input         HMASTLOCK_M0;
input  [3:0]  HPROT_M0;
input         HRESETN;
input  [2:0]  HSIZE_M0;
input  [1:0]  HTRANS_M0;
input  [31:0] HWDATA_M0;
input         HWRITE_M0;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] HRDATA_M0;
output        HREADY_M0;
output [1:0]  HRESP_M0;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] AHB_0_AHBmslave8_0_HADDR;
wire   [2:0]  AHB_0_AHBmslave8_0_HBURST;
wire          AHB_0_AHBmslave8_0_HMASTLOCK;
wire   [3:0]  AHB_0_AHBmslave8_0_HPROT;
wire   [31:0] AHB_0_AHBmslave8_0_HRDATA;
wire          AHB_0_AHBmslave8_0_HREADY;
wire          AHB_0_AHBmslave8_0_HREADYOUT;
wire   [1:0]  AHB_0_AHBmslave8_0_HRESP;
wire          AHB_0_AHBmslave8_0_HSELx;
wire   [2:0]  AHB_0_AHBmslave8_0_HSIZE;
wire   [1:0]  AHB_0_AHBmslave8_0_HTRANS;
wire   [31:0] AHB_0_AHBmslave8_0_HWDATA;
wire          AHB_0_AHBmslave8_0_HWRITE;
wire   [31:0] HADDR_M0;
wire   [2:0]  HBURST_M0;
wire          HMASTLOCK_M0;
wire   [3:0]  HPROT_M0;
wire   [31:0] AHBmmaster0_HRDATA;
wire          AHBmmaster0_HREADY;
wire   [1:0]  AHBmmaster0_HRESP;
wire   [2:0]  HSIZE_M0;
wire   [1:0]  HTRANS_M0;
wire   [31:0] HWDATA_M0;
wire          HWRITE_M0;
wire          HCLK;
wire          HRESETN;
wire   [31:0] AHBmmaster0_HRDATA_net_0;
wire          AHBmmaster0_HREADY_net_0;
wire   [1:0]  AHBmmaster0_HRESP_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign AHBmmaster0_HRDATA_net_0 = AHBmmaster0_HRDATA;
assign HRDATA_M0[31:0]          = AHBmmaster0_HRDATA_net_0;
assign AHBmmaster0_HREADY_net_0 = AHBmmaster0_HREADY;
assign HREADY_M0                = AHBmmaster0_HREADY_net_0;
assign AHBmmaster0_HRESP_net_0  = AHBmmaster0_HRESP;
assign HRESP_M0[1:0]            = AHBmmaster0_HRESP_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AHB
AHB AHB_0(
        // Inputs
        .HCLK         ( HCLK ),
        .HRESETN      ( HRESETN ),
        .REMAP_M0     ( GND_net ),
        .HADDR_M0     ( HADDR_M0 ),
        .HTRANS_M0    ( HTRANS_M0 ),
        .HWRITE_M0    ( HWRITE_M0 ),
        .HSIZE_M0     ( HSIZE_M0 ),
        .HBURST_M0    ( HBURST_M0 ),
        .HPROT_M0     ( HPROT_M0 ),
        .HWDATA_M0    ( HWDATA_M0 ),
        .HMASTLOCK_M0 ( HMASTLOCK_M0 ),
        .HRDATA_S8    ( AHB_0_AHBmslave8_0_HRDATA ),
        .HREADYOUT_S8 ( AHB_0_AHBmslave8_0_HREADYOUT ),
        .HRESP_S8     ( AHB_0_AHBmslave8_0_HRESP ),
        // Outputs
        .HRDATA_M0    ( AHBmmaster0_HRDATA ),
        .HREADY_M0    ( AHBmmaster0_HREADY ),
        .HRESP_M0     ( AHBmmaster0_HRESP ),
        .HADDR_S8     ( AHB_0_AHBmslave8_0_HADDR ),
        .HTRANS_S8    ( AHB_0_AHBmslave8_0_HTRANS ),
        .HWRITE_S8    ( AHB_0_AHBmslave8_0_HWRITE ),
        .HSIZE_S8     ( AHB_0_AHBmslave8_0_HSIZE ),
        .HWDATA_S8    ( AHB_0_AHBmslave8_0_HWDATA ),
        .HSEL_S8      ( AHB_0_AHBmslave8_0_HSELx ),
        .HREADY_S8    ( AHB_0_AHBmslave8_0_HREADY ),
        .HMASTLOCK_S8 ( AHB_0_AHBmslave8_0_HMASTLOCK ),
        .HBURST_S8    ( AHB_0_AHBmslave8_0_HBURST ),
        .HPROT_S8     ( AHB_0_AHBmslave8_0_HPROT ) 
        );

//--------Memory_app
Memory_app Memory_app_0(
        // Inputs
        .HCLK      ( HCLK ),
        .HRESETN   ( HRESETN ),
        .HADDR     ( AHB_0_AHBmslave8_0_HADDR ),
        .HTRANS    ( AHB_0_AHBmslave8_0_HTRANS ),
        .HWRITE    ( AHB_0_AHBmslave8_0_HWRITE ),
        .HSIZE     ( AHB_0_AHBmslave8_0_HSIZE ),
        .HBURST    ( AHB_0_AHBmslave8_0_HBURST ),
        .HWDATA    ( AHB_0_AHBmslave8_0_HWDATA ),
        .HSEL      ( AHB_0_AHBmslave8_0_HSELx ),
        .HREADYIN  ( AHB_0_AHBmslave8_0_HREADY ),
        // Outputs
        .HRDATA    ( AHB_0_AHBmslave8_0_HRDATA ),
        .HREADYOUT ( AHB_0_AHBmslave8_0_HREADYOUT ),
        .HRESP     ( AHB_0_AHBmslave8_0_HRESP ) 
        );


endmodule
