//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Sep 07 13:28:12 2018
// Version: PolarFire v2.2 12.200.30.10
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// PROCESSOR
module PROCESSOR(
    // Inputs
    AHB_MST_MEM_HRDATA,
    AHB_MST_MEM_HREADY,
    AHB_MST_MEM_HRESP,
    AHB_MST_MMIO_HRDATA,
    AHB_MST_MMIO_HREADY,
    AHB_MST_MMIO_HRESP,
    CLK,
    IRQ,
    RESETN,
    TCK,
    TDI,
    TMS,
    TRSTB,
    // Outputs
    AHB_MST_MEM_HADDR,
    AHB_MST_MEM_HBURST,
    AHB_MST_MEM_HLOCK,
    AHB_MST_MEM_HPROT,
    AHB_MST_MEM_HSEL,
    AHB_MST_MEM_HSIZE,
    AHB_MST_MEM_HTRANS,
    AHB_MST_MEM_HWDATA,
    AHB_MST_MEM_HWRITE,
    AHB_MST_MMIO_HADDR,
    AHB_MST_MMIO_HBURST,
    AHB_MST_MMIO_HLOCK,
    AHB_MST_MMIO_HPROT,
    AHB_MST_MMIO_HSIZE,
    AHB_MST_MMIO_HTRANS,
    AHB_MST_MMIO_HWDATA,
    AHB_MST_MMIO_HWRITE,
    TDO
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] AHB_MST_MEM_HRDATA;
input         AHB_MST_MEM_HREADY;
input         AHB_MST_MEM_HRESP;
input  [31:0] AHB_MST_MMIO_HRDATA;
input         AHB_MST_MMIO_HREADY;
input         AHB_MST_MMIO_HRESP;
input         CLK;
input         IRQ;
input         RESETN;
input         TCK;
input         TDI;
input         TMS;
input         TRSTB;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] AHB_MST_MEM_HADDR;
output [2:0]  AHB_MST_MEM_HBURST;
output        AHB_MST_MEM_HLOCK;
output [3:0]  AHB_MST_MEM_HPROT;
output        AHB_MST_MEM_HSEL;
output [2:0]  AHB_MST_MEM_HSIZE;
output [1:0]  AHB_MST_MEM_HTRANS;
output [31:0] AHB_MST_MEM_HWDATA;
output        AHB_MST_MEM_HWRITE;
output [30:0] AHB_MST_MMIO_HADDR;
output [2:0]  AHB_MST_MMIO_HBURST;
output        AHB_MST_MMIO_HLOCK;
output [3:0]  AHB_MST_MMIO_HPROT;
output [2:0]  AHB_MST_MMIO_HSIZE;
output [1:0]  AHB_MST_MMIO_HTRANS;
output [31:0] AHB_MST_MMIO_HWDATA;
output        AHB_MST_MMIO_HWRITE;
output        TDO;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] AHB_MST_MEM_0_HADDR;
wire   [2:0]  AHB_MST_MEM_0_HBURST;
wire          AHB_MST_MEM_0_HLOCK;
wire   [3:0]  AHB_MST_MEM_0_HPROT;
wire   [31:0] AHB_MST_MEM_HRDATA;
wire          AHB_MST_MEM_HREADY;
wire          AHB_MST_MEM_HRESP;
wire   [2:0]  AHB_MST_MEM_0_HSIZE;
wire   [1:0]  AHB_MST_MEM_0_HTRANS;
wire   [31:0] AHB_MST_MEM_0_HWDATA;
wire          AHB_MST_MEM_0_HWRITE;
wire          AHB_MST_MEM_HSEL_net_0;
wire   [30:0] AHB_MST_MMIO_0_HADDR;
wire   [2:0]  AHB_MST_MMIO_0_HBURST;
wire          AHB_MST_MMIO_0_HLOCK;
wire   [3:0]  AHB_MST_MMIO_0_HPROT;
wire   [31:0] AHB_MST_MMIO_HRDATA;
wire          AHB_MST_MMIO_HREADY;
wire          AHB_MST_MMIO_HRESP;
wire   [2:0]  AHB_MST_MMIO_0_HSIZE;
wire   [1:0]  AHB_MST_MMIO_0_HTRANS;
wire   [31:0] AHB_MST_MMIO_0_HWDATA;
wire          AHB_MST_MMIO_0_HWRITE;
wire          CLK;
wire          IRQ;
wire          JTAG_DEBUG_0_TGT_TCK;
wire          JTAG_DEBUG_0_TGT_TDI;
wire          JTAG_DEBUG_0_TGT_TMS;
wire          JTAG_DEBUG_0_TGT_TRST;
wire          Mi_V_Processor_0_TDO;
wire          RESETN;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          TDO_net_1;
wire          AHB_MST_MEM_0_HWRITE_net_0;
wire          AHB_MST_MEM_0_HLOCK_net_0;
wire          AHB_MST_MMIO_0_HWRITE_net_0;
wire          AHB_MST_MMIO_0_HLOCK_net_0;
wire          AHB_MST_MEM_HSEL_net_1;
wire   [31:0] AHB_MST_MEM_0_HADDR_net_0;
wire   [1:0]  AHB_MST_MEM_0_HTRANS_net_0;
wire   [2:0]  AHB_MST_MEM_0_HSIZE_net_0;
wire   [2:0]  AHB_MST_MEM_0_HBURST_net_0;
wire   [3:0]  AHB_MST_MEM_0_HPROT_net_0;
wire   [31:0] AHB_MST_MEM_0_HWDATA_net_0;
wire   [30:0] AHB_MST_MMIO_0_HADDR_net_0;
wire   [1:0]  AHB_MST_MMIO_0_HTRANS_net_0;
wire   [2:0]  AHB_MST_MMIO_0_HSIZE_net_0;
wire   [2:0]  AHB_MST_MMIO_0_HBURST_net_0;
wire   [3:0]  AHB_MST_MMIO_0_HPROT_net_0;
wire   [31:0] AHB_MST_MMIO_0_HWDATA_net_0;
wire   [30:0] IRQ_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire   [30:1] IRQ_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net         = 1'b0;
assign IRQ_const_net_0 = 30'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1                   = TDO_net_0;
assign TDO                         = TDO_net_1;
assign AHB_MST_MEM_0_HWRITE_net_0  = AHB_MST_MEM_0_HWRITE;
assign AHB_MST_MEM_HWRITE          = AHB_MST_MEM_0_HWRITE_net_0;
assign AHB_MST_MEM_0_HLOCK_net_0   = AHB_MST_MEM_0_HLOCK;
assign AHB_MST_MEM_HLOCK           = AHB_MST_MEM_0_HLOCK_net_0;
assign AHB_MST_MMIO_0_HWRITE_net_0 = AHB_MST_MMIO_0_HWRITE;
assign AHB_MST_MMIO_HWRITE         = AHB_MST_MMIO_0_HWRITE_net_0;
assign AHB_MST_MMIO_0_HLOCK_net_0  = AHB_MST_MMIO_0_HLOCK;
assign AHB_MST_MMIO_HLOCK          = AHB_MST_MMIO_0_HLOCK_net_0;
assign AHB_MST_MEM_HSEL_net_1      = AHB_MST_MEM_HSEL_net_0;
assign AHB_MST_MEM_HSEL            = AHB_MST_MEM_HSEL_net_1;
assign AHB_MST_MEM_0_HADDR_net_0   = AHB_MST_MEM_0_HADDR;
assign AHB_MST_MEM_HADDR[31:0]     = AHB_MST_MEM_0_HADDR_net_0;
assign AHB_MST_MEM_0_HTRANS_net_0  = AHB_MST_MEM_0_HTRANS;
assign AHB_MST_MEM_HTRANS[1:0]     = AHB_MST_MEM_0_HTRANS_net_0;
assign AHB_MST_MEM_0_HSIZE_net_0   = AHB_MST_MEM_0_HSIZE;
assign AHB_MST_MEM_HSIZE[2:0]      = AHB_MST_MEM_0_HSIZE_net_0;
assign AHB_MST_MEM_0_HBURST_net_0  = AHB_MST_MEM_0_HBURST;
assign AHB_MST_MEM_HBURST[2:0]     = AHB_MST_MEM_0_HBURST_net_0;
assign AHB_MST_MEM_0_HPROT_net_0   = AHB_MST_MEM_0_HPROT;
assign AHB_MST_MEM_HPROT[3:0]      = AHB_MST_MEM_0_HPROT_net_0;
assign AHB_MST_MEM_0_HWDATA_net_0  = AHB_MST_MEM_0_HWDATA;
assign AHB_MST_MEM_HWDATA[31:0]    = AHB_MST_MEM_0_HWDATA_net_0;
assign AHB_MST_MMIO_0_HADDR_net_0  = AHB_MST_MMIO_0_HADDR;
assign AHB_MST_MMIO_HADDR[30:0]    = AHB_MST_MMIO_0_HADDR_net_0;
assign AHB_MST_MMIO_0_HTRANS_net_0 = AHB_MST_MMIO_0_HTRANS;
assign AHB_MST_MMIO_HTRANS[1:0]    = AHB_MST_MMIO_0_HTRANS_net_0;
assign AHB_MST_MMIO_0_HSIZE_net_0  = AHB_MST_MMIO_0_HSIZE;
assign AHB_MST_MMIO_HSIZE[2:0]     = AHB_MST_MMIO_0_HSIZE_net_0;
assign AHB_MST_MMIO_0_HBURST_net_0 = AHB_MST_MMIO_0_HBURST;
assign AHB_MST_MMIO_HBURST[2:0]    = AHB_MST_MMIO_0_HBURST_net_0;
assign AHB_MST_MMIO_0_HPROT_net_0  = AHB_MST_MMIO_0_HPROT;
assign AHB_MST_MMIO_HPROT[3:0]     = AHB_MST_MMIO_0_HPROT_net_0;
assign AHB_MST_MMIO_0_HWDATA_net_0 = AHB_MST_MMIO_0_HWDATA;
assign AHB_MST_MMIO_HWDATA[31:0]   = AHB_MST_MMIO_0_HWDATA_net_0;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign IRQ_net_0 = { 30'h00000000 , IRQ };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------JTAG_DEBUG
JTAG_DEBUG JTAG_DEBUG_0(
        // Inputs
        .TDI        ( TDI ),
        .TCK        ( TCK ),
        .TMS        ( TMS ),
        .TRSTB      ( TRSTB ),
        .TGT_TDO    ( Mi_V_Processor_0_TDO ),
        .UTDODRV_0  ( GND_net ),
        .UTDODRV_1  ( GND_net ),
        .UTDODRV_2  ( GND_net ),
        .UTDODRV_3  ( GND_net ),
        .UTDO_IN_0  ( GND_net ),
        .UTDO_IN_1  ( GND_net ),
        .UTDO_IN_2  ( GND_net ),
        .UTDO_IN_3  ( GND_net ),
        // Outputs
        .TDO        ( TDO_net_0 ),
        .TGT_TCK    ( JTAG_DEBUG_0_TGT_TCK ),
        .TGT_TRST   ( JTAG_DEBUG_0_TGT_TRST ),
        .TGT_TMS    ( JTAG_DEBUG_0_TGT_TMS ),
        .TGT_TDI    ( JTAG_DEBUG_0_TGT_TDI ),
        .UDRCAP_OUT (  ),
        .UDRSH_OUT  (  ),
        .UDRUPD_OUT (  ),
        .URSTB_OUT  (  ),
        .UDRCK_OUT  (  ),
        .UTDI_OUT   (  ),
        .UIREG_OUT  (  ) 
        );

//--------Mi_V_Processor
Mi_V_Processor Mi_V_Processor_0(
        // Inputs
        .CLK                 ( CLK ),
        .RESETN              ( RESETN ),
        .TDI                 ( JTAG_DEBUG_0_TGT_TDI ),
        .TCK                 ( JTAG_DEBUG_0_TGT_TCK ),
        .TMS                 ( JTAG_DEBUG_0_TGT_TMS ),
        .TRST                ( JTAG_DEBUG_0_TGT_TRST ),
        .AHB_MST_MEM_HREADY  ( AHB_MST_MEM_HREADY ),
        .AHB_MST_MEM_HRESP   ( AHB_MST_MEM_HRESP ),
        .AHB_MST_MMIO_HREADY ( AHB_MST_MMIO_HREADY ),
        .AHB_MST_MMIO_HRESP  ( AHB_MST_MMIO_HRESP ),
        .IRQ                 ( IRQ_net_0 ),
        .AHB_MST_MEM_HRDATA  ( AHB_MST_MEM_HRDATA ),
        .AHB_MST_MMIO_HRDATA ( AHB_MST_MMIO_HRDATA ),
        // Outputs
        .AHB_MST_MEM_HSEL    ( AHB_MST_MEM_HSEL_net_0 ),
        .TDO                 ( Mi_V_Processor_0_TDO ),
        .DRV_TDO             (  ),
        .AHB_MST_MEM_HWRITE  ( AHB_MST_MEM_0_HWRITE ),
        .AHB_MST_MEM_HLOCK   ( AHB_MST_MEM_0_HLOCK ),
        .AHB_MST_MMIO_HWRITE ( AHB_MST_MMIO_0_HWRITE ),
        .AHB_MST_MMIO_HLOCK  ( AHB_MST_MMIO_0_HLOCK ),
        .AHB_MST_MEM_HTRANS  ( AHB_MST_MEM_0_HTRANS ),
        .AHB_MST_MEM_HADDR   ( AHB_MST_MEM_0_HADDR ),
        .AHB_MST_MEM_HSIZE   ( AHB_MST_MEM_0_HSIZE ),
        .AHB_MST_MEM_HBURST  ( AHB_MST_MEM_0_HBURST ),
        .AHB_MST_MEM_HPROT   ( AHB_MST_MEM_0_HPROT ),
        .AHB_MST_MEM_HWDATA  ( AHB_MST_MEM_0_HWDATA ),
        .AHB_MST_MMIO_HTRANS ( AHB_MST_MMIO_0_HTRANS ),
        .AHB_MST_MMIO_HADDR  ( AHB_MST_MMIO_0_HADDR ),
        .AHB_MST_MMIO_HSIZE  ( AHB_MST_MMIO_0_HSIZE ),
        .AHB_MST_MMIO_HBURST ( AHB_MST_MMIO_0_HBURST ),
        .AHB_MST_MMIO_HPROT  ( AHB_MST_MMIO_0_HPROT ),
        .AHB_MST_MMIO_HWDATA ( AHB_MST_MMIO_0_HWDATA ) 
        );


endmodule
