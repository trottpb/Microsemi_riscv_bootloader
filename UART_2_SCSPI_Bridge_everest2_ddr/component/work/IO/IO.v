//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Sep 10 13:03:03 2018
// Version: PolarFire v2.2 12.200.30.10
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// IO
module IO(
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
    IO_CFG_INTF,
    RX,
    SC_SPI_EN,
    SPI_MISO,
    // Outputs
    GPIO_OUT,
    HRDATA_M0,
    HREADY_M0,
    HRESP_M0,
    RXRDY,
    SPI_MOSI,
    TX,
    // Inouts
    SPI_CLK,
    SPI_SS
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
input         IO_CFG_INTF;
input         RX;
input         SC_SPI_EN;
input         SPI_MISO;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [3:0]  GPIO_OUT;
output [31:0] HRDATA_M0;
output        HREADY_M0;
output [1:0]  HRESP_M0;
output        RXRDY;
output        SPI_MOSI;
output        TX;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         SPI_CLK;
inout         SPI_SS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] AHB_MMIO_0_AHBmslave6_HADDR;
wire   [2:0]  AHB_MMIO_0_AHBmslave6_HBURST;
wire          AHB_MMIO_0_AHBmslave6_HMASTLOCK;
wire   [3:0]  AHB_MMIO_0_AHBmslave6_HPROT;
wire   [31:0] AHB_MMIO_0_AHBmslave6_HRDATA;
wire          AHB_MMIO_0_AHBmslave6_HREADY;
wire          AHB_MMIO_0_AHBmslave6_HREADYOUT;
wire   [1:0]  AHB_MMIO_0_AHBmslave6_HRESP;
wire          AHB_MMIO_0_AHBmslave6_HSELx;
wire   [2:0]  AHB_MMIO_0_AHBmslave6_HSIZE;
wire   [1:0]  AHB_MMIO_0_AHBmslave6_HTRANS;
wire   [31:0] AHB_MMIO_0_AHBmslave6_HWDATA;
wire          AHB_MMIO_0_AHBmslave6_HWRITE;
wire   [31:0] AHB_MMIO_0_AHBmslave7_HADDR;
wire   [2:0]  AHB_MMIO_0_AHBmslave7_HBURST;
wire          AHB_MMIO_0_AHBmslave7_HMASTLOCK;
wire   [3:0]  AHB_MMIO_0_AHBmslave7_HPROT;
wire   [31:0] AHB_MMIO_0_AHBmslave7_HRDATA;
wire          AHB_MMIO_0_AHBmslave7_HREADY;
wire          AHB_MMIO_0_AHBmslave7_HREADYOUT;
wire   [1:0]  AHB_MMIO_0_AHBmslave7_HRESP;
wire          AHB_MMIO_0_AHBmslave7_HSELx;
wire   [2:0]  AHB_MMIO_0_AHBmslave7_HSIZE;
wire   [1:0]  AHB_MMIO_0_AHBmslave7_HTRANS;
wire   [31:0] AHB_MMIO_0_AHBmslave7_HWDATA;
wire          AHB_MMIO_0_AHBmslave7_HWRITE;
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
wire   [31:0] AHBtoAPB_0_APBmaster_PADDR;
wire          AHBtoAPB_0_APBmaster_PENABLE;
wire   [31:0] AHBtoAPB_0_APBmaster_PRDATA;
wire          AHBtoAPB_0_APBmaster_PREADY;
wire          AHBtoAPB_0_APBmaster_PSELx;
wire          AHBtoAPB_0_APBmaster_PSLVERR;
wire   [31:0] AHBtoAPB_0_APBmaster_PWDATA;
wire          AHBtoAPB_0_APBmaster_PWRITE;
wire          APB_PERIPHERALS_0_APBmslave0_PENABLE;
wire   [31:0] APB_PERIPHERALS_0_APBmslave0_PRDATA;
wire          APB_PERIPHERALS_0_APBmslave0_PREADY;
wire          APB_PERIPHERALS_0_APBmslave0_PSELx;
wire          APB_PERIPHERALS_0_APBmslave0_PSLVERR;
wire          APB_PERIPHERALS_0_APBmslave0_PWRITE;
wire          APB_PERIPHERALS_0_APBmslave1_PREADY;
wire          APB_PERIPHERALS_0_APBmslave1_PSELx;
wire          APB_PERIPHERALS_0_APBmslave1_PSLVERR;
wire   [31:0] APB_PERIPHERALS_0_APBmslave2_PRDATA;
wire          APB_PERIPHERALS_0_APBmslave2_PREADY;
wire          APB_PERIPHERALS_0_APBmslave2_PSELx;
wire          APB_PERIPHERALS_0_APBmslave2_PSLVERR;
wire          CoreSPI_0_0_SPISCLKO;
wire          CoreSPI_0_0_SPISDO;
wire   [0:0]  CoreSPI_0_0_SPISS0to0;
wire   [3:0]  GPIO_OUT_net_0;
wire          HCLK;
wire          HRESETN;
wire          IO_CFG_INTF;
wire          PF_SPI_0_D_I;
wire          RX;
wire          RXRDY_net_0;
wire          SC_SPI_EN;
wire          SPI_CLK;
wire          SPI_MISO;
wire          SPI_MOSI_net_0;
wire          SPI_SS;
wire          TX_net_0;
wire          TX_net_1;
wire          AHBmmaster0_HREADY_net_0;
wire          RXRDY_net_1;
wire   [3:0]  GPIO_OUT_net_1;
wire   [31:0] AHBmmaster0_HRDATA_net_0;
wire   [1:0]  AHBmmaster0_HRESP_net_0;
wire          SPI_MOSI_net_1;
wire   [7:1]  SPISS_slice_0;
wire   [7:0]  SPISS_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [3:0]  GPIO_IN_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] APB_PERIPHERALS_0_APBmslave0_PADDR;
wire   [6:0]  APB_PERIPHERALS_0_APBmslave0_PADDR_2_6to0;
wire   [6:0]  APB_PERIPHERALS_0_APBmslave0_PADDR_2;
wire   [7:0]  APB_PERIPHERALS_0_APBmslave0_PADDR_0_7to0;
wire   [7:0]  APB_PERIPHERALS_0_APBmslave0_PADDR_0;
wire   [4:0]  APB_PERIPHERALS_0_APBmslave0_PADDR_1_4to0;
wire   [4:0]  APB_PERIPHERALS_0_APBmslave0_PADDR_1;
wire   [31:0] APB_PERIPHERALS_0_APBmslave0_PWDATA;
wire   [7:0]  APB_PERIPHERALS_0_APBmslave0_PWDATA_0_7to0;
wire   [7:0]  APB_PERIPHERALS_0_APBmslave0_PWDATA_0;
wire   [31:8] APB_PERIPHERALS_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  APB_PERIPHERALS_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] APB_PERIPHERALS_0_APBmslave1_PRDATA_0;
wire   [7:0]  APB_PERIPHERALS_0_APBmslave1_PRDATA;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net             = 1'b0;
assign VCC_net             = 1'b1;
assign GPIO_IN_const_net_0 = 4'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_net_1                 = TX_net_0;
assign TX                       = TX_net_1;
assign AHBmmaster0_HREADY_net_0 = AHBmmaster0_HREADY;
assign HREADY_M0                = AHBmmaster0_HREADY_net_0;
assign RXRDY_net_1              = RXRDY_net_0;
assign RXRDY                    = RXRDY_net_1;
assign GPIO_OUT_net_1           = GPIO_OUT_net_0;
assign GPIO_OUT[3:0]            = GPIO_OUT_net_1;
assign AHBmmaster0_HRDATA_net_0 = AHBmmaster0_HRDATA;
assign HRDATA_M0[31:0]          = AHBmmaster0_HRDATA_net_0;
assign AHBmmaster0_HRESP_net_0  = AHBmmaster0_HRESP;
assign HRESP_M0[1:0]            = AHBmmaster0_HRESP_net_0;
assign SPI_MOSI_net_1           = SPI_MOSI_net_0;
assign SPI_MOSI                 = SPI_MOSI_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign CoreSPI_0_0_SPISS0to0[0] = SPISS_net_0[0:0];
assign SPISS_slice_0            = SPISS_net_0[7:1];
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign APB_PERIPHERALS_0_APBmslave0_PADDR_2_6to0 = APB_PERIPHERALS_0_APBmslave0_PADDR[6:0];
assign APB_PERIPHERALS_0_APBmslave0_PADDR_2 = { APB_PERIPHERALS_0_APBmslave0_PADDR_2_6to0 };
assign APB_PERIPHERALS_0_APBmslave0_PADDR_0_7to0 = APB_PERIPHERALS_0_APBmslave0_PADDR[7:0];
assign APB_PERIPHERALS_0_APBmslave0_PADDR_0 = { APB_PERIPHERALS_0_APBmslave0_PADDR_0_7to0 };
assign APB_PERIPHERALS_0_APBmslave0_PADDR_1_4to0 = APB_PERIPHERALS_0_APBmslave0_PADDR[4:0];
assign APB_PERIPHERALS_0_APBmslave0_PADDR_1 = { APB_PERIPHERALS_0_APBmslave0_PADDR_1_4to0 };

