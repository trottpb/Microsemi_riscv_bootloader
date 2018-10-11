//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Sep 27 13:52:41 2018
// Version: PolarFire v2.3 12.200.35.9
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
    A,
    ACT_N,
    BA,
    BG,
    CAS_N,
    CK0,
    CK0_N,
    CKE,
    CS_N,
    DM_N,
    GPIO_OUT,
    ODT,
    RAS_N,
    RESET_N_0,
    SHIELD0,
    SHIELD1,
    SPI_MOSI,
    TDO,
    UART_TX,
    WE_N,
    // Inouts
    DQ,
    DQS,
    DQS_N,
    SPI_CLK,
    SPI_SS
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         IO_CFG_INTF;
input         RESET_N;
input         SC_SPI_EN;
input         SPI_MISO;
input         TCK;
input         TDI;
input         TMS;
input         TRSTB;
input         UART_RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [13:0] A;
output        ACT_N;
output [1:0]  BA;
output        BG;
output        CAS_N;
output        CK0;
output        CK0_N;
output        CKE;
output        CS_N;
output [1:0]  DM_N;
output [3:0]  GPIO_OUT;
output        ODT;
output        RAS_N;
output        RESET_N_0;
output        SHIELD0;
output        SHIELD1;
output        SPI_MOSI;
output        TDO;
output        UART_TX;
output        WE_N;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [15:0] DQ;
inout  [1:0]  DQS;
inout  [1:0]  DQS_N;
inout         SPI_CLK;
inout         SPI_SS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [13:0] A_0;
wire          ACT_N_net_0;
wire   [31:0] AXI4_interconnect_0_AXI3mslave0_ARADDR;
wire   [1:0]  AXI4_interconnect_0_AXI3mslave0_ARBURST;
wire   [3:0]  AXI4_interconnect_0_AXI3mslave0_ARCACHE;
wire   [1:0]  AXI4_interconnect_0_AXI3mslave0_ARLOCK;
wire   [2:0]  AXI4_interconnect_0_AXI3mslave0_ARPROT;
wire          AXI4_interconnect_0_AXI3mslave0_ARREADY;
wire   [2:0]  AXI4_interconnect_0_AXI3mslave0_ARSIZE;
wire   [0:0]  AXI4_interconnect_0_AXI3mslave0_ARUSER;
wire          AXI4_interconnect_0_AXI3mslave0_ARVALID;
wire   [31:0] AXI4_interconnect_0_AXI3mslave0_AWADDR;
wire   [1:0]  AXI4_interconnect_0_AXI3mslave0_AWBURST;
wire   [3:0]  AXI4_interconnect_0_AXI3mslave0_AWCACHE;
wire   [1:0]  AXI4_interconnect_0_AXI3mslave0_AWLOCK;
wire   [2:0]  AXI4_interconnect_0_AXI3mslave0_AWPROT;
wire          AXI4_interconnect_0_AXI3mslave0_AWREADY;
wire   [2:0]  AXI4_interconnect_0_AXI3mslave0_AWSIZE;
wire   [0:0]  AXI4_interconnect_0_AXI3mslave0_AWUSER;
wire          AXI4_interconnect_0_AXI3mslave0_AWVALID;
wire          AXI4_interconnect_0_AXI3mslave0_BREADY;
wire   [1:0]  AXI4_interconnect_0_AXI3mslave0_BRESP;
wire          AXI4_interconnect_0_AXI3mslave0_BVALID;
wire   [63:0] AXI4_interconnect_0_AXI3mslave0_RDATA;
wire          AXI4_interconnect_0_AXI3mslave0_RLAST;
wire          AXI4_interconnect_0_AXI3mslave0_RREADY;
wire   [1:0]  AXI4_interconnect_0_AXI3mslave0_RRESP;
wire          AXI4_interconnect_0_AXI3mslave0_RVALID;
wire   [63:0] AXI4_interconnect_0_AXI3mslave0_WDATA;
wire          AXI4_interconnect_0_AXI3mslave0_WLAST;
wire          AXI4_interconnect_0_AXI3mslave0_WREADY;
wire   [7:0]  AXI4_interconnect_0_AXI3mslave0_WSTRB;
wire   [0:0]  AXI4_interconnect_0_AXI3mslave0_WUSER;
wire          AXI4_interconnect_0_AXI3mslave0_WVALID;
wire   [1:0]  BA_0;
wire          BG_net_0;
wire          CAS_N_0;
wire          CK0_0;
wire          CK0_N_0;
wire          CKE_0;
wire          CLOCKS_RESETS_0_CLK100;
wire          CLOCKS_RESETS_0_INT_RESET_N;
wire          CS_N_0;
wire          DDR4_0_SYS_CLK;
wire   [1:0]  DM_N_net_0;
wire   [15:0] DQ;
wire   [1:0]  DQS;
wire   [1:0]  DQS_N;
wire   [3:0]  GPIO_OUT_net_0;
wire          IO_0_RXRDY;
wire          IO_CFG_INTF;
wire          ODT_0;
wire   [31:0] PROCESSOR_0_AHB_MST_MEM_HADDR;
wire   [2:0]  PROCESSOR_0_AHB_MST_MEM_HBURST;
wire          PROCESSOR_0_AHB_MST_MEM_HLOCK;
wire   [31:0] PROCESSOR_0_AHB_MST_MEM_HRDATA;
wire          PROCESSOR_0_AHB_MST_MEM_HREADY;
wire          PROCESSOR_0_AHB_MST_MEM_HRESP;
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
wire          RAS_N_0;
wire          RESET_N;
wire          RESET_N_0_0;
wire          SC_SPI_EN;
wire          SHIELD0_0;
wire          SHIELD1_0;
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
wire          WE_N_0;
wire          UART_TX_net_1;
wire          TDO_net_1;
wire          SPI_MOSI_0_net_0;
wire          CKE_0_net_0;
wire          CS_N_0_net_0;
wire          ODT_0_net_0;
wire          RAS_N_0_net_0;
wire          CAS_N_0_net_0;
wire          WE_N_0_net_0;
wire          ACT_N_net_1;
wire          BG_net_1;
wire          RESET_N_0_0_net_0;
wire          CK0_0_net_0;
wire          CK0_N_0_net_0;
wire          SHIELD0_0_net_0;
wire          SHIELD1_0_net_0;
wire   [3:0]  GPIO_OUT_net_1;
wire   [1:0]  DM_N_net_1;
wire   [1:0]  BA_0_net_0;
wire   [13:0] A_0_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_ARID;
wire   [5:5]  AXI4_interconnect_0_AXI3mslave0_ARID_0_5to5;
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_ARID_0_4to0;
wire   [5:0]  AXI4_interconnect_0_AXI3mslave0_ARID_0;
wire   [7:0]  AXI4_interconnect_0_AXI3mslave0_ARLEN;
wire   [3:0]  AXI4_interconnect_0_AXI3mslave0_ARLEN_0_3to0;
wire   [3:0]  AXI4_interconnect_0_AXI3mslave0_ARLEN_0;
wire   [5:5]  AXI4_interconnect_0_AXI3mslave0_AWID_0_5to5;
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_AWID_0_4to0;
wire   [5:0]  AXI4_interconnect_0_AXI3mslave0_AWID_0;
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_AWID;
wire   [3:0]  AXI4_interconnect_0_AXI3mslave0_AWLEN_0_3to0;
wire   [3:0]  AXI4_interconnect_0_AXI3mslave0_AWLEN_0;
wire   [7:0]  AXI4_interconnect_0_AXI3mslave0_AWLEN;
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_BID_0_4to0;
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_BID_0;
wire   [5:0]  AXI4_interconnect_0_AXI3mslave0_BID;
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_RID_0_4to0;
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_RID_0;
wire   [5:0]  AXI4_interconnect_0_AXI3mslave0_RID;
wire   [5:5]  AXI4_interconnect_0_AXI3mslave0_WID_0_5to5;
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_WID_0_4to0;
wire   [5:0]  AXI4_interconnect_0_AXI3mslave0_WID_0;
wire   [4:0]  AXI4_interconnect_0_AXI3mslave0_WID;
wire   [3:0]  PROCESSOR_0_AHB_MST_MEM_HPROT;
wire   [6:4]  PROCESSOR_0_AHB_MST_MEM_HPROT_0_6to4;
wire   [3:0]  PROCESSOR_0_AHB_MST_MEM_HPROT_0_3to0;
wire   [6:0]  PROCESSOR_0_AHB_MST_MEM_HPROT_0;
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
assign GND_net    = 1'b0;
assign VCC_net    = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign UART_TX_net_1     = UART_TX_net_0;
assign UART_TX           = UART_TX_net_1;
assign TDO_net_1         = TDO_net_0;
assign TDO               = TDO_net_1;
assign SPI_MOSI_0_net_0  = SPI_MOSI_0;
assign SPI_MOSI          = SPI_MOSI_0_net_0;
assign CKE_0_net_0       = CKE_0;
assign CKE               = CKE_0_net_0;
assign CS_N_0_net_0      = CS_N_0;
assign CS_N              = CS_N_0_net_0;
assign ODT_0_net_0       = ODT_0;
assign ODT               = ODT_0_net_0;
assign RAS_N_0_net_0     = RAS_N_0;
assign RAS_N             = RAS_N_0_net_0;
assign CAS_N_0_net_0     = CAS_N_0;
assign CAS_N             = CAS_N_0_net_0;
assign WE_N_0_net_0      = WE_N_0;
assign WE_N              = WE_N_0_net_0;
assign ACT_N_net_1       = ACT_N_net_0;
assign ACT_N             = ACT_N_net_1;
assign BG_net_1          = BG_net_0;
assign BG                = BG_net_1;
assign RESET_N_0_0_net_0 = RESET_N_0_0;
assign RESET_N_0         = RESET_N_0_0_net_0;
assign CK0_0_net_0       = CK0_0;
assign CK0               = CK0_0_net_0;
assign CK0_N_0_net_0     = CK0_N_0;
assign CK0_N             = CK0_N_0_net_0;
assign SHIELD0_0_net_0   = SHIELD0_0;
assign SHIELD0           = SHIELD0_0_net_0;
assign SHIELD1_0_net_0   = SHIELD1_0;
assign SHIELD1           = SHIELD1_0_net_0;
assign GPIO_OUT_net_1    = GPIO_OUT_net_0;
assign GPIO_OUT[3:0]     = GPIO_OUT_net_1;
assign DM_N_net_1        = DM_N_net_0;
assign DM_N[1:0]         = DM_N_net_1;
assign BA_0_net_0        = BA_0;
assign BA[1:0]           = BA_0_net_0;
assign A_0_net_0         = A_0;
assign A[13:0]           = A_0_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign AXI4_interconnect_0_AXI3mslave0_ARID_0_5to5 = 1'b0;
assign AXI4_interconnect_0_AXI3mslave0_ARID_0_4to0 = AXI4_interconnect_0_AXI3mslave0_ARID[4:0];
assign AXI4_interconnect_0_AXI3mslave0_ARID_0 = { AXI4_interconnect_0_AXI3mslave0_ARID_0_5to5, AXI4_interconnect_0_AXI3mslave0_ARID_0_4to0 };

