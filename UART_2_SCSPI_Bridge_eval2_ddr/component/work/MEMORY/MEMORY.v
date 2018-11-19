//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Oct 18 10:12:57 2018
// Version: PolarFire v2.3 12.200.35.9
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// MEMORY
module MEMORY(
    // Inputs
    HADDR_M0,
    HBURST_M0,
    HCLK,
    HPROT_M0,
    HRESETN,
    HSIZE_M0,
    HTRANS_M0,
    HWDATA_M0,
    HWRITE_M0,
    MASTER0_HSEL,
    // Outputs
    A,
    BA,
    CAS_N,
    CK0,
    CK0_N,
    CKE,
    CS_N,
    DM,
    HRDATA_M0,
    HREADY_M0,
    HRESP_M0,
    ODT,
    RAS_N,
    RESET_N,
    SHIELD0,
    SHIELD1,
    SYS_CLK,
    WE_N,
    // Inouts
    DQ,
    DQS,
    DQS_N
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] HADDR_M0;
input  [2:0]  HBURST_M0;
input         HCLK;
input  [6:0]  HPROT_M0;
input         HRESETN;
input  [2:0]  HSIZE_M0;
input  [1:0]  HTRANS_M0;
input  [31:0] HWDATA_M0;
input         HWRITE_M0;
input         MASTER0_HSEL;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [15:0] A;
output [2:0]  BA;
output        CAS_N;
output        CK0;
output        CK0_N;
output        CKE;
output        CS_N;
output [1:0]  DM;
output [31:0] HRDATA_M0;
output        HREADY_M0;
output        HRESP_M0;
output        ODT;
output        RAS_N;
output        RESET_N;
output        SHIELD0;
output        SHIELD1;
output        SYS_CLK;
output        WE_N;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [15:0] DQ;
inout  [1:0]  DQS;
inout  [1:0]  DQS_N;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [15:0] A_net_0;
wire   [31:0] HADDR_M0;
wire   [2:0]  HBURST_M0;
wire   [6:0]  HPROT_M0;
wire   [31:0] AHBmmaster0_HRDATA;
wire          AHBmmaster0_HREADY;
wire          AHBmmaster0_HRESP;
wire   [2:0]  HSIZE_M0;
wire   [1:0]  HTRANS_M0;
wire   [31:0] HWDATA_M0;
wire          HWRITE_M0;
wire   [31:0] AXI_INTERCONNECT_0_AXI4mslave0_ARADDR;
wire   [1:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARBURST;
wire   [3:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARCACHE;
wire   [7:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARLEN;
wire   [1:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARLOCK;
wire   [2:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARPROT;
wire   [3:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARQOS;
wire          AXI_INTERCONNECT_0_AXI4mslave0_ARREADY;
wire   [3:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARREGION;
wire   [2:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARSIZE;
wire   [0:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARUSER;
wire          AXI_INTERCONNECT_0_AXI4mslave0_ARVALID;
wire   [31:0] AXI_INTERCONNECT_0_AXI4mslave0_AWADDR;
wire   [1:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWBURST;
wire   [3:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWCACHE;
wire   [7:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWLEN;
wire   [1:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWLOCK;
wire   [2:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWPROT;
wire   [3:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWQOS;
wire          AXI_INTERCONNECT_0_AXI4mslave0_AWREADY;
wire   [3:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWREGION;
wire   [2:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWSIZE;
wire   [0:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWUSER;
wire          AXI_INTERCONNECT_0_AXI4mslave0_AWVALID;
wire          AXI_INTERCONNECT_0_AXI4mslave0_BREADY;
wire   [1:0]  AXI_INTERCONNECT_0_AXI4mslave0_BRESP;
wire          AXI_INTERCONNECT_0_AXI4mslave0_BVALID;
wire   [63:0] AXI_INTERCONNECT_0_AXI4mslave0_RDATA;
wire          AXI_INTERCONNECT_0_AXI4mslave0_RLAST;
wire          AXI_INTERCONNECT_0_AXI4mslave0_RREADY;
wire   [1:0]  AXI_INTERCONNECT_0_AXI4mslave0_RRESP;
wire          AXI_INTERCONNECT_0_AXI4mslave0_RVALID;
wire   [63:0] AXI_INTERCONNECT_0_AXI4mslave0_WDATA;
wire          AXI_INTERCONNECT_0_AXI4mslave0_WLAST;
wire          AXI_INTERCONNECT_0_AXI4mslave0_WREADY;
wire   [7:0]  AXI_INTERCONNECT_0_AXI4mslave0_WSTRB;
wire   [0:0]  AXI_INTERCONNECT_0_AXI4mslave0_WUSER;
wire          AXI_INTERCONNECT_0_AXI4mslave0_WVALID;
wire   [2:0]  BA_net_0;
wire          CAS_N_net_0;
wire          CK0_net_0;
wire          CK0_N_net_0;
wire          CKE_net_0;
wire          CS_N_net_0;
wire   [1:0]  DM_net_0;
wire   [15:0] DQ;
wire   [1:0]  DQS;
wire   [1:0]  DQS_N;
wire          HCLK;
wire          HRESETN;
wire          MASTER0_HSEL;
wire          ODT_net_0;
wire          RAS_N_net_0;
wire          RESET_N_net_0;
wire          SHIELD0_net_0;
wire          SHIELD1_net_0;
wire          SYS_CLK_net_0;
wire          WE_N_net_0;
wire          CKE_net_1;
wire          CS_N_net_1;
wire          ODT_net_1;
wire          RAS_N_net_1;
wire          CAS_N_net_1;
wire          WE_N_net_1;
wire          RESET_N_net_1;
wire          CK0_net_1;
wire          CK0_N_net_1;
wire          SHIELD0_net_1;
wire          SHIELD1_net_1;
wire   [1:0]  DM_net_1;
wire   [2:0]  BA_net_1;
wire   [15:0] A_net_1;
wire   [31:0] AHBmmaster0_HRDATA_net_0;
wire          AHBmmaster0_HREADY_net_0;
wire          AHBmmaster0_HRESP_net_0;
wire          SYS_CLK_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [4:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARID;
wire   [5:5]  AXI_INTERCONNECT_0_AXI4mslave0_ARID_0_5to5;
wire   [4:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARID_0_4to0;
wire   [5:0]  AXI_INTERCONNECT_0_AXI4mslave0_ARID_0;
wire   [4:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWID;
wire   [5:5]  AXI_INTERCONNECT_0_AXI4mslave0_AWID_0_5to5;
wire   [4:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWID_0_4to0;
wire   [5:0]  AXI_INTERCONNECT_0_AXI4mslave0_AWID_0;
wire   [4:0]  AXI_INTERCONNECT_0_AXI4mslave0_BID_0_4to0;
wire   [4:0]  AXI_INTERCONNECT_0_AXI4mslave0_BID_0;
wire   [5:0]  AXI_INTERCONNECT_0_AXI4mslave0_BID;
wire   [5:0]  AXI_INTERCONNECT_0_AXI4mslave0_RID;
wire   [4:0]  AXI_INTERCONNECT_0_AXI4mslave0_RID_0_4to0;
wire   [4:0]  AXI_INTERCONNECT_0_AXI4mslave0_RID_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net    = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign CKE_net_1                = CKE_net_0;
assign CKE                      = CKE_net_1;
assign CS_N_net_1               = CS_N_net_0;
assign CS_N                     = CS_N_net_1;
assign ODT_net_1                = ODT_net_0;
assign ODT                      = ODT_net_1;
assign RAS_N_net_1              = RAS_N_net_0;
assign RAS_N                    = RAS_N_net_1;
assign CAS_N_net_1              = CAS_N_net_0;
assign CAS_N                    = CAS_N_net_1;
assign WE_N_net_1               = WE_N_net_0;
assign WE_N                     = WE_N_net_1;
assign RESET_N_net_1            = RESET_N_net_0;
assign RESET_N                  = RESET_N_net_1;
assign CK0_net_1                = CK0_net_0;
assign CK0                      = CK0_net_1;
assign CK0_N_net_1              = CK0_N_net_0;
assign CK0_N                    = CK0_N_net_1;
assign SHIELD0_net_1            = SHIELD0_net_0;
assign SHIELD0                  = SHIELD0_net_1;
assign SHIELD1_net_1            = SHIELD1_net_0;
assign SHIELD1                  = SHIELD1_net_1;
assign DM_net_1                 = DM_net_0;
assign DM[1:0]                  = DM_net_1;
assign BA_net_1                 = BA_net_0;
assign BA[2:0]                  = BA_net_1;
assign A_net_1                  = A_net_0;
assign A[15:0]                  = A_net_1;
assign AHBmmaster0_HRDATA_net_0 = AHBmmaster0_HRDATA;
assign HRDATA_M0[31:0]          = AHBmmaster0_HRDATA_net_0;
assign AHBmmaster0_HREADY_net_0 = AHBmmaster0_HREADY;
assign HREADY_M0                = AHBmmaster0_HREADY_net_0;
assign AHBmmaster0_HRESP_net_0  = AHBmmaster0_HRESP;
assign HRESP_M0                 = AHBmmaster0_HRESP_net_0;
assign SYS_CLK_net_1            = SYS_CLK_net_0;
assign SYS_CLK                  = SYS_CLK_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign AXI_INTERCONNECT_0_AXI4mslave0_ARID_0_5to5 = 1'b0;
assign AXI_INTERCONNECT_0_AXI4mslave0_ARID_0_4to0 = AXI_INTERCONNECT_0_AXI4mslave0_ARID[4:0];
assign AXI_INTERCONNECT_0_AXI4mslave0_ARID_0 = { AXI_INTERCONNECT_0_AXI4mslave0_ARID_0_5to5, AXI_INTERCONNECT_0_AXI4mslave0_ARID_0_4to0 };

assign AXI_INTERCONNECT_0_AXI4mslave0_AWID_0_5to5 = 1'b0;
assign AXI_INTERCONNECT_0_AXI4mslave0_AWID_0_4to0 = AXI_INTERCONNECT_0_AXI4mslave0_AWID[4:0];
assign AXI_INTERCONNECT_0_AXI4mslave0_AWID_0 = { AXI_INTERCONNECT_0_AXI4mslave0_AWID_0_5to5, AXI_INTERCONNECT_0_AXI4mslave0_AWID_0_4to0 };

assign AXI_INTERCONNECT_0_AXI4mslave0_BID_0_4to0 = AXI_INTERCONNECT_0_AXI4mslave0_BID[4:0];
assign AXI_INTERCONNECT_0_AXI4mslave0_BID_0 = { AXI_INTERCONNECT_0_AXI4mslave0_BID_0_4to0 };

assign AXI_INTERCONNECT_0_AXI4mslave0_RID_0_4to0 = AXI_INTERCONNECT_0_AXI4mslave0_RID[4:0];
assign AXI_INTERCONNECT_0_AXI4mslave0_RID_0 = { AXI_INTERCONNECT_0_AXI4mslave0_RID_0_4to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AXI_INTERCONNECT
AXI_INTERCONNECT AXI_INTERCONNECT_0(
        // Inputs
        .ACLK              ( SYS_CLK_net_0 ),
        .ARESETN           ( HRESETN ),
        .MASTER0_HMASTLOCK ( GND_net ),
        .MASTER0_HNONSEC   ( GND_net ),
        .MASTER0_HSEL      ( MASTER0_HSEL ),
        .SLAVE0_AWREADY    ( AXI_INTERCONNECT_0_AXI4mslave0_AWREADY ),
        .SLAVE0_WREADY     ( AXI_INTERCONNECT_0_AXI4mslave0_WREADY ),
        .SLAVE0_BID        ( AXI_INTERCONNECT_0_AXI4mslave0_BID_0 ),
        .SLAVE0_BRESP      ( AXI_INTERCONNECT_0_AXI4mslave0_BRESP ),
        .SLAVE0_BVALID     ( AXI_INTERCONNECT_0_AXI4mslave0_BVALID ),
        .SLAVE0_ARREADY    ( AXI_INTERCONNECT_0_AXI4mslave0_ARREADY ),
        .SLAVE0_RID        ( AXI_INTERCONNECT_0_AXI4mslave0_RID_0 ),
        .SLAVE0_RDATA      ( AXI_INTERCONNECT_0_AXI4mslave0_RDATA ),
        .SLAVE0_RRESP      ( AXI_INTERCONNECT_0_AXI4mslave0_RRESP ),
        .SLAVE0_RLAST      ( AXI_INTERCONNECT_0_AXI4mslave0_RLAST ),
        .SLAVE0_RVALID     ( AXI_INTERCONNECT_0_AXI4mslave0_RVALID ),
        .SLAVE0_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_HADDR     ( HADDR_M0 ),
        .MASTER0_HTRANS    ( HTRANS_M0 ),
        .MASTER0_HWRITE    ( HWRITE_M0 ),
        .MASTER0_HSIZE     ( HSIZE_M0 ),
        .MASTER0_HBURST    ( HBURST_M0 ),
        .MASTER0_HPROT     ( HPROT_M0 ),
        .MASTER0_HWDATA    ( HWDATA_M0 ),
        // Outputs
        .SLAVE0_AWID       ( AXI_INTERCONNECT_0_AXI4mslave0_AWID ),
        .SLAVE0_AWADDR     ( AXI_INTERCONNECT_0_AXI4mslave0_AWADDR ),
        .SLAVE0_AWLEN      ( AXI_INTERCONNECT_0_AXI4mslave0_AWLEN ),
        .SLAVE0_AWSIZE     ( AXI_INTERCONNECT_0_AXI4mslave0_AWSIZE ),
        .SLAVE0_AWBURST    ( AXI_INTERCONNECT_0_AXI4mslave0_AWBURST ),
        .SLAVE0_AWLOCK     ( AXI_INTERCONNECT_0_AXI4mslave0_AWLOCK ),
        .SLAVE0_AWCACHE    ( AXI_INTERCONNECT_0_AXI4mslave0_AWCACHE ),
        .SLAVE0_AWPROT     ( AXI_INTERCONNECT_0_AXI4mslave0_AWPROT ),
        .SLAVE0_AWQOS      ( AXI_INTERCONNECT_0_AXI4mslave0_AWQOS ),
        .SLAVE0_AWREGION   ( AXI_INTERCONNECT_0_AXI4mslave0_AWREGION ),
        .SLAVE0_AWVALID    ( AXI_INTERCONNECT_0_AXI4mslave0_AWVALID ),
        .SLAVE0_WDATA      ( AXI_INTERCONNECT_0_AXI4mslave0_WDATA ),
        .SLAVE0_WSTRB      ( AXI_INTERCONNECT_0_AXI4mslave0_WSTRB ),
        .SLAVE0_WLAST      ( AXI_INTERCONNECT_0_AXI4mslave0_WLAST ),
        .SLAVE0_WVALID     ( AXI_INTERCONNECT_0_AXI4mslave0_WVALID ),
        .SLAVE0_BREADY     ( AXI_INTERCONNECT_0_AXI4mslave0_BREADY ),
        .SLAVE0_ARID       ( AXI_INTERCONNECT_0_AXI4mslave0_ARID ),
        .SLAVE0_ARADDR     ( AXI_INTERCONNECT_0_AXI4mslave0_ARADDR ),
        .SLAVE0_ARLEN      ( AXI_INTERCONNECT_0_AXI4mslave0_ARLEN ),
        .SLAVE0_ARSIZE     ( AXI_INTERCONNECT_0_AXI4mslave0_ARSIZE ),
        .SLAVE0_ARBURST    ( AXI_INTERCONNECT_0_AXI4mslave0_ARBURST ),
        .SLAVE0_ARLOCK     ( AXI_INTERCONNECT_0_AXI4mslave0_ARLOCK ),
        .SLAVE0_ARCACHE    ( AXI_INTERCONNECT_0_AXI4mslave0_ARCACHE ),
        .SLAVE0_ARPROT     ( AXI_INTERCONNECT_0_AXI4mslave0_ARPROT ),
        .SLAVE0_ARQOS      ( AXI_INTERCONNECT_0_AXI4mslave0_ARQOS ),
        .SLAVE0_ARREGION   ( AXI_INTERCONNECT_0_AXI4mslave0_ARREGION ),
        .SLAVE0_ARVALID    ( AXI_INTERCONNECT_0_AXI4mslave0_ARVALID ),
        .SLAVE0_RREADY     ( AXI_INTERCONNECT_0_AXI4mslave0_RREADY ),
        .SLAVE0_AWUSER     ( AXI_INTERCONNECT_0_AXI4mslave0_AWUSER ),
        .SLAVE0_WUSER      ( AXI_INTERCONNECT_0_AXI4mslave0_WUSER ),
        .SLAVE0_ARUSER     ( AXI_INTERCONNECT_0_AXI4mslave0_ARUSER ),
        .MASTER0_HRDATA    ( AHBmmaster0_HRDATA ),
        .MASTER0_HREADY    ( AHBmmaster0_HREADY ),
        .MASTER0_HRESP     ( AHBmmaster0_HRESP ) 
        );

//--------DDR3
DDR3 DDR3_0(
        // Inputs
        .PLL_REF_CLK  ( HCLK ),
        .SYS_RESET_N  ( HRESETN ),
        .axi0_awid    ( AXI_INTERCONNECT_0_AXI4mslave0_AWID_0 ),
        .axi0_awaddr  ( AXI_INTERCONNECT_0_AXI4mslave0_AWADDR ),
        .axi0_awlen   ( AXI_INTERCONNECT_0_AXI4mslave0_AWLEN ),
        .axi0_awsize  ( AXI_INTERCONNECT_0_AXI4mslave0_AWSIZE ),
        .axi0_awburst ( AXI_INTERCONNECT_0_AXI4mslave0_AWBURST ),
        .axi0_awlock  ( AXI_INTERCONNECT_0_AXI4mslave0_AWLOCK ),
        .axi0_awcache ( AXI_INTERCONNECT_0_AXI4mslave0_AWCACHE ),
        .axi0_awprot  ( AXI_INTERCONNECT_0_AXI4mslave0_AWPROT ),
        .axi0_awvalid ( AXI_INTERCONNECT_0_AXI4mslave0_AWVALID ),
        .axi0_wdata   ( AXI_INTERCONNECT_0_AXI4mslave0_WDATA ),
        .axi0_wstrb   ( AXI_INTERCONNECT_0_AXI4mslave0_WSTRB ),
        .axi0_wlast   ( AXI_INTERCONNECT_0_AXI4mslave0_WLAST ),
        .axi0_wvalid  ( AXI_INTERCONNECT_0_AXI4mslave0_WVALID ),
        .axi0_bready  ( AXI_INTERCONNECT_0_AXI4mslave0_BREADY ),
        .axi0_arid    ( AXI_INTERCONNECT_0_AXI4mslave0_ARID_0 ),
        .axi0_araddr  ( AXI_INTERCONNECT_0_AXI4mslave0_ARADDR ),
        .axi0_arlen   ( AXI_INTERCONNECT_0_AXI4mslave0_ARLEN ),
        .axi0_arsize  ( AXI_INTERCONNECT_0_AXI4mslave0_ARSIZE ),
        .axi0_arburst ( AXI_INTERCONNECT_0_AXI4mslave0_ARBURST ),
        .axi0_arlock  ( AXI_INTERCONNECT_0_AXI4mslave0_ARLOCK ),
        .axi0_arcache ( AXI_INTERCONNECT_0_AXI4mslave0_ARCACHE ),
        .axi0_arprot  ( AXI_INTERCONNECT_0_AXI4mslave0_ARPROT ),
        .axi0_arvalid ( AXI_INTERCONNECT_0_AXI4mslave0_ARVALID ),
        .axi0_rready  ( AXI_INTERCONNECT_0_AXI4mslave0_RREADY ),
        // Outputs
        .DM           ( DM_net_0 ),
        .CKE          ( CKE_net_0 ),
        .CS_N         ( CS_N_net_0 ),
        .ODT          ( ODT_net_0 ),
        .RAS_N        ( RAS_N_net_0 ),
        .CAS_N        ( CAS_N_net_0 ),
        .WE_N         ( WE_N_net_0 ),
        .BA           ( BA_net_0 ),
        .RESET_N      ( RESET_N_net_0 ),
        .A            ( A_net_0 ),
        .CK0          ( CK0_net_0 ),
        .CK0_N        ( CK0_N_net_0 ),
        .SHIELD0      ( SHIELD0_net_0 ),
        .SHIELD1      ( SHIELD1_net_0 ),
        .SYS_CLK      ( SYS_CLK_net_0 ),
        .PLL_LOCK     (  ),
        .axi0_awready ( AXI_INTERCONNECT_0_AXI4mslave0_AWREADY ),
        .axi0_wready  ( AXI_INTERCONNECT_0_AXI4mslave0_WREADY ),
        .axi0_bid     ( AXI_INTERCONNECT_0_AXI4mslave0_BID ),
        .axi0_bresp   ( AXI_INTERCONNECT_0_AXI4mslave0_BRESP ),
        .axi0_bvalid  ( AXI_INTERCONNECT_0_AXI4mslave0_BVALID ),
        .axi0_arready ( AXI_INTERCONNECT_0_AXI4mslave0_ARREADY ),
        .axi0_rid     ( AXI_INTERCONNECT_0_AXI4mslave0_RID ),
        .axi0_rdata   ( AXI_INTERCONNECT_0_AXI4mslave0_RDATA ),
        .axi0_rresp   ( AXI_INTERCONNECT_0_AXI4mslave0_RRESP ),
        .axi0_rlast   ( AXI_INTERCONNECT_0_AXI4mslave0_RLAST ),
        .axi0_rvalid  ( AXI_INTERCONNECT_0_AXI4mslave0_RVALID ),
        .CTRLR_READY  (  ),
        // Inouts
        .DQ           ( DQ ),
        .DQS          ( DQS ),
        .DQS_N        ( DQS_N ) 
        );


endmodule
