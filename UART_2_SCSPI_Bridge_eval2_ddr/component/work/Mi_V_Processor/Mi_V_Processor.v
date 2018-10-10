//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Aug 30 13:44:54 2018
// Version: PolarFire v2.2 12.200.30.10
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Mi_V_Processor
module Mi_V_Processor(
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
    TRST,
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
    DRV_TDO,
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
input  [30:0] IRQ;
input         RESETN;
input         TCK;
input         TDI;
input         TMS;
input         TRST;
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
output        DRV_TDO;
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
wire          DRV_TDO_net_0;
wire   [30:0] IRQ;
wire          RESETN;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRST;
wire          AHB_MST_MEM_HSEL_net_1;
wire          TDO_net_1;
wire          DRV_TDO_net_1;
wire          AHB_MST_MEM_0_HWRITE_net_0;
wire          AHB_MST_MEM_0_HLOCK_net_0;
wire          AHB_MST_MMIO_0_HWRITE_net_0;
wire          AHB_MST_MMIO_0_HLOCK_net_0;
wire   [1:0]  AHB_MST_MEM_0_HTRANS_net_0;
wire   [31:0] AHB_MST_MEM_0_HADDR_net_0;
wire   [2:0]  AHB_MST_MEM_0_HSIZE_net_0;
wire   [2:0]  AHB_MST_MEM_0_HBURST_net_0;
wire   [3:0]  AHB_MST_MEM_0_HPROT_net_0;
wire   [31:0] AHB_MST_MEM_0_HWDATA_net_0;
wire   [1:0]  AHB_MST_MMIO_0_HTRANS_net_0;
wire   [30:0] AHB_MST_MMIO_0_HADDR_net_0;
wire   [2:0]  AHB_MST_MMIO_0_HSIZE_net_0;
wire   [2:0]  AHB_MST_MMIO_0_HBURST_net_0;
wire   [3:0]  AHB_MST_MMIO_0_HPROT_net_0;
wire   [31:0] AHB_MST_MMIO_0_HWDATA_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign AHB_MST_MEM_HSEL_net_1      = AHB_MST_MEM_HSEL_net_0;
assign AHB_MST_MEM_HSEL            = AHB_MST_MEM_HSEL_net_1;
assign TDO_net_1                   = TDO_net_0;
assign TDO                         = TDO_net_1;
assign DRV_TDO_net_1               = DRV_TDO_net_0;
assign DRV_TDO                     = DRV_TDO_net_1;
assign AHB_MST_MEM_0_HWRITE_net_0  = AHB_MST_MEM_0_HWRITE;
assign AHB_MST_MEM_HWRITE          = AHB_MST_MEM_0_HWRITE_net_0;
assign AHB_MST_MEM_0_HLOCK_net_0   = AHB_MST_MEM_0_HLOCK;
assign AHB_MST_MEM_HLOCK           = AHB_MST_MEM_0_HLOCK_net_0;
assign AHB_MST_MMIO_0_HWRITE_net_0 = AHB_MST_MMIO_0_HWRITE;
assign AHB_MST_MMIO_HWRITE         = AHB_MST_MMIO_0_HWRITE_net_0;
assign AHB_MST_MMIO_0_HLOCK_net_0  = AHB_MST_MMIO_0_HLOCK;
assign AHB_MST_MMIO_HLOCK          = AHB_MST_MMIO_0_HLOCK_net_0;
assign AHB_MST_MEM_0_HTRANS_net_0  = AHB_MST_MEM_0_HTRANS;
assign AHB_MST_MEM_HTRANS[1:0]     = AHB_MST_MEM_0_HTRANS_net_0;
assign AHB_MST_MEM_0_HADDR_net_0   = AHB_MST_MEM_0_HADDR;
assign AHB_MST_MEM_HADDR[31:0]     = AHB_MST_MEM_0_HADDR_net_0;
assign AHB_MST_MEM_0_HSIZE_net_0   = AHB_MST_MEM_0_HSIZE;
assign AHB_MST_MEM_HSIZE[2:0]      = AHB_MST_MEM_0_HSIZE_net_0;
assign AHB_MST_MEM_0_HBURST_net_0  = AHB_MST_MEM_0_HBURST;
assign AHB_MST_MEM_HBURST[2:0]     = AHB_MST_MEM_0_HBURST_net_0;
assign AHB_MST_MEM_0_HPROT_net_0   = AHB_MST_MEM_0_HPROT;
assign AHB_MST_MEM_HPROT[3:0]      = AHB_MST_MEM_0_HPROT_net_0;
assign AHB_MST_MEM_0_HWDATA_net_0  = AHB_MST_MEM_0_HWDATA;
assign AHB_MST_MEM_HWDATA[31:0]    = AHB_MST_MEM_0_HWDATA_net_0;
assign AHB_MST_MMIO_0_HTRANS_net_0 = AHB_MST_MMIO_0_HTRANS;
assign AHB_MST_MMIO_HTRANS[1:0]    = AHB_MST_MMIO_0_HTRANS_net_0;
assign AHB_MST_MMIO_0_HADDR_net_0  = AHB_MST_MMIO_0_HADDR;
assign AHB_MST_MMIO_HADDR[30:0]    = AHB_MST_MMIO_0_HADDR_net_0;
assign AHB_MST_MMIO_0_HSIZE_net_0  = AHB_MST_MMIO_0_HSIZE;
assign AHB_MST_MMIO_HSIZE[2:0]     = AHB_MST_MMIO_0_HSIZE_net_0;
assign AHB_MST_MMIO_0_HBURST_net_0 = AHB_MST_MMIO_0_HBURST;
assign AHB_MST_MMIO_HBURST[2:0]    = AHB_MST_MMIO_0_HBURST_net_0;
assign AHB_MST_MMIO_0_HPROT_net_0  = AHB_MST_MMIO_0_HPROT;
assign AHB_MST_MMIO_HPROT[3:0]     = AHB_MST_MMIO_0_HPROT_net_0;
assign AHB_MST_MMIO_0_HWDATA_net_0 = AHB_MST_MMIO_0_HWDATA;
assign AHB_MST_MMIO_HWDATA[31:0]   = AHB_MST_MMIO_0_HWDATA_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Mi_V_Processor_Mi_V_Processor_0_MIV_RV32IMA_L1_AHB   -   Microsemi:MiV:MIV_RV32IMA_L1_AHB:2.0.100
Mi_V_Processor_Mi_V_Processor_0_MIV_RV32IMA_L1_AHB #( 
        .RESET_VECTOR_ADDR_0 ( 'h0 ),
        .RESET_VECTOR_ADDR_1 ( 'h7000 ) )
Mi_V_Processor_0(
        // Inputs
        .CLK                 ( CLK ),
        .RESETN              ( RESETN ),
        .TCK                 ( TCK ),
        .TMS                 ( TMS ),
        .TRST                ( TRST ),
        .TDI                 ( TDI ),
        .AHB_MST_MMIO_HREADY ( AHB_MST_MMIO_HREADY ),
        .AHB_MST_MMIO_HRESP  ( AHB_MST_MMIO_HRESP ),
        .AHB_MST_MEM_HREADY  ( AHB_MST_MEM_HREADY ),
        .AHB_MST_MEM_HRESP   ( AHB_MST_MEM_HRESP ),
        .IRQ                 ( IRQ ),
        .AHB_MST_MMIO_HRDATA ( AHB_MST_MMIO_HRDATA ),
        .AHB_MST_MEM_HRDATA  ( AHB_MST_MEM_HRDATA ),
        // Outputs
        .TDO                 ( TDO_net_0 ),
        .DRV_TDO             ( DRV_TDO_net_0 ),
        .AHB_MST_MEM_HSEL    ( AHB_MST_MEM_HSEL_net_0 ),
        .AHB_MST_MMIO_HWRITE ( AHB_MST_MMIO_0_HWRITE ),
        .AHB_MST_MMIO_HLOCK  ( AHB_MST_MMIO_0_HLOCK ),
        .AHB_MST_MEM_HWRITE  ( AHB_MST_MEM_0_HWRITE ),
        .AHB_MST_MEM_HLOCK   ( AHB_MST_MEM_0_HLOCK ),
        .AHB_MST_MMIO_HTRANS ( AHB_MST_MMIO_0_HTRANS ),
        .AHB_MST_MMIO_HADDR  ( AHB_MST_MMIO_0_HADDR ),
        .AHB_MST_MMIO_HSIZE  ( AHB_MST_MMIO_0_HSIZE ),
        .AHB_MST_MMIO_HBURST ( AHB_MST_MMIO_0_HBURST ),
        .AHB_MST_MMIO_HPROT  ( AHB_MST_MMIO_0_HPROT ),
        .AHB_MST_MMIO_HWDATA ( AHB_MST_MMIO_0_HWDATA ),
        .AHB_MST_MEM_HTRANS  ( AHB_MST_MEM_0_HTRANS ),
        .AHB_MST_MEM_HADDR   ( AHB_MST_MEM_0_HADDR ),
        .AHB_MST_MEM_HSIZE   ( AHB_MST_MEM_0_HSIZE ),
        .AHB_MST_MEM_HBURST  ( AHB_MST_MEM_0_HBURST ),
        .AHB_MST_MEM_HPROT   ( AHB_MST_MEM_0_HPROT ),
        .AHB_MST_MEM_HWDATA  ( AHB_MST_MEM_0_HWDATA ) 
        );


endmodule