assign AXI4_interconnect_0_AXI3mslave0_ARLEN_0_3to0 = AXI4_interconnect_0_AXI3mslave0_ARLEN[3:0];
assign AXI4_interconnect_0_AXI3mslave0_ARLEN_0 = { AXI4_interconnect_0_AXI3mslave0_ARLEN_0_3to0 };

assign AXI4_interconnect_0_AXI3mslave0_AWID_0_5to5 = 1'b0;
assign AXI4_interconnect_0_AXI3mslave0_AWID_0_4to0 = AXI4_interconnect_0_AXI3mslave0_AWID[4:0];
assign AXI4_interconnect_0_AXI3mslave0_AWID_0 = { AXI4_interconnect_0_AXI3mslave0_AWID_0_5to5, AXI4_interconnect_0_AXI3mslave0_AWID_0_4to0 };

assign AXI4_interconnect_0_AXI3mslave0_AWLEN_0_3to0 = AXI4_interconnect_0_AXI3mslave0_AWLEN[3:0];
assign AXI4_interconnect_0_AXI3mslave0_AWLEN_0 = { AXI4_interconnect_0_AXI3mslave0_AWLEN_0_3to0 };

assign AXI4_interconnect_0_AXI3mslave0_BID_0_4to0 = AXI4_interconnect_0_AXI3mslave0_BID[4:0];
assign AXI4_interconnect_0_AXI3mslave0_BID_0 = { AXI4_interconnect_0_AXI3mslave0_BID_0_4to0 };