assign APB_PERIPHERALS_0_APBmslave0_PWDATA_0_7to0 = APB_PERIPHERALS_0_APBmslave0_PWDATA[7:0];
assign APB_PERIPHERALS_0_APBmslave0_PWDATA_0 = { APB_PERIPHERALS_0_APBmslave0_PWDATA_0_7to0 };

assign APB_PERIPHERALS_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign APB_PERIPHERALS_0_APBmslave1_PRDATA_0_7to0 = APB_PERIPHERALS_0_APBmslave1_PRDATA[7:0];
assign APB_PERIPHERALS_0_APBmslave1_PRDATA_0 = { APB_PERIPHERALS_0_APBmslave1_PRDATA_0_31to8, APB_PERIPHERALS_0_APBmslave1_PRDATA_0_7to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AHB_MMIO
AHB_MMIO AHB_MMIO_0(
        // Inputs
        .HCLK         ( HCLK ),
        .HRESETN      ( HRESETN ),
        .REMAP_M0     ( GND_net ),
        .HWRITE_M0    ( HWRITE_M0 ),
        .HMASTLOCK_M0 ( HMASTLOCK_M0 ),
        .HREADYOUT_S6 ( AHB_MMIO_0_AHBmslave6_HREADYOUT ),
        .HREADYOUT_S7 ( AHB_MMIO_0_AHBmslave7_HREADYOUT ),
        .HADDR_M0     ( HADDR_M0 ),
        .HTRANS_M0    ( HTRANS_M0 ),
        .HSIZE_M0     ( HSIZE_M0 ),
        .HBURST_M0    ( HBURST_M0 ),
        .HPROT_M0     ( HPROT_M0 ),
        .HWDATA_M0    ( HWDATA_M0 ),
        .HRDATA_S6    ( AHB_MMIO_0_AHBmslave6_HRDATA ),
        .HRESP_S6     ( AHB_MMIO_0_AHBmslave6_HRESP ),
        .HRDATA_S7    ( AHB_MMIO_0_AHBmslave7_HRDATA ),
        .HRESP_S7     ( AHB_MMIO_0_AHBmslave7_HRESP ),
        // Outputs
        .HREADY_M0    ( AHBmmaster0_HREADY ),
        .HWRITE_S6    ( AHB_MMIO_0_AHBmslave6_HWRITE ),
        .HSEL_S6      ( AHB_MMIO_0_AHBmslave6_HSELx ),
        .HREADY_S6    ( AHB_MMIO_0_AHBmslave6_HREADY ),
        .HMASTLOCK_S6 ( AHB_MMIO_0_AHBmslave6_HMASTLOCK ),
        .HWRITE_S7    ( AHB_MMIO_0_AHBmslave7_HWRITE ),
        .HSEL_S7      ( AHB_MMIO_0_AHBmslave7_HSELx ),
        .HREADY_S7    ( AHB_MMIO_0_AHBmslave7_HREADY ),
        .HMASTLOCK_S7 ( AHB_MMIO_0_AHBmslave7_HMASTLOCK ),
        .HRDATA_M0    ( AHBmmaster0_HRDATA ),
        .HRESP_M0     ( AHBmmaster0_HRESP ),
        .HADDR_S6     ( AHB_MMIO_0_AHBmslave6_HADDR ),
        .HTRANS_S6    ( AHB_MMIO_0_AHBmslave6_HTRANS ),
        .HSIZE_S6     ( AHB_MMIO_0_AHBmslave6_HSIZE ),
        .HWDATA_S6    ( AHB_MMIO_0_AHBmslave6_HWDATA ),
        .HBURST_S6    ( AHB_MMIO_0_AHBmslave6_HBURST ),
        .HPROT_S6     ( AHB_MMIO_0_AHBmslave6_HPROT ),
        .HADDR_S7     ( AHB_MMIO_0_AHBmslave7_HADDR ),
        .HTRANS_S7    ( AHB_MMIO_0_AHBmslave7_HTRANS ),
        .HSIZE_S7     ( AHB_MMIO_0_AHBmslave7_HSIZE ),
        .HWDATA_S7    ( AHB_MMIO_0_AHBmslave7_HWDATA ),
        .HBURST_S7    ( AHB_MMIO_0_AHBmslave7_HBURST ),
        .HPROT_S7     ( AHB_MMIO_0_AHBmslave7_HPROT ) 
        );

//--------AHBtoAPB
AHBtoAPB AHBtoAPB_0(
        // Inputs
        .HCLK      ( HCLK ),
        .HRESETN   ( HRESETN ),
        .HWRITE    ( AHB_MMIO_0_AHBmslave6_HWRITE ),
        .HSEL      ( AHB_MMIO_0_AHBmslave6_HSELx ),
        .HREADY    ( AHB_MMIO_0_AHBmslave6_HREADY ),
        .PREADY    ( AHBtoAPB_0_APBmaster_PREADY ),
        .PSLVERR   ( AHBtoAPB_0_APBmaster_PSLVERR ),
        .HADDR     ( AHB_MMIO_0_AHBmslave6_HADDR ),
        .HTRANS    ( AHB_MMIO_0_AHBmslave6_HTRANS ),
        .HWDATA    ( AHB_MMIO_0_AHBmslave6_HWDATA ),
        .PRDATA    ( AHBtoAPB_0_APBmaster_PRDATA ),
        // Outputs
        .HREADYOUT ( AHB_MMIO_0_AHBmslave6_HREADYOUT ),
        .PSEL      ( AHBtoAPB_0_APBmaster_PSELx ),
        .PENABLE   ( AHBtoAPB_0_APBmaster_PENABLE ),
        .PWRITE    ( AHBtoAPB_0_APBmaster_PWRITE ),
        .HRDATA    ( AHB_MMIO_0_AHBmslave6_HRDATA ),
        .HRESP     ( AHB_MMIO_0_AHBmslave6_HRESP ),
        .PADDR     ( AHBtoAPB_0_APBmaster_PADDR ),
        .PWDATA    ( AHBtoAPB_0_APBmaster_PWDATA ) 
        );

//--------APB_PERIPHERALS
APB_PERIPHERALS APB_PERIPHERALS_0(
        // Inputs
        .PSEL      ( AHBtoAPB_0_APBmaster_PSELx ),
        .PENABLE   ( AHBtoAPB_0_APBmaster_PENABLE ),
        .PWRITE    ( AHBtoAPB_0_APBmaster_PWRITE ),
        .PREADYS0  ( APB_PERIPHERALS_0_APBmslave0_PREADY ),
        .PSLVERRS0 ( APB_PERIPHERALS_0_APBmslave0_PSLVERR ),
        .PREADYS1  ( APB_PERIPHERALS_0_APBmslave1_PREADY ),
        .PSLVERRS1 ( APB_PERIPHERALS_0_APBmslave1_PSLVERR ),
        .PREADYS2  ( APB_PERIPHERALS_0_APBmslave2_PREADY ),
        .PSLVERRS2 ( APB_PERIPHERALS_0_APBmslave2_PSLVERR ),
        .PADDR     ( AHBtoAPB_0_APBmaster_PADDR ),
        .PWDATA    ( AHBtoAPB_0_APBmaster_PWDATA ),
        .PRDATAS0  ( APB_PERIPHERALS_0_APBmslave0_PRDATA ),
        .PRDATAS1  ( APB_PERIPHERALS_0_APBmslave1_PRDATA_0 ),
        .PRDATAS2  ( APB_PERIPHERALS_0_APBmslave2_PRDATA ),
        // Outputs
        .PREADY    ( AHBtoAPB_0_APBmaster_PREADY ),
        .PSLVERR   ( AHBtoAPB_0_APBmaster_PSLVERR ),
        .PSELS0    ( APB_PERIPHERALS_0_APBmslave0_PSELx ),
        .PENABLES  ( APB_PERIPHERALS_0_APBmslave0_PENABLE ),
        .PWRITES   ( APB_PERIPHERALS_0_APBmslave0_PWRITE ),
        .PSELS1    ( APB_PERIPHERALS_0_APBmslave1_PSELx ),
        .PSELS2    ( APB_PERIPHERALS_0_APBmslave2_PSELx ),
        .PRDATA    ( AHBtoAPB_0_APBmaster_PRDATA ),
        .PADDRS    ( APB_PERIPHERALS_0_APBmslave0_PADDR ),
        .PWDATAS   ( APB_PERIPHERALS_0_APBmslave0_PWDATA ) 
        );

//--------CoreSPI_0
CoreSPI_0 CoreSPI_0_0(
        // Inputs
        .PCLK       ( HCLK ),
        .PRESETN    ( HRESETN ),
        .SPISSI     ( VCC_net ),
        .SPISDI     ( PF_SPI_0_D_I ),
        .SPICLKI    ( GND_net ),
        .PSEL       ( APB_PERIPHERALS_0_APBmslave2_PSELx ),
        .PENABLE    ( APB_PERIPHERALS_0_APBmslave0_PENABLE ),
        .PWRITE     ( APB_PERIPHERALS_0_APBmslave0_PWRITE ),
        .PADDR      ( APB_PERIPHERALS_0_APBmslave0_PADDR_2 ),
        .PWDATA     ( APB_PERIPHERALS_0_APBmslave0_PWDATA ),
        // Outputs
        .SPIINT     (  ),
        .SPIRXAVAIL (  ),
        .SPITXRFM   (  ),
        .SPISCLKO   ( CoreSPI_0_0_SPISCLKO ),
        .SPIOEN     (  ),
        .SPISDO     ( CoreSPI_0_0_SPISDO ),
        .SPIMODE    (  ),
        .PREADY     ( APB_PERIPHERALS_0_APBmslave2_PREADY ),
        .PSLVERR    ( APB_PERIPHERALS_0_APBmslave2_PSLVERR ),
        .SPISS      ( SPISS_net_0 ),
        .PRDATA     ( APB_PERIPHERALS_0_APBmslave2_PRDATA ) 
        );

//--------GPIO
GPIO GPIO_0(
        // Inputs
        .PRESETN  ( HRESETN ),
        .PCLK     ( HCLK ),
        .PSEL     ( APB_PERIPHERALS_0_APBmslave0_PSELx ),
        .PENABLE  ( APB_PERIPHERALS_0_APBmslave0_PENABLE ),
        .PWRITE   ( APB_PERIPHERALS_0_APBmslave0_PWRITE ),
        .PADDR    ( APB_PERIPHERALS_0_APBmslave0_PADDR_0 ),
        .PWDATA   ( APB_PERIPHERALS_0_APBmslave0_PWDATA ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        // Outputs
        .PREADY   ( APB_PERIPHERALS_0_APBmslave0_PREADY ),
        .PSLVERR  ( APB_PERIPHERALS_0_APBmslave0_PSLVERR ),
        .PRDATA   ( APB_PERIPHERALS_0_APBmslave0_PRDATA ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ) 
        );

//--------LSRAM_64kBytes
LSRAM_64kBytes LSRAM_64kBytes_0(
        // Inputs
        .HCLK      ( HCLK ),
        .HRESETN   ( HRESETN ),
        .HWRITE    ( AHB_MMIO_0_AHBmslave7_HWRITE ),
        .HSEL      ( AHB_MMIO_0_AHBmslave7_HSELx ),
        .HREADYIN  ( AHB_MMIO_0_AHBmslave7_HREADY ),
        .HADDR     ( AHB_MMIO_0_AHBmslave7_HADDR ),
        .HTRANS    ( AHB_MMIO_0_AHBmslave7_HTRANS ),
        .HSIZE     ( AHB_MMIO_0_AHBmslave7_HSIZE ),
        .HBURST    ( AHB_MMIO_0_AHBmslave7_HBURST ),
        .HWDATA    ( AHB_MMIO_0_AHBmslave7_HWDATA ),
        // Outputs
        .HREADYOUT ( AHB_MMIO_0_AHBmslave7_HREADYOUT ),
        .HRDATA    ( AHB_MMIO_0_AHBmslave7_HRDATA ),
        .HRESP     ( AHB_MMIO_0_AHBmslave7_HRESP ) 
        );

//--------PF_SPI
PF_SPI PF_SPI_0(
        // Inputs
        .CLK_OE        ( VCC_net ),
        .CLK_O         ( CoreSPI_0_0_SPISCLKO ),
        .D_OE          ( VCC_net ),
        .D_O           ( CoreSPI_0_0_SPISDO ),
        .SS_OE         ( VCC_net ),
        .SS_O          ( CoreSPI_0_0_SPISS0to0 ),
        .DI            ( SPI_MISO ),
        .IFACE         ( IO_CFG_INTF ),
        .FLASH         ( SC_SPI_EN ),
        // Outputs
        .CLK_I         (  ),
        .D_I           ( PF_SPI_0_D_I ),
        .SS_I          (  ),
        .FAB_SPI_OWNER (  ),
        .DO            ( SPI_MOSI_net_0 ),
        // Inouts
        .CLK           ( SPI_CLK ),
        .SS            ( SPI_SS ) 
        );

//--------UART
UART UART_0(
        // Inputs
        .PCLK        ( HCLK ),
        .PRESETN     ( HRESETN ),
        .RX          ( RX ),
        .PSEL        ( APB_PERIPHERALS_0_APBmslave1_PSELx ),
        .PENABLE     ( APB_PERIPHERALS_0_APBmslave0_PENABLE ),
        .PWRITE      ( APB_PERIPHERALS_0_APBmslave0_PWRITE ),
        .PADDR       ( APB_PERIPHERALS_0_APBmslave0_PADDR_1 ),
        .PWDATA      ( APB_PERIPHERALS_0_APBmslave0_PWDATA_0 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       ( RXRDY_net_0 ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .FRAMING_ERR (  ),
        .PREADY      ( APB_PERIPHERALS_0_APBmslave1_PREADY ),
        .PSLVERR     ( APB_PERIPHERALS_0_APBmslave1_PSLVERR ),
        .PRDATA      ( APB_PERIPHERALS_0_APBmslave1_PRDATA ) 
        );


endmodule