assign AXI4_interconnect_0_AXI3mslave0_RID_0_4to0 = AXI4_interconnect_0_AXI3mslave0_RID[4:0];
assign AXI4_interconnect_0_AXI3mslave0_RID_0 = { AXI4_interconnect_0_AXI3mslave0_RID_0_4to0 };

assign AXI4_interconnect_0_AXI3mslave0_WID_0_5to5 = 1'b0;
assign AXI4_interconnect_0_AXI3mslave0_WID_0_4to0 = AXI4_interconnect_0_AXI3mslave0_WID[4:0];
assign AXI4_interconnect_0_AXI3mslave0_WID_0 = { AXI4_interconnect_0_AXI3mslave0_WID_0_5to5, AXI4_interconnect_0_AXI3mslave0_WID_0_4to0 };

assign PROCESSOR_0_AHB_MST_MEM_HPROT_0_6to4 = 3'h0;
assign PROCESSOR_0_AHB_MST_MEM_HPROT_0_3to0 = PROCESSOR_0_AHB_MST_MEM_HPROT[3:0];
assign PROCESSOR_0_AHB_MST_MEM_HPROT_0 = { PROCESSOR_0_AHB_MST_MEM_HPROT_0_6to4, PROCESSOR_0_AHB_MST_MEM_HPROT_0_3to0 };

assign PROCESSOR_0_AHB_MST_MMIO_HADDR_0_31to31 = 1'b0;
assign PROCESSOR_0_AHB_MST_MMIO_HADDR_0_30to0 = PROCESSOR_0_AHB_MST_MMIO_HADDR[30:0];
assign PROCESSOR_0_AHB_MST_MMIO_HADDR_0 = { PROCESSOR_0_AHB_MST_MMIO_HADDR_0_31to31, PROCESSOR_0_AHB_MST_MMIO_HADDR_0_30to0 };

assign PROCESSOR_0_AHB_MST_MMIO_HRESP_0_0to0 = PROCESSOR_0_AHB_MST_MMIO_HRESP[0:0];
assign PROCESSOR_0_AHB_MST_MMIO_HRESP_0 = { PROCESSOR_0_AHB_MST_MMIO_HRESP_0_0to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AXI4_interconnect
AXI4_interconnect AXI4_interconnect_0(
        // Inputs
        .ACLK              ( CLOCKS_RESETS_0_CLK100 ),
        .ARESETN           ( CLOCKS_RESETS_0_INT_RESET_N ),
        .MASTER0_HMASTLOCK ( GND_net ),
        .MASTER0_HNONSEC   ( GND_net ),
        .MASTER0_HSEL      ( VCC_net ),
        .SLAVE0_AWREADY    ( AXI4_interconnect_0_AXI3mslave0_AWREADY ),
        .SLAVE0_WREADY     ( AXI4_interconnect_0_AXI3mslave0_WREADY ),
        .SLAVE0_BID        ( AXI4_interconnect_0_AXI3mslave0_BID_0 ),
        .SLAVE0_BRESP      ( AXI4_interconnect_0_AXI3mslave0_BRESP ),
        .SLAVE0_BVALID     ( AXI4_interconnect_0_AXI3mslave0_BVALID ),
        .SLAVE0_ARREADY    ( AXI4_interconnect_0_AXI3mslave0_ARREADY ),
        .SLAVE0_RID        ( AXI4_interconnect_0_AXI3mslave0_RID_0 ),
        .SLAVE0_RDATA      ( AXI4_interconnect_0_AXI3mslave0_RDATA ),
        .SLAVE0_RRESP      ( AXI4_interconnect_0_AXI3mslave0_RRESP ),
        .SLAVE0_RLAST      ( AXI4_interconnect_0_AXI3mslave0_RLAST ),
        .SLAVE0_RVALID     ( AXI4_interconnect_0_AXI3mslave0_RVALID ),
        .SLAVE0_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_HADDR     ( PROCESSOR_0_AHB_MST_MEM_HADDR ),
        .MASTER0_HTRANS    ( PROCESSOR_0_AHB_MST_MEM_HTRANS ),
        .MASTER0_HWRITE    ( PROCESSOR_0_AHB_MST_MEM_HWRITE ),
        .MASTER0_HSIZE     ( PROCESSOR_0_AHB_MST_MEM_HSIZE ),
        .MASTER0_HBURST    ( PROCESSOR_0_AHB_MST_MEM_HBURST ),
        .MASTER0_HPROT     ( PROCESSOR_0_AHB_MST_MEM_HPROT_0 ),
        .MASTER0_HWDATA    ( PROCESSOR_0_AHB_MST_MEM_HWDATA ),
        .S_CLK0            ( DDR4_0_SYS_CLK ),
        // Outputs
        .SLAVE0_AWID       ( AXI4_interconnect_0_AXI3mslave0_AWID ),
        .SLAVE0_AWADDR     ( AXI4_interconnect_0_AXI3mslave0_AWADDR ),
        .SLAVE0_AWLEN      ( AXI4_interconnect_0_AXI3mslave0_AWLEN ),
        .SLAVE0_AWSIZE     ( AXI4_interconnect_0_AXI3mslave0_AWSIZE ),
        .SLAVE0_AWBURST    ( AXI4_interconnect_0_AXI3mslave0_AWBURST ),
        .SLAVE0_AWLOCK     ( AXI4_interconnect_0_AXI3mslave0_AWLOCK ),
        .SLAVE0_AWCACHE    ( AXI4_interconnect_0_AXI3mslave0_AWCACHE ),
        .SLAVE0_AWPROT     ( AXI4_interconnect_0_AXI3mslave0_AWPROT ),
        .SLAVE0_AWVALID    ( AXI4_interconnect_0_AXI3mslave0_AWVALID ),
        .SLAVE0_WID        ( AXI4_interconnect_0_AXI3mslave0_WID ),
        .SLAVE0_WDATA      ( AXI4_interconnect_0_AXI3mslave0_WDATA ),
        .SLAVE0_WSTRB      ( AXI4_interconnect_0_AXI3mslave0_WSTRB ),
        .SLAVE0_WLAST      ( AXI4_interconnect_0_AXI3mslave0_WLAST ),
        .SLAVE0_WVALID     ( AXI4_interconnect_0_AXI3mslave0_WVALID ),
        .SLAVE0_BREADY     ( AXI4_interconnect_0_AXI3mslave0_BREADY ),
        .SLAVE0_ARID       ( AXI4_interconnect_0_AXI3mslave0_ARID ),
        .SLAVE0_ARADDR     ( AXI4_interconnect_0_AXI3mslave0_ARADDR ),
        .SLAVE0_ARLEN      ( AXI4_interconnect_0_AXI3mslave0_ARLEN ),
        .SLAVE0_ARSIZE     ( AXI4_interconnect_0_AXI3mslave0_ARSIZE ),
        .SLAVE0_ARBURST    ( AXI4_interconnect_0_AXI3mslave0_ARBURST ),
        .SLAVE0_ARLOCK     ( AXI4_interconnect_0_AXI3mslave0_ARLOCK ),
        .SLAVE0_ARCACHE    ( AXI4_interconnect_0_AXI3mslave0_ARCACHE ),
        .SLAVE0_ARPROT     ( AXI4_interconnect_0_AXI3mslave0_ARPROT ),
        .SLAVE0_ARVALID    ( AXI4_interconnect_0_AXI3mslave0_ARVALID ),
        .SLAVE0_RREADY     ( AXI4_interconnect_0_AXI3mslave0_RREADY ),
        .SLAVE0_AWUSER     ( AXI4_interconnect_0_AXI3mslave0_AWUSER ),
        .SLAVE0_WUSER      ( AXI4_interconnect_0_AXI3mslave0_WUSER ),
        .SLAVE0_ARUSER     ( AXI4_interconnect_0_AXI3mslave0_ARUSER ),
        .MASTER0_HRDATA    ( PROCESSOR_0_AHB_MST_MEM_HRDATA ),
        .MASTER0_HREADY    ( PROCESSOR_0_AHB_MST_MEM_HREADY ),
        .MASTER0_HRESP     ( PROCESSOR_0_AHB_MST_MEM_HRESP ) 
        );

//--------CLOCKS_RESETS
CLOCKS_RESETS CLOCKS_RESETS_0(
        // Inputs
        .RESET_N     ( RESET_N ),
        // Outputs
        .CLK100      ( CLOCKS_RESETS_0_CLK100 ),
        .INT_RESET_N ( CLOCKS_RESETS_0_INT_RESET_N ) 
        );

//--------DDR4
DDR4 DDR4_0(
        // Inputs
        .PLL_REF_CLK  ( CLOCKS_RESETS_0_CLK100 ),
        .SYS_RESET_N  ( CLOCKS_RESETS_0_INT_RESET_N ),
        .axi0_awid    ( AXI4_interconnect_0_AXI3mslave0_AWID_0 ),
        .axi0_awaddr  ( AXI4_interconnect_0_AXI3mslave0_AWADDR ),
        .axi0_awlen   ( AXI4_interconnect_0_AXI3mslave0_AWLEN_0 ),
        .axi0_awsize  ( AXI4_interconnect_0_AXI3mslave0_AWSIZE ),
        .axi0_awburst ( AXI4_interconnect_0_AXI3mslave0_AWBURST ),
        .axi0_awlock  ( AXI4_interconnect_0_AXI3mslave0_AWLOCK ),
        .axi0_awcache ( AXI4_interconnect_0_AXI3mslave0_AWCACHE ),
        .axi0_awprot  ( AXI4_interconnect_0_AXI3mslave0_AWPROT ),
        .axi0_awvalid ( AXI4_interconnect_0_AXI3mslave0_AWVALID ),
        .axi0_wid     ( AXI4_interconnect_0_AXI3mslave0_WID_0 ),
        .axi0_wdata   ( AXI4_interconnect_0_AXI3mslave0_WDATA ),
        .axi0_wstrb   ( AXI4_interconnect_0_AXI3mslave0_WSTRB ),
        .axi0_wlast   ( AXI4_interconnect_0_AXI3mslave0_WLAST ),
        .axi0_wvalid  ( AXI4_interconnect_0_AXI3mslave0_WVALID ),
        .axi0_bready  ( AXI4_interconnect_0_AXI3mslave0_BREADY ),
        .axi0_arid    ( AXI4_interconnect_0_AXI3mslave0_ARID_0 ),
        .axi0_araddr  ( AXI4_interconnect_0_AXI3mslave0_ARADDR ),
        .axi0_arlen   ( AXI4_interconnect_0_AXI3mslave0_ARLEN_0 ),
        .axi0_arsize  ( AXI4_interconnect_0_AXI3mslave0_ARSIZE ),
        .axi0_arburst ( AXI4_interconnect_0_AXI3mslave0_ARBURST ),
        .axi0_arlock  ( AXI4_interconnect_0_AXI3mslave0_ARLOCK ),
        .axi0_arcache ( AXI4_interconnect_0_AXI3mslave0_ARCACHE ),
        .axi0_arprot  ( AXI4_interconnect_0_AXI3mslave0_ARPROT ),
        .axi0_arvalid ( AXI4_interconnect_0_AXI3mslave0_ARVALID ),
        .axi0_rready  ( AXI4_interconnect_0_AXI3mslave0_RREADY ),
        // Outputs
        .DM_N         ( DM_N_net_0 ),
        .CKE          ( CKE_0 ),
        .CS_N         ( CS_N_0 ),
        .ODT          ( ODT_0 ),
        .RAS_N        ( RAS_N_0 ),
        .CAS_N        ( CAS_N_0 ),
        .WE_N         ( WE_N_0 ),
        .ACT_N        ( ACT_N_net_0 ),
        .BG           ( BG_net_0 ),
        .BA           ( BA_0 ),
        .RESET_N      ( RESET_N_0_0 ),
        .A            ( A_0 ),
        .CK0          ( CK0_0 ),
        .CK0_N        ( CK0_N_0 ),
        .SHIELD0      ( SHIELD0_0 ),
        .SHIELD1      ( SHIELD1_0 ),
        .SYS_CLK      ( DDR4_0_SYS_CLK ),
        .PLL_LOCK     (  ),
        .axi0_awready ( AXI4_interconnect_0_AXI3mslave0_AWREADY ),
        .axi0_wready  ( AXI4_interconnect_0_AXI3mslave0_WREADY ),
        .axi0_bid     ( AXI4_interconnect_0_AXI3mslave0_BID ),
        .axi0_bresp   ( AXI4_interconnect_0_AXI3mslave0_BRESP ),
        .axi0_bvalid  ( AXI4_interconnect_0_AXI3mslave0_BVALID ),
        .axi0_arready ( AXI4_interconnect_0_AXI3mslave0_ARREADY ),
        .axi0_rid     ( AXI4_interconnect_0_AXI3mslave0_RID ),
        .axi0_rdata   ( AXI4_interconnect_0_AXI3mslave0_RDATA ),
        .axi0_rresp   ( AXI4_interconnect_0_AXI3mslave0_RRESP ),
        .axi0_rlast   ( AXI4_interconnect_0_AXI3mslave0_RLAST ),
        .axi0_rvalid  ( AXI4_interconnect_0_AXI3mslave0_RVALID ),
        .CTRLR_READY  (  ),
        // Inouts
        .DQ           ( DQ ),
        .DQS          ( DQS ),
        .DQS_N        ( DQS_N ) 
        );

//--------IO
IO IO_0(
        // Inputs
        .HCLK         ( CLOCKS_RESETS_0_CLK100 ),
        .HRESETN      ( CLOCKS_RESETS_0_INT_RESET_N ),
        .RX           ( UART_RX ),
        .HWRITE_M0    ( PROCESSOR_0_AHB_MST_MMIO_HWRITE ),
        .HMASTLOCK_M0 ( PROCESSOR_0_AHB_MST_MMIO_HLOCK ),
        .SPI_MISO     ( SPI_MISO ),
        .IO_CFG_INTF  ( IO_CFG_INTF ),
        .SC_SPI_EN    ( SC_SPI_EN ),
        .HADDR_M0     ( PROCESSOR_0_AHB_MST_MMIO_HADDR_0 ),
        .HTRANS_M0    ( PROCESSOR_0_AHB_MST_MMIO_HTRANS ),
        .HSIZE_M0     ( PROCESSOR_0_AHB_MST_MMIO_HSIZE ),
        .HBURST_M0    ( PROCESSOR_0_AHB_MST_MMIO_HBURST ),
        .HPROT_M0     ( PROCESSOR_0_AHB_MST_MMIO_HPROT ),
        .HWDATA_M0    ( PROCESSOR_0_AHB_MST_MMIO_HWDATA ),
        // Outputs
        .TX           ( UART_TX_net_0 ),
        .HREADY_M0    ( PROCESSOR_0_AHB_MST_MMIO_HREADY ),
        .RXRDY        ( IO_0_RXRDY ),
        .SPI_MOSI     ( SPI_MOSI_0 ),
        .GPIO_OUT     ( GPIO_OUT_net_0 ),
        .HRDATA_M0    ( PROCESSOR_0_AHB_MST_MMIO_HRDATA ),
        .HRESP_M0     ( PROCESSOR_0_AHB_MST_MMIO_HRESP ),
        // Inouts
        .SPI_CLK      ( SPI_CLK ),
        .SPI_SS       ( SPI_SS ) 
        );

//--------PROCESSOR
PROCESSOR PROCESSOR_0(
        // Inputs
        .CLK                 ( CLOCKS_RESETS_0_CLK100 ),
        .RESETN              ( CLOCKS_RESETS_0_INT_RESET_N ),
        .TRSTB               ( TRSTB ),
        .TCK                 ( TCK ),
        .TDI                 ( TDI ),
        .TMS                 ( TMS ),
        .AHB_MST_MEM_HREADY  ( PROCESSOR_0_AHB_MST_MEM_HREADY ),
        .AHB_MST_MEM_HRESP   ( PROCESSOR_0_AHB_MST_MEM_HRESP ),
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
