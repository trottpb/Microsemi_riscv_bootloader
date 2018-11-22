//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Oct 18 15:05:30 2018
// Version: PolarFire v2.3 12.200.35.9
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// AXI_INTERCONNECT
module AXI_INTERCONNECT(
    // Inputs
    ACLK,
    ARESETN,
    MASTER0_HADDR,
    MASTER0_HBURST,
    MASTER0_HMASTLOCK,
    MASTER0_HNONSEC,
    MASTER0_HPROT,
    MASTER0_HSEL,
    MASTER0_HSIZE,
    MASTER0_HTRANS,
    MASTER0_HWDATA,
    MASTER0_HWRITE,
    SLAVE0_ARREADY,
    SLAVE0_AWREADY,
    SLAVE0_BID,
    SLAVE0_BRESP,
    SLAVE0_BUSER,
    SLAVE0_BVALID,
    SLAVE0_RDATA,
    SLAVE0_RID,
    SLAVE0_RLAST,
    SLAVE0_RRESP,
    SLAVE0_RUSER,
    SLAVE0_RVALID,
    SLAVE0_WREADY,
    // Outputs
    MASTER0_HRDATA,
    MASTER0_HREADY,
    MASTER0_HRESP,
    SLAVE0_ARADDR,
    SLAVE0_ARBURST,
    SLAVE0_ARCACHE,
    SLAVE0_ARID,
    SLAVE0_ARLEN,
    SLAVE0_ARLOCK,
    SLAVE0_ARPROT,
    SLAVE0_ARQOS,
    SLAVE0_ARREGION,
    SLAVE0_ARSIZE,
    SLAVE0_ARUSER,
    SLAVE0_ARVALID,
    SLAVE0_AWADDR,
    SLAVE0_AWBURST,
    SLAVE0_AWCACHE,
    SLAVE0_AWID,
    SLAVE0_AWLEN,
    SLAVE0_AWLOCK,
    SLAVE0_AWPROT,
    SLAVE0_AWQOS,
    SLAVE0_AWREGION,
    SLAVE0_AWSIZE,
    SLAVE0_AWUSER,
    SLAVE0_AWVALID,
    SLAVE0_BREADY,
    SLAVE0_RREADY,
    SLAVE0_WDATA,
    SLAVE0_WLAST,
    SLAVE0_WSTRB,
    SLAVE0_WUSER,
    SLAVE0_WVALID
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         ACLK;
input         ARESETN;
input  [31:0] MASTER0_HADDR;
input  [2:0]  MASTER0_HBURST;
input         MASTER0_HMASTLOCK;
input         MASTER0_HNONSEC;
input  [6:0]  MASTER0_HPROT;
input         MASTER0_HSEL;
input  [2:0]  MASTER0_HSIZE;
input  [1:0]  MASTER0_HTRANS;
input  [31:0] MASTER0_HWDATA;
input         MASTER0_HWRITE;
input         SLAVE0_ARREADY;
input         SLAVE0_AWREADY;
input  [4:0]  SLAVE0_BID;
input  [1:0]  SLAVE0_BRESP;
input  [0:0]  SLAVE0_BUSER;
input         SLAVE0_BVALID;
input  [63:0] SLAVE0_RDATA;
input  [4:0]  SLAVE0_RID;
input         SLAVE0_RLAST;
input  [1:0]  SLAVE0_RRESP;
input  [0:0]  SLAVE0_RUSER;
input         SLAVE0_RVALID;
input         SLAVE0_WREADY;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] MASTER0_HRDATA;
output        MASTER0_HREADY;
output        MASTER0_HRESP;
output [31:0] SLAVE0_ARADDR;
output [1:0]  SLAVE0_ARBURST;
output [3:0]  SLAVE0_ARCACHE;
output [4:0]  SLAVE0_ARID;
output [7:0]  SLAVE0_ARLEN;
output [1:0]  SLAVE0_ARLOCK;
output [2:0]  SLAVE0_ARPROT;
output [3:0]  SLAVE0_ARQOS;
output [3:0]  SLAVE0_ARREGION;
output [2:0]  SLAVE0_ARSIZE;
output [0:0]  SLAVE0_ARUSER;
output        SLAVE0_ARVALID;
output [31:0] SLAVE0_AWADDR;
output [1:0]  SLAVE0_AWBURST;
output [3:0]  SLAVE0_AWCACHE;
output [4:0]  SLAVE0_AWID;
output [7:0]  SLAVE0_AWLEN;
output [1:0]  SLAVE0_AWLOCK;
output [2:0]  SLAVE0_AWPROT;
output [3:0]  SLAVE0_AWQOS;
output [3:0]  SLAVE0_AWREGION;
output [2:0]  SLAVE0_AWSIZE;
output [0:0]  SLAVE0_AWUSER;
output        SLAVE0_AWVALID;
output        SLAVE0_BREADY;
output        SLAVE0_RREADY;
output [63:0] SLAVE0_WDATA;
output        SLAVE0_WLAST;
output [7:0]  SLAVE0_WSTRB;
output [0:0]  SLAVE0_WUSER;
output        SLAVE0_WVALID;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          ACLK;
wire   [31:0] MASTER0_HADDR;
wire   [2:0]  MASTER0_HBURST;
wire   [6:0]  MASTER0_HPROT;
wire   [31:0] AHBmmaster0_HRDATA;
wire          AHBmmaster0_HREADY;
wire          AHBmmaster0_HRESP;
wire   [2:0]  MASTER0_HSIZE;
wire   [1:0]  MASTER0_HTRANS;
wire   [31:0] MASTER0_HWDATA;
wire          MASTER0_HWRITE;
wire          ARESETN;
wire   [31:0] AXI4mslave0_3_ARADDR;
wire   [1:0]  AXI4mslave0_3_ARBURST;
wire   [3:0]  AXI4mslave0_3_ARCACHE;
wire   [4:0]  AXI4mslave0_3_ARID;
wire   [7:0]  AXI4mslave0_3_ARLEN;
wire   [1:0]  AXI4mslave0_3_ARLOCK;
wire   [2:0]  AXI4mslave0_3_ARPROT;
wire   [3:0]  AXI4mslave0_3_ARQOS;
wire          SLAVE0_ARREADY;
wire   [3:0]  AXI4mslave0_3_ARREGION;
wire   [2:0]  AXI4mslave0_3_ARSIZE;
wire   [0:0]  AXI4mslave0_3_ARUSER;
wire          AXI4mslave0_3_ARVALID;
wire   [31:0] AXI4mslave0_3_AWADDR;
wire   [1:0]  AXI4mslave0_3_AWBURST;
wire   [3:0]  AXI4mslave0_3_AWCACHE;
wire   [4:0]  AXI4mslave0_3_AWID;
wire   [7:0]  AXI4mslave0_3_AWLEN;
wire   [1:0]  AXI4mslave0_3_AWLOCK;
wire   [2:0]  AXI4mslave0_3_AWPROT;
wire   [3:0]  AXI4mslave0_3_AWQOS;
wire          SLAVE0_AWREADY;
wire   [3:0]  AXI4mslave0_3_AWREGION;
wire   [2:0]  AXI4mslave0_3_AWSIZE;
wire   [0:0]  AXI4mslave0_3_AWUSER;
wire          AXI4mslave0_3_AWVALID;
wire   [4:0]  SLAVE0_BID;
wire          AXI4mslave0_3_BREADY;
wire   [1:0]  SLAVE0_BRESP;
wire   [0:0]  SLAVE0_BUSER;
wire          SLAVE0_BVALID;
wire   [63:0] SLAVE0_RDATA;
wire   [4:0]  SLAVE0_RID;
wire          SLAVE0_RLAST;
wire          AXI4mslave0_3_RREADY;
wire   [1:0]  SLAVE0_RRESP;
wire   [0:0]  SLAVE0_RUSER;
wire          SLAVE0_RVALID;
wire   [63:0] AXI4mslave0_3_WDATA;
wire          AXI4mslave0_3_WLAST;
wire          SLAVE0_WREADY;
wire   [7:0]  AXI4mslave0_3_WSTRB;
wire   [0:0]  AXI4mslave0_3_WUSER;
wire          AXI4mslave0_3_WVALID;
wire          MASTER0_HMASTLOCK;
wire          MASTER0_HNONSEC;
wire          MASTER0_HSEL;
wire   [4:0]  AXI4mslave0_3_AWID_net_0;
wire   [31:0] AXI4mslave0_3_AWADDR_net_0;
wire   [7:0]  AXI4mslave0_3_AWLEN_net_0;
wire   [2:0]  AXI4mslave0_3_AWSIZE_net_0;
wire   [1:0]  AXI4mslave0_3_AWBURST_net_0;
wire   [1:0]  AXI4mslave0_3_AWLOCK_net_0;
wire   [3:0]  AXI4mslave0_3_AWCACHE_net_0;
wire   [2:0]  AXI4mslave0_3_AWPROT_net_0;
wire   [3:0]  AXI4mslave0_3_AWQOS_net_0;
wire   [3:0]  AXI4mslave0_3_AWREGION_net_0;
wire          AXI4mslave0_3_AWVALID_net_0;
wire   [63:0] AXI4mslave0_3_WDATA_net_0;
wire   [7:0]  AXI4mslave0_3_WSTRB_net_0;
wire          AXI4mslave0_3_WLAST_net_0;
wire          AXI4mslave0_3_WVALID_net_0;
wire          AXI4mslave0_3_BREADY_net_0;
wire   [4:0]  AXI4mslave0_3_ARID_net_0;
wire   [31:0] AXI4mslave0_3_ARADDR_net_0;
wire   [7:0]  AXI4mslave0_3_ARLEN_net_0;
wire   [2:0]  AXI4mslave0_3_ARSIZE_net_0;
wire   [1:0]  AXI4mslave0_3_ARBURST_net_0;
wire   [1:0]  AXI4mslave0_3_ARLOCK_net_0;
wire   [3:0]  AXI4mslave0_3_ARCACHE_net_0;
wire   [2:0]  AXI4mslave0_3_ARPROT_net_0;
wire   [3:0]  AXI4mslave0_3_ARQOS_net_0;
wire   [3:0]  AXI4mslave0_3_ARREGION_net_0;
wire          AXI4mslave0_3_ARVALID_net_0;
wire          AXI4mslave0_3_RREADY_net_0;
wire   [0:0]  AXI4mslave0_3_AWUSER_net_0;
wire   [0:0]  AXI4mslave0_3_WUSER_net_0;
wire   [0:0]  AXI4mslave0_3_ARUSER_net_0;
wire   [31:0] AHBmmaster0_HRDATA_net_0;
wire          AHBmmaster0_HREADY_net_0;
wire          AHBmmaster0_HRESP_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire   [3:0]  MASTER0_AWREGION_const_net_0;
wire   [3:0]  MASTER0_AWQOS_const_net_0;
wire   [3:0]  MASTER0_ARREGION_const_net_0;
wire   [3:0]  MASTER0_ARQOS_const_net_0;
wire   [3:0]  MASTER1_ARREGION_const_net_0;
wire   [31:0] MASTER1_HADDR_const_net_0;
wire   [2:0]  MASTER1_HBURST_const_net_0;
wire   [6:0]  MASTER1_HPROT_const_net_0;
wire   [2:0]  MASTER1_HSIZE_const_net_0;
wire   [1:0]  MASTER1_HTRANS_const_net_0;
wire   [63:0] MASTER1_HWDATA_const_net_0;
wire   [31:0] MASTER2_HADDR_const_net_0;
wire   [2:0]  MASTER2_HBURST_const_net_0;
wire   [6:0]  MASTER2_HPROT_const_net_0;
wire   [2:0]  MASTER2_HSIZE_const_net_0;
wire   [1:0]  MASTER2_HTRANS_const_net_0;
wire   [63:0] MASTER2_HWDATA_const_net_0;
wire   [31:0] MASTER3_HADDR_const_net_0;
wire   [2:0]  MASTER3_HBURST_const_net_0;
wire   [6:0]  MASTER3_HPROT_const_net_0;
wire   [2:0]  MASTER3_HSIZE_const_net_0;
wire   [1:0]  MASTER3_HTRANS_const_net_0;
wire   [63:0] MASTER3_HWDATA_const_net_0;
wire   [31:0] MASTER4_HADDR_const_net_0;
wire   [2:0]  MASTER4_HBURST_const_net_0;
wire   [6:0]  MASTER4_HPROT_const_net_0;
wire   [2:0]  MASTER4_HSIZE_const_net_0;
wire   [1:0]  MASTER4_HTRANS_const_net_0;
wire   [63:0] MASTER4_HWDATA_const_net_0;
wire   [31:0] MASTER5_HADDR_const_net_0;
wire   [2:0]  MASTER5_HBURST_const_net_0;
wire   [6:0]  MASTER5_HPROT_const_net_0;
wire   [2:0]  MASTER5_HSIZE_const_net_0;
wire   [1:0]  MASTER5_HTRANS_const_net_0;
wire   [63:0] MASTER5_HWDATA_const_net_0;
wire   [31:0] MASTER6_HADDR_const_net_0;
wire   [2:0]  MASTER6_HBURST_const_net_0;
wire   [6:0]  MASTER6_HPROT_const_net_0;
wire   [2:0]  MASTER6_HSIZE_const_net_0;
wire   [1:0]  MASTER6_HTRANS_const_net_0;
wire   [63:0] MASTER6_HWDATA_const_net_0;
wire   [31:0] MASTER7_HADDR_const_net_0;
wire   [2:0]  MASTER7_HBURST_const_net_0;
wire   [6:0]  MASTER7_HPROT_const_net_0;
wire   [2:0]  MASTER7_HSIZE_const_net_0;
wire   [1:0]  MASTER7_HTRANS_const_net_0;
wire   [63:0] MASTER7_HWDATA_const_net_0;
wire   [4:0]  SLAVE1_BID_const_net_0;
wire   [1:0]  SLAVE1_BRESP_const_net_0;
wire   [4:0]  SLAVE1_RID_const_net_0;
wire   [63:0] SLAVE1_RDATA_const_net_0;
wire   [1:0]  SLAVE1_RRESP_const_net_0;
wire   [4:0]  SLAVE2_BID_const_net_0;
wire   [1:0]  SLAVE2_BRESP_const_net_0;
wire   [4:0]  SLAVE2_RID_const_net_0;
wire   [63:0] SLAVE2_RDATA_const_net_0;
wire   [1:0]  SLAVE2_RRESP_const_net_0;
wire   [4:0]  SLAVE3_BID_const_net_0;
wire   [1:0]  SLAVE3_BRESP_const_net_0;
wire   [4:0]  SLAVE3_RID_const_net_0;
wire   [63:0] SLAVE3_RDATA_const_net_0;
wire   [1:0]  SLAVE3_RRESP_const_net_0;
wire   [4:0]  SLAVE4_BID_const_net_0;
wire   [1:0]  SLAVE4_BRESP_const_net_0;
wire   [4:0]  SLAVE4_RID_const_net_0;
wire   [63:0] SLAVE4_RDATA_const_net_0;
wire   [1:0]  SLAVE4_RRESP_const_net_0;
wire   [4:0]  SLAVE5_BID_const_net_0;
wire   [1:0]  SLAVE5_BRESP_const_net_0;
wire   [4:0]  SLAVE5_RID_const_net_0;
wire   [63:0] SLAVE5_RDATA_const_net_0;
wire   [1:0]  SLAVE5_RRESP_const_net_0;
wire   [4:0]  SLAVE6_BID_const_net_0;
wire   [1:0]  SLAVE6_BRESP_const_net_0;
wire   [4:0]  SLAVE6_RID_const_net_0;
wire   [63:0] SLAVE6_RDATA_const_net_0;
wire   [1:0]  SLAVE6_RRESP_const_net_0;
wire   [4:0]  SLAVE7_BID_const_net_0;
wire   [1:0]  SLAVE7_BRESP_const_net_0;
wire   [4:0]  SLAVE7_RID_const_net_0;
wire   [63:0] SLAVE7_RDATA_const_net_0;
wire   [1:0]  SLAVE7_RRESP_const_net_0;
wire   [4:0]  SLAVE8_BID_const_net_0;
wire   [1:0]  SLAVE8_BRESP_const_net_0;
wire   [4:0]  SLAVE8_RID_const_net_0;
wire   [63:0] SLAVE8_RDATA_const_net_0;
wire   [1:0]  SLAVE8_RRESP_const_net_0;
wire   [4:0]  SLAVE9_BID_const_net_0;
wire   [1:0]  SLAVE9_BRESP_const_net_0;
wire   [4:0]  SLAVE9_RID_const_net_0;
wire   [63:0] SLAVE9_RDATA_const_net_0;
wire   [1:0]  SLAVE9_RRESP_const_net_0;
wire   [4:0]  SLAVE10_BID_const_net_0;
wire   [1:0]  SLAVE10_BRESP_const_net_0;
wire   [4:0]  SLAVE10_RID_const_net_0;
wire   [63:0] SLAVE10_RDATA_const_net_0;
wire   [1:0]  SLAVE10_RRESP_const_net_0;
wire   [4:0]  SLAVE11_BID_const_net_0;
wire   [1:0]  SLAVE11_BRESP_const_net_0;
wire   [4:0]  SLAVE11_RID_const_net_0;
wire   [63:0] SLAVE11_RDATA_const_net_0;
wire   [1:0]  SLAVE11_RRESP_const_net_0;
wire   [4:0]  SLAVE12_BID_const_net_0;
wire   [1:0]  SLAVE12_BRESP_const_net_0;
wire   [4:0]  SLAVE12_RID_const_net_0;
wire   [63:0] SLAVE12_RDATA_const_net_0;
wire   [1:0]  SLAVE12_RRESP_const_net_0;
wire   [4:0]  SLAVE13_BID_const_net_0;
wire   [1:0]  SLAVE13_BRESP_const_net_0;
wire   [4:0]  SLAVE13_RID_const_net_0;
wire   [63:0] SLAVE13_RDATA_const_net_0;
wire   [1:0]  SLAVE13_RRESP_const_net_0;
wire   [4:0]  SLAVE14_BID_const_net_0;
wire   [1:0]  SLAVE14_BRESP_const_net_0;
wire   [4:0]  SLAVE14_RID_const_net_0;
wire   [63:0] SLAVE14_RDATA_const_net_0;
wire   [1:0]  SLAVE14_RRESP_const_net_0;
wire   [4:0]  SLAVE15_BID_const_net_0;
wire   [1:0]  SLAVE15_BRESP_const_net_0;
wire   [4:0]  SLAVE15_RID_const_net_0;
wire   [63:0] SLAVE15_RDATA_const_net_0;
wire   [1:0]  SLAVE15_RRESP_const_net_0;
wire   [4:0]  SLAVE16_BID_const_net_0;
wire   [1:0]  SLAVE16_BRESP_const_net_0;
wire   [4:0]  SLAVE16_RID_const_net_0;
wire   [63:0] SLAVE16_RDATA_const_net_0;
wire   [1:0]  SLAVE16_RRESP_const_net_0;
wire   [4:0]  SLAVE17_BID_const_net_0;
wire   [1:0]  SLAVE17_BRESP_const_net_0;
wire   [4:0]  SLAVE17_RID_const_net_0;
wire   [63:0] SLAVE17_RDATA_const_net_0;
wire   [1:0]  SLAVE17_RRESP_const_net_0;
wire   [4:0]  SLAVE18_BID_const_net_0;
wire   [1:0]  SLAVE18_BRESP_const_net_0;
wire   [4:0]  SLAVE18_RID_const_net_0;
wire   [63:0] SLAVE18_RDATA_const_net_0;
wire   [1:0]  SLAVE18_RRESP_const_net_0;
wire   [4:0]  SLAVE19_BID_const_net_0;
wire   [1:0]  SLAVE19_BRESP_const_net_0;
wire   [4:0]  SLAVE19_RID_const_net_0;
wire   [63:0] SLAVE19_RDATA_const_net_0;
wire   [1:0]  SLAVE19_RRESP_const_net_0;
wire   [4:0]  SLAVE20_BID_const_net_0;
wire   [1:0]  SLAVE20_BRESP_const_net_0;
wire   [4:0]  SLAVE20_RID_const_net_0;
wire   [63:0] SLAVE20_RDATA_const_net_0;
wire   [1:0]  SLAVE20_RRESP_const_net_0;
wire   [4:0]  SLAVE21_BID_const_net_0;
wire   [1:0]  SLAVE21_BRESP_const_net_0;
wire   [4:0]  SLAVE21_RID_const_net_0;
wire   [63:0] SLAVE21_RDATA_const_net_0;
wire   [1:0]  SLAVE21_RRESP_const_net_0;
wire   [4:0]  SLAVE22_BID_const_net_0;
wire   [1:0]  SLAVE22_BRESP_const_net_0;
wire   [4:0]  SLAVE22_RID_const_net_0;
wire   [63:0] SLAVE22_RDATA_const_net_0;
wire   [1:0]  SLAVE22_RRESP_const_net_0;
wire   [4:0]  SLAVE23_BID_const_net_0;
wire   [1:0]  SLAVE23_BRESP_const_net_0;
wire   [4:0]  SLAVE23_RID_const_net_0;
wire   [63:0] SLAVE23_RDATA_const_net_0;
wire   [1:0]  SLAVE23_RRESP_const_net_0;
wire   [4:0]  SLAVE24_BID_const_net_0;
wire   [1:0]  SLAVE24_BRESP_const_net_0;
wire   [4:0]  SLAVE24_RID_const_net_0;
wire   [63:0] SLAVE24_RDATA_const_net_0;
wire   [1:0]  SLAVE24_RRESP_const_net_0;
wire   [4:0]  SLAVE25_BID_const_net_0;
wire   [1:0]  SLAVE25_BRESP_const_net_0;
wire   [4:0]  SLAVE25_RID_const_net_0;
wire   [63:0] SLAVE25_RDATA_const_net_0;
wire   [1:0]  SLAVE25_RRESP_const_net_0;
wire   [4:0]  SLAVE26_BID_const_net_0;
wire   [1:0]  SLAVE26_BRESP_const_net_0;
wire   [4:0]  SLAVE26_RID_const_net_0;
wire   [63:0] SLAVE26_RDATA_const_net_0;
wire   [1:0]  SLAVE26_RRESP_const_net_0;
wire   [4:0]  SLAVE27_BID_const_net_0;
wire   [1:0]  SLAVE27_BRESP_const_net_0;
wire   [4:0]  SLAVE27_RID_const_net_0;
wire   [63:0] SLAVE27_RDATA_const_net_0;
wire   [1:0]  SLAVE27_RRESP_const_net_0;
wire   [4:0]  SLAVE28_BID_const_net_0;
wire   [1:0]  SLAVE28_BRESP_const_net_0;
wire   [4:0]  SLAVE28_RID_const_net_0;
wire   [63:0] SLAVE28_RDATA_const_net_0;
wire   [1:0]  SLAVE28_RRESP_const_net_0;
wire   [4:0]  SLAVE29_BID_const_net_0;
wire   [1:0]  SLAVE29_BRESP_const_net_0;
wire   [4:0]  SLAVE29_RID_const_net_0;
wire   [63:0] SLAVE29_RDATA_const_net_0;
wire   [1:0]  SLAVE29_RRESP_const_net_0;
wire   [4:0]  SLAVE30_BID_const_net_0;
wire   [1:0]  SLAVE30_BRESP_const_net_0;
wire   [4:0]  SLAVE30_RID_const_net_0;
wire   [63:0] SLAVE30_RDATA_const_net_0;
wire   [1:0]  SLAVE30_RRESP_const_net_0;
wire   [4:0]  SLAVE31_BID_const_net_0;
wire   [1:0]  SLAVE31_BRESP_const_net_0;
wire   [4:0]  SLAVE31_RID_const_net_0;
wire   [63:0] SLAVE31_RDATA_const_net_0;
wire   [1:0]  SLAVE31_RRESP_const_net_0;
wire   [3:0]  MASTER0_AWID_const_net_0;
wire   [31:0] MASTER0_AWADDR_const_net_0;
wire   [7:0]  MASTER0_AWLEN_const_net_0;
wire   [2:0]  MASTER0_AWSIZE_const_net_0;
wire   [1:0]  MASTER0_AWBURST_const_net_0;
wire   [1:0]  MASTER0_AWLOCK_const_net_0;
wire   [3:0]  MASTER0_AWCACHE_const_net_0;
wire   [2:0]  MASTER0_AWPROT_const_net_0;
wire   [31:0] MASTER0_WDATA_const_net_0;
wire   [3:0]  MASTER0_WSTRB_const_net_0;
wire   [3:0]  MASTER0_ARID_const_net_0;
wire   [31:0] MASTER0_ARADDR_const_net_0;
wire   [7:0]  MASTER0_ARLEN_const_net_0;
wire   [2:0]  MASTER0_ARSIZE_const_net_0;
wire   [1:0]  MASTER0_ARBURST_const_net_0;
wire   [1:0]  MASTER0_ARLOCK_const_net_0;
wire   [3:0]  MASTER0_ARCACHE_const_net_0;
wire   [2:0]  MASTER0_ARPROT_const_net_0;
wire   [3:0]  MASTER1_AWID_const_net_0;
wire   [31:0] MASTER1_AWADDR_const_net_0;
wire   [7:0]  MASTER1_AWLEN_const_net_0;
wire   [2:0]  MASTER1_AWSIZE_const_net_0;
wire   [1:0]  MASTER1_AWBURST_const_net_0;
wire   [1:0]  MASTER1_AWLOCK_const_net_0;
wire   [3:0]  MASTER1_AWCACHE_const_net_0;
wire   [2:0]  MASTER1_AWPROT_const_net_0;
wire   [3:0]  MASTER1_AWQOS_const_net_0;
wire   [3:0]  MASTER1_AWREGION_const_net_0;
wire   [63:0] MASTER1_WDATA_const_net_0;
wire   [7:0]  MASTER1_WSTRB_const_net_0;
wire   [3:0]  MASTER1_ARID_const_net_0;
wire   [31:0] MASTER1_ARADDR_const_net_0;
wire   [7:0]  MASTER1_ARLEN_const_net_0;
wire   [2:0]  MASTER1_ARSIZE_const_net_0;
wire   [1:0]  MASTER1_ARBURST_const_net_0;
wire   [1:0]  MASTER1_ARLOCK_const_net_0;
wire   [3:0]  MASTER1_ARCACHE_const_net_0;
wire   [2:0]  MASTER1_ARPROT_const_net_0;
wire   [3:0]  MASTER1_ARQOS_const_net_0;
wire   [3:0]  MASTER2_AWID_const_net_0;
wire   [31:0] MASTER2_AWADDR_const_net_0;
wire   [7:0]  MASTER2_AWLEN_const_net_0;
wire   [2:0]  MASTER2_AWSIZE_const_net_0;
wire   [1:0]  MASTER2_AWBURST_const_net_0;
wire   [1:0]  MASTER2_AWLOCK_const_net_0;
wire   [3:0]  MASTER2_AWCACHE_const_net_0;
wire   [2:0]  MASTER2_AWPROT_const_net_0;
wire   [3:0]  MASTER2_AWQOS_const_net_0;
wire   [3:0]  MASTER2_AWREGION_const_net_0;
wire   [63:0] MASTER2_WDATA_const_net_0;
wire   [7:0]  MASTER2_WSTRB_const_net_0;
wire   [3:0]  MASTER2_ARID_const_net_0;
wire   [31:0] MASTER2_ARADDR_const_net_0;
wire   [7:0]  MASTER2_ARLEN_const_net_0;
wire   [2:0]  MASTER2_ARSIZE_const_net_0;
wire   [1:0]  MASTER2_ARBURST_const_net_0;
wire   [1:0]  MASTER2_ARLOCK_const_net_0;
wire   [3:0]  MASTER2_ARCACHE_const_net_0;
wire   [2:0]  MASTER2_ARPROT_const_net_0;
wire   [3:0]  MASTER2_ARQOS_const_net_0;
wire   [3:0]  MASTER2_ARREGION_const_net_0;
wire   [3:0]  MASTER3_AWID_const_net_0;
wire   [31:0] MASTER3_AWADDR_const_net_0;
wire   [7:0]  MASTER3_AWLEN_const_net_0;
wire   [2:0]  MASTER3_AWSIZE_const_net_0;
wire   [1:0]  MASTER3_AWBURST_const_net_0;
wire   [1:0]  MASTER3_AWLOCK_const_net_0;
wire   [3:0]  MASTER3_AWCACHE_const_net_0;
wire   [2:0]  MASTER3_AWPROT_const_net_0;
wire   [3:0]  MASTER3_AWQOS_const_net_0;
wire   [3:0]  MASTER3_AWREGION_const_net_0;
wire   [63:0] MASTER3_WDATA_const_net_0;
wire   [7:0]  MASTER3_WSTRB_const_net_0;
wire   [3:0]  MASTER3_ARID_const_net_0;
wire   [31:0] MASTER3_ARADDR_const_net_0;
wire   [7:0]  MASTER3_ARLEN_const_net_0;
wire   [2:0]  MASTER3_ARSIZE_const_net_0;
wire   [1:0]  MASTER3_ARBURST_const_net_0;
wire   [1:0]  MASTER3_ARLOCK_const_net_0;
wire   [3:0]  MASTER3_ARCACHE_const_net_0;
wire   [2:0]  MASTER3_ARPROT_const_net_0;
wire   [3:0]  MASTER3_ARQOS_const_net_0;
wire   [3:0]  MASTER3_ARREGION_const_net_0;
wire   [3:0]  MASTER4_AWID_const_net_0;
wire   [31:0] MASTER4_AWADDR_const_net_0;
wire   [7:0]  MASTER4_AWLEN_const_net_0;
wire   [2:0]  MASTER4_AWSIZE_const_net_0;
wire   [1:0]  MASTER4_AWBURST_const_net_0;
wire   [1:0]  MASTER4_AWLOCK_const_net_0;
wire   [3:0]  MASTER4_AWCACHE_const_net_0;
wire   [2:0]  MASTER4_AWPROT_const_net_0;
wire   [3:0]  MASTER4_AWQOS_const_net_0;
wire   [3:0]  MASTER4_AWREGION_const_net_0;
wire   [63:0] MASTER4_WDATA_const_net_0;
wire   [7:0]  MASTER4_WSTRB_const_net_0;
wire   [3:0]  MASTER4_ARID_const_net_0;
wire   [31:0] MASTER4_ARADDR_const_net_0;
wire   [7:0]  MASTER4_ARLEN_const_net_0;
wire   [2:0]  MASTER4_ARSIZE_const_net_0;
wire   [1:0]  MASTER4_ARBURST_const_net_0;
wire   [1:0]  MASTER4_ARLOCK_const_net_0;
wire   [3:0]  MASTER4_ARCACHE_const_net_0;
wire   [2:0]  MASTER4_ARPROT_const_net_0;
wire   [3:0]  MASTER4_ARQOS_const_net_0;
wire   [3:0]  MASTER4_ARREGION_const_net_0;
wire   [3:0]  MASTER5_AWID_const_net_0;
wire   [31:0] MASTER5_AWADDR_const_net_0;
wire   [7:0]  MASTER5_AWLEN_const_net_0;
wire   [2:0]  MASTER5_AWSIZE_const_net_0;
wire   [1:0]  MASTER5_AWBURST_const_net_0;
wire   [1:0]  MASTER5_AWLOCK_const_net_0;
wire   [3:0]  MASTER5_AWCACHE_const_net_0;
wire   [2:0]  MASTER5_AWPROT_const_net_0;
wire   [3:0]  MASTER5_AWQOS_const_net_0;
wire   [3:0]  MASTER5_AWREGION_const_net_0;
wire   [63:0] MASTER5_WDATA_const_net_0;
wire   [7:0]  MASTER5_WSTRB_const_net_0;
wire   [3:0]  MASTER5_ARID_const_net_0;
wire   [31:0] MASTER5_ARADDR_const_net_0;
wire   [7:0]  MASTER5_ARLEN_const_net_0;
wire   [2:0]  MASTER5_ARSIZE_const_net_0;
wire   [1:0]  MASTER5_ARBURST_const_net_0;
wire   [1:0]  MASTER5_ARLOCK_const_net_0;
wire   [3:0]  MASTER5_ARCACHE_const_net_0;
wire   [2:0]  MASTER5_ARPROT_const_net_0;
wire   [3:0]  MASTER5_ARQOS_const_net_0;
wire   [3:0]  MASTER5_ARREGION_const_net_0;
wire   [3:0]  MASTER6_AWID_const_net_0;
wire   [31:0] MASTER6_AWADDR_const_net_0;
wire   [7:0]  MASTER6_AWLEN_const_net_0;
wire   [2:0]  MASTER6_AWSIZE_const_net_0;
wire   [1:0]  MASTER6_AWBURST_const_net_0;
wire   [1:0]  MASTER6_AWLOCK_const_net_0;
wire   [3:0]  MASTER6_AWCACHE_const_net_0;
wire   [2:0]  MASTER6_AWPROT_const_net_0;
wire   [3:0]  MASTER6_AWQOS_const_net_0;
wire   [3:0]  MASTER6_AWREGION_const_net_0;
wire   [63:0] MASTER6_WDATA_const_net_0;
wire   [7:0]  MASTER6_WSTRB_const_net_0;
wire   [3:0]  MASTER6_ARID_const_net_0;
wire   [31:0] MASTER6_ARADDR_const_net_0;
wire   [7:0]  MASTER6_ARLEN_const_net_0;
wire   [2:0]  MASTER6_ARSIZE_const_net_0;
wire   [1:0]  MASTER6_ARBURST_const_net_0;
wire   [1:0]  MASTER6_ARLOCK_const_net_0;
wire   [3:0]  MASTER6_ARCACHE_const_net_0;
wire   [2:0]  MASTER6_ARPROT_const_net_0;
wire   [3:0]  MASTER6_ARQOS_const_net_0;
wire   [3:0]  MASTER6_ARREGION_const_net_0;
wire   [3:0]  MASTER7_AWID_const_net_0;
wire   [31:0] MASTER7_AWADDR_const_net_0;
wire   [7:0]  MASTER7_AWLEN_const_net_0;
wire   [2:0]  MASTER7_AWSIZE_const_net_0;
wire   [1:0]  MASTER7_AWBURST_const_net_0;
wire   [1:0]  MASTER7_AWLOCK_const_net_0;
wire   [3:0]  MASTER7_AWCACHE_const_net_0;
wire   [2:0]  MASTER7_AWPROT_const_net_0;
wire   [3:0]  MASTER7_AWQOS_const_net_0;
wire   [3:0]  MASTER7_AWREGION_const_net_0;
wire   [63:0] MASTER7_WDATA_const_net_0;
wire   [7:0]  MASTER7_WSTRB_const_net_0;
wire   [3:0]  MASTER7_ARID_const_net_0;
wire   [31:0] MASTER7_ARADDR_const_net_0;
wire   [7:0]  MASTER7_ARLEN_const_net_0;
wire   [2:0]  MASTER7_ARSIZE_const_net_0;
wire   [1:0]  MASTER7_ARBURST_const_net_0;
wire   [1:0]  MASTER7_ARLOCK_const_net_0;
wire   [3:0]  MASTER7_ARCACHE_const_net_0;
wire   [2:0]  MASTER7_ARPROT_const_net_0;
wire   [3:0]  MASTER7_ARQOS_const_net_0;
wire   [3:0]  MASTER7_ARREGION_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                      = 1'b0;
assign MASTER0_AWREGION_const_net_0 = 4'h0;
assign MASTER0_AWQOS_const_net_0    = 4'h0;
assign MASTER0_ARREGION_const_net_0 = 4'h0;
assign MASTER0_ARQOS_const_net_0    = 4'h0;
assign MASTER1_ARREGION_const_net_0 = 4'h0;
assign MASTER1_HADDR_const_net_0    = 32'h00000000;
assign MASTER1_HBURST_const_net_0   = 3'h0;
assign MASTER1_HPROT_const_net_0    = 7'h00;
assign MASTER1_HSIZE_const_net_0    = 3'h0;
assign MASTER1_HTRANS_const_net_0   = 2'h0;
assign MASTER1_HWDATA_const_net_0   = 64'h0000000000000000;
assign MASTER2_HADDR_const_net_0    = 32'h00000000;
assign MASTER2_HBURST_const_net_0   = 3'h0;
assign MASTER2_HPROT_const_net_0    = 7'h00;
assign MASTER2_HSIZE_const_net_0    = 3'h0;
assign MASTER2_HTRANS_const_net_0   = 2'h0;
assign MASTER2_HWDATA_const_net_0   = 64'h0000000000000000;
assign MASTER3_HADDR_const_net_0    = 32'h00000000;
assign MASTER3_HBURST_const_net_0   = 3'h0;
assign MASTER3_HPROT_const_net_0    = 7'h00;
assign MASTER3_HSIZE_const_net_0    = 3'h0;
assign MASTER3_HTRANS_const_net_0   = 2'h0;
assign MASTER3_HWDATA_const_net_0   = 64'h0000000000000000;
assign MASTER4_HADDR_const_net_0    = 32'h00000000;
assign MASTER4_HBURST_const_net_0   = 3'h0;
assign MASTER4_HPROT_const_net_0    = 7'h00;
assign MASTER4_HSIZE_const_net_0    = 3'h0;
assign MASTER4_HTRANS_const_net_0   = 2'h0;
assign MASTER4_HWDATA_const_net_0   = 64'h0000000000000000;
assign MASTER5_HADDR_const_net_0    = 32'h00000000;
assign MASTER5_HBURST_const_net_0   = 3'h0;
assign MASTER5_HPROT_const_net_0    = 7'h00;
assign MASTER5_HSIZE_const_net_0    = 3'h0;
assign MASTER5_HTRANS_const_net_0   = 2'h0;
assign MASTER5_HWDATA_const_net_0   = 64'h0000000000000000;
assign MASTER6_HADDR_const_net_0    = 32'h00000000;
assign MASTER6_HBURST_const_net_0   = 3'h0;
assign MASTER6_HPROT_const_net_0    = 7'h00;
assign MASTER6_HSIZE_const_net_0    = 3'h0;
assign MASTER6_HTRANS_const_net_0   = 2'h0;
assign MASTER6_HWDATA_const_net_0   = 64'h0000000000000000;
assign MASTER7_HADDR_const_net_0    = 32'h00000000;
assign MASTER7_HBURST_const_net_0   = 3'h0;
assign MASTER7_HPROT_const_net_0    = 7'h00;
assign MASTER7_HSIZE_const_net_0    = 3'h0;
assign MASTER7_HTRANS_const_net_0   = 2'h0;
assign MASTER7_HWDATA_const_net_0   = 64'h0000000000000000;
assign SLAVE1_BID_const_net_0       = 5'h00;
assign SLAVE1_BRESP_const_net_0     = 2'h0;
assign SLAVE1_RID_const_net_0       = 5'h00;
assign SLAVE1_RDATA_const_net_0     = 64'h0000000000000000;
assign SLAVE1_RRESP_const_net_0     = 2'h0;
assign SLAVE2_BID_const_net_0       = 5'h00;
assign SLAVE2_BRESP_const_net_0     = 2'h0;
assign SLAVE2_RID_const_net_0       = 5'h00;
assign SLAVE2_RDATA_const_net_0     = 64'h0000000000000000;
assign SLAVE2_RRESP_const_net_0     = 2'h0;
assign SLAVE3_BID_const_net_0       = 5'h00;
assign SLAVE3_BRESP_const_net_0     = 2'h0;
assign SLAVE3_RID_const_net_0       = 5'h00;
assign SLAVE3_RDATA_const_net_0     = 64'h0000000000000000;
assign SLAVE3_RRESP_const_net_0     = 2'h0;
assign SLAVE4_BID_const_net_0       = 5'h00;
assign SLAVE4_BRESP_const_net_0     = 2'h0;
assign SLAVE4_RID_const_net_0       = 5'h00;
assign SLAVE4_RDATA_const_net_0     = 64'h0000000000000000;
assign SLAVE4_RRESP_const_net_0     = 2'h0;
assign SLAVE5_BID_const_net_0       = 5'h00;
assign SLAVE5_BRESP_const_net_0     = 2'h0;
assign SLAVE5_RID_const_net_0       = 5'h00;
assign SLAVE5_RDATA_const_net_0     = 64'h0000000000000000;
assign SLAVE5_RRESP_const_net_0     = 2'h0;
assign SLAVE6_BID_const_net_0       = 5'h00;
assign SLAVE6_BRESP_const_net_0     = 2'h0;
assign SLAVE6_RID_const_net_0       = 5'h00;
assign SLAVE6_RDATA_const_net_0     = 64'h0000000000000000;
assign SLAVE6_RRESP_const_net_0     = 2'h0;
assign SLAVE7_BID_const_net_0       = 5'h00;
assign SLAVE7_BRESP_const_net_0     = 2'h0;
assign SLAVE7_RID_const_net_0       = 5'h00;
assign SLAVE7_RDATA_const_net_0     = 64'h0000000000000000;
assign SLAVE7_RRESP_const_net_0     = 2'h0;
assign SLAVE8_BID_const_net_0       = 5'h00;
assign SLAVE8_BRESP_const_net_0     = 2'h0;
assign SLAVE8_RID_const_net_0       = 5'h00;
assign SLAVE8_RDATA_const_net_0     = 64'h0000000000000000;
assign SLAVE8_RRESP_const_net_0     = 2'h0;
assign SLAVE9_BID_const_net_0       = 5'h00;
assign SLAVE9_BRESP_const_net_0     = 2'h0;
assign SLAVE9_RID_const_net_0       = 5'h00;
assign SLAVE9_RDATA_const_net_0     = 64'h0000000000000000;
assign SLAVE9_RRESP_const_net_0     = 2'h0;
assign SLAVE10_BID_const_net_0      = 5'h00;
assign SLAVE10_BRESP_const_net_0    = 2'h0;
assign SLAVE10_RID_const_net_0      = 5'h00;
assign SLAVE10_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE10_RRESP_const_net_0    = 2'h0;
assign SLAVE11_BID_const_net_0      = 5'h00;
assign SLAVE11_BRESP_const_net_0    = 2'h0;
assign SLAVE11_RID_const_net_0      = 5'h00;
assign SLAVE11_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE11_RRESP_const_net_0    = 2'h0;
assign SLAVE12_BID_const_net_0      = 5'h00;
assign SLAVE12_BRESP_const_net_0    = 2'h0;
assign SLAVE12_RID_const_net_0      = 5'h00;
assign SLAVE12_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE12_RRESP_const_net_0    = 2'h0;
assign SLAVE13_BID_const_net_0      = 5'h00;
assign SLAVE13_BRESP_const_net_0    = 2'h0;
assign SLAVE13_RID_const_net_0      = 5'h00;
assign SLAVE13_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE13_RRESP_const_net_0    = 2'h0;
assign SLAVE14_BID_const_net_0      = 5'h00;
assign SLAVE14_BRESP_const_net_0    = 2'h0;
assign SLAVE14_RID_const_net_0      = 5'h00;
assign SLAVE14_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE14_RRESP_const_net_0    = 2'h0;
assign SLAVE15_BID_const_net_0      = 5'h00;
assign SLAVE15_BRESP_const_net_0    = 2'h0;
assign SLAVE15_RID_const_net_0      = 5'h00;
assign SLAVE15_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE15_RRESP_const_net_0    = 2'h0;
assign SLAVE16_BID_const_net_0      = 5'h00;
assign SLAVE16_BRESP_const_net_0    = 2'h0;
assign SLAVE16_RID_const_net_0      = 5'h00;
assign SLAVE16_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE16_RRESP_const_net_0    = 2'h0;
assign SLAVE17_BID_const_net_0      = 5'h00;
assign SLAVE17_BRESP_const_net_0    = 2'h0;
assign SLAVE17_RID_const_net_0      = 5'h00;
assign SLAVE17_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE17_RRESP_const_net_0    = 2'h0;
assign SLAVE18_BID_const_net_0      = 5'h00;
assign SLAVE18_BRESP_const_net_0    = 2'h0;
assign SLAVE18_RID_const_net_0      = 5'h00;
assign SLAVE18_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE18_RRESP_const_net_0    = 2'h0;
assign SLAVE19_BID_const_net_0      = 5'h00;
assign SLAVE19_BRESP_const_net_0    = 2'h0;
assign SLAVE19_RID_const_net_0      = 5'h00;
assign SLAVE19_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE19_RRESP_const_net_0    = 2'h0;
assign SLAVE20_BID_const_net_0      = 5'h00;
assign SLAVE20_BRESP_const_net_0    = 2'h0;
assign SLAVE20_RID_const_net_0      = 5'h00;
assign SLAVE20_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE20_RRESP_const_net_0    = 2'h0;
assign SLAVE21_BID_const_net_0      = 5'h00;
assign SLAVE21_BRESP_const_net_0    = 2'h0;
assign SLAVE21_RID_const_net_0      = 5'h00;
assign SLAVE21_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE21_RRESP_const_net_0    = 2'h0;
assign SLAVE22_BID_const_net_0      = 5'h00;
assign SLAVE22_BRESP_const_net_0    = 2'h0;
assign SLAVE22_RID_const_net_0      = 5'h00;
assign SLAVE22_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE22_RRESP_const_net_0    = 2'h0;
assign SLAVE23_BID_const_net_0      = 5'h00;
assign SLAVE23_BRESP_const_net_0    = 2'h0;
assign SLAVE23_RID_const_net_0      = 5'h00;
assign SLAVE23_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE23_RRESP_const_net_0    = 2'h0;
assign SLAVE24_BID_const_net_0      = 5'h00;
assign SLAVE24_BRESP_const_net_0    = 2'h0;
assign SLAVE24_RID_const_net_0      = 5'h00;
assign SLAVE24_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE24_RRESP_const_net_0    = 2'h0;
assign SLAVE25_BID_const_net_0      = 5'h00;
assign SLAVE25_BRESP_const_net_0    = 2'h0;
assign SLAVE25_RID_const_net_0      = 5'h00;
assign SLAVE25_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE25_RRESP_const_net_0    = 2'h0;
assign SLAVE26_BID_const_net_0      = 5'h00;
assign SLAVE26_BRESP_const_net_0    = 2'h0;
assign SLAVE26_RID_const_net_0      = 5'h00;
assign SLAVE26_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE26_RRESP_const_net_0    = 2'h0;
assign SLAVE27_BID_const_net_0      = 5'h00;
assign SLAVE27_BRESP_const_net_0    = 2'h0;
assign SLAVE27_RID_const_net_0      = 5'h00;
assign SLAVE27_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE27_RRESP_const_net_0    = 2'h0;
assign SLAVE28_BID_const_net_0      = 5'h00;
assign SLAVE28_BRESP_const_net_0    = 2'h0;
assign SLAVE28_RID_const_net_0      = 5'h00;
assign SLAVE28_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE28_RRESP_const_net_0    = 2'h0;
assign SLAVE29_BID_const_net_0      = 5'h00;
assign SLAVE29_BRESP_const_net_0    = 2'h0;
assign SLAVE29_RID_const_net_0      = 5'h00;
assign SLAVE29_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE29_RRESP_const_net_0    = 2'h0;
assign SLAVE30_BID_const_net_0      = 5'h00;
assign SLAVE30_BRESP_const_net_0    = 2'h0;
assign SLAVE30_RID_const_net_0      = 5'h00;
assign SLAVE30_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE30_RRESP_const_net_0    = 2'h0;
assign SLAVE31_BID_const_net_0      = 5'h00;
assign SLAVE31_BRESP_const_net_0    = 2'h0;
assign SLAVE31_RID_const_net_0      = 5'h00;
assign SLAVE31_RDATA_const_net_0    = 64'h0000000000000000;
assign SLAVE31_RRESP_const_net_0    = 2'h0;
assign MASTER0_AWID_const_net_0     = 4'h0;
assign MASTER0_AWADDR_const_net_0   = 32'h00000000;
assign MASTER0_AWLEN_const_net_0    = 8'h00;
assign MASTER0_AWSIZE_const_net_0   = 3'h0;
assign MASTER0_AWBURST_const_net_0  = 2'h3;
assign MASTER0_AWLOCK_const_net_0   = 2'h0;
assign MASTER0_AWCACHE_const_net_0  = 4'h0;
assign MASTER0_AWPROT_const_net_0   = 3'h0;
assign MASTER0_WDATA_const_net_0    = 32'h00000000;
assign MASTER0_WSTRB_const_net_0    = 4'hF;
assign MASTER0_ARID_const_net_0     = 4'h0;
assign MASTER0_ARADDR_const_net_0   = 32'h00000000;
assign MASTER0_ARLEN_const_net_0    = 8'h00;
assign MASTER0_ARSIZE_const_net_0   = 3'h0;
assign MASTER0_ARBURST_const_net_0  = 2'h3;
assign MASTER0_ARLOCK_const_net_0   = 2'h0;
assign MASTER0_ARCACHE_const_net_0  = 4'h0;
assign MASTER0_ARPROT_const_net_0   = 3'h0;
assign MASTER1_AWID_const_net_0     = 4'h0;
assign MASTER1_AWADDR_const_net_0   = 32'h00000000;
assign MASTER1_AWLEN_const_net_0    = 8'h00;
assign MASTER1_AWSIZE_const_net_0   = 3'h0;
assign MASTER1_AWBURST_const_net_0  = 2'h3;
assign MASTER1_AWLOCK_const_net_0   = 2'h0;
assign MASTER1_AWCACHE_const_net_0  = 4'h0;
assign MASTER1_AWPROT_const_net_0   = 3'h0;
assign MASTER1_AWQOS_const_net_0    = 4'h0;
assign MASTER1_AWREGION_const_net_0 = 4'h0;
assign MASTER1_WDATA_const_net_0    = 64'h0000000000000000;
assign MASTER1_WSTRB_const_net_0    = 8'hFF;
assign MASTER1_ARID_const_net_0     = 4'h0;
assign MASTER1_ARADDR_const_net_0   = 32'h00000000;
assign MASTER1_ARLEN_const_net_0    = 8'h00;
assign MASTER1_ARSIZE_const_net_0   = 3'h0;
assign MASTER1_ARBURST_const_net_0  = 2'h3;
assign MASTER1_ARLOCK_const_net_0   = 2'h0;
assign MASTER1_ARCACHE_const_net_0  = 4'h0;
assign MASTER1_ARPROT_const_net_0   = 3'h0;
assign MASTER1_ARQOS_const_net_0    = 4'h0;
assign MASTER2_AWID_const_net_0     = 4'h0;
assign MASTER2_AWADDR_const_net_0   = 32'h00000000;
assign MASTER2_AWLEN_const_net_0    = 8'h00;
assign MASTER2_AWSIZE_const_net_0   = 3'h0;
assign MASTER2_AWBURST_const_net_0  = 2'h3;
assign MASTER2_AWLOCK_const_net_0   = 2'h0;
assign MASTER2_AWCACHE_const_net_0  = 4'h0;
assign MASTER2_AWPROT_const_net_0   = 3'h0;
assign MASTER2_AWQOS_const_net_0    = 4'h0;
assign MASTER2_AWREGION_const_net_0 = 4'h0;
assign MASTER2_WDATA_const_net_0    = 64'h0000000000000000;
assign MASTER2_WSTRB_const_net_0    = 8'hFF;
assign MASTER2_ARID_const_net_0     = 4'h0;
assign MASTER2_ARADDR_const_net_0   = 32'h00000000;
assign MASTER2_ARLEN_const_net_0    = 8'h00;
assign MASTER2_ARSIZE_const_net_0   = 3'h0;
assign MASTER2_ARBURST_const_net_0  = 2'h3;
assign MASTER2_ARLOCK_const_net_0   = 2'h0;
assign MASTER2_ARCACHE_const_net_0  = 4'h0;
assign MASTER2_ARPROT_const_net_0   = 3'h0;
assign MASTER2_ARQOS_const_net_0    = 4'h0;
assign MASTER2_ARREGION_const_net_0 = 4'h0;
assign MASTER3_AWID_const_net_0     = 4'h0;
assign MASTER3_AWADDR_const_net_0   = 32'h00000000;
assign MASTER3_AWLEN_const_net_0    = 8'h00;
assign MASTER3_AWSIZE_const_net_0   = 3'h0;
assign MASTER3_AWBURST_const_net_0  = 2'h3;
assign MASTER3_AWLOCK_const_net_0   = 2'h0;
assign MASTER3_AWCACHE_const_net_0  = 4'h0;
assign MASTER3_AWPROT_const_net_0   = 3'h0;
assign MASTER3_AWQOS_const_net_0    = 4'h0;
assign MASTER3_AWREGION_const_net_0 = 4'h0;
assign MASTER3_WDATA_const_net_0    = 64'h0000000000000000;
assign MASTER3_WSTRB_const_net_0    = 8'hFF;
assign MASTER3_ARID_const_net_0     = 4'h0;
assign MASTER3_ARADDR_const_net_0   = 32'h00000000;
assign MASTER3_ARLEN_const_net_0    = 8'h00;
assign MASTER3_ARSIZE_const_net_0   = 3'h0;
assign MASTER3_ARBURST_const_net_0  = 2'h3;
assign MASTER3_ARLOCK_const_net_0   = 2'h0;
assign MASTER3_ARCACHE_const_net_0  = 4'h0;
assign MASTER3_ARPROT_const_net_0   = 3'h0;
assign MASTER3_ARQOS_const_net_0    = 4'h0;
assign MASTER3_ARREGION_const_net_0 = 4'h0;
assign MASTER4_AWID_const_net_0     = 4'h0;
assign MASTER4_AWADDR_const_net_0   = 32'h00000000;
assign MASTER4_AWLEN_const_net_0    = 8'h00;
assign MASTER4_AWSIZE_const_net_0   = 3'h0;
assign MASTER4_AWBURST_const_net_0  = 2'h3;
assign MASTER4_AWLOCK_const_net_0   = 2'h0;
assign MASTER4_AWCACHE_const_net_0  = 4'h0;
assign MASTER4_AWPROT_const_net_0   = 3'h0;
assign MASTER4_AWQOS_const_net_0    = 4'h0;
assign MASTER4_AWREGION_const_net_0 = 4'h0;
assign MASTER4_WDATA_const_net_0    = 64'h0000000000000000;
assign MASTER4_WSTRB_const_net_0    = 8'hFF;
assign MASTER4_ARID_const_net_0     = 4'h0;
assign MASTER4_ARADDR_const_net_0   = 32'h00000000;
assign MASTER4_ARLEN_const_net_0    = 8'h00;
assign MASTER4_ARSIZE_const_net_0   = 3'h0;
assign MASTER4_ARBURST_const_net_0  = 2'h3;
assign MASTER4_ARLOCK_const_net_0   = 2'h0;
assign MASTER4_ARCACHE_const_net_0  = 4'h0;
assign MASTER4_ARPROT_const_net_0   = 3'h0;
assign MASTER4_ARQOS_const_net_0    = 4'h0;
assign MASTER4_ARREGION_const_net_0 = 4'h0;
assign MASTER5_AWID_const_net_0     = 4'h0;
assign MASTER5_AWADDR_const_net_0   = 32'h00000000;
assign MASTER5_AWLEN_const_net_0    = 8'h00;
assign MASTER5_AWSIZE_const_net_0   = 3'h0;
assign MASTER5_AWBURST_const_net_0  = 2'h3;
assign MASTER5_AWLOCK_const_net_0   = 2'h0;
assign MASTER5_AWCACHE_const_net_0  = 4'h0;
assign MASTER5_AWPROT_const_net_0   = 3'h0;
assign MASTER5_AWQOS_const_net_0    = 4'h0;
assign MASTER5_AWREGION_const_net_0 = 4'h0;
assign MASTER5_WDATA_const_net_0    = 64'h0000000000000000;
assign MASTER5_WSTRB_const_net_0    = 8'hFF;
assign MASTER5_ARID_const_net_0     = 4'h0;
assign MASTER5_ARADDR_const_net_0   = 32'h00000000;
assign MASTER5_ARLEN_const_net_0    = 8'h00;
assign MASTER5_ARSIZE_const_net_0   = 3'h0;
assign MASTER5_ARBURST_const_net_0  = 2'h3;
assign MASTER5_ARLOCK_const_net_0   = 2'h0;
assign MASTER5_ARCACHE_const_net_0  = 4'h0;
assign MASTER5_ARPROT_const_net_0   = 3'h0;
assign MASTER5_ARQOS_const_net_0    = 4'h0;
assign MASTER5_ARREGION_const_net_0 = 4'h0;
assign MASTER6_AWID_const_net_0     = 4'h0;
assign MASTER6_AWADDR_const_net_0   = 32'h00000000;
assign MASTER6_AWLEN_const_net_0    = 8'h00;
assign MASTER6_AWSIZE_const_net_0   = 3'h0;
assign MASTER6_AWBURST_const_net_0  = 2'h3;
assign MASTER6_AWLOCK_const_net_0   = 2'h0;
assign MASTER6_AWCACHE_const_net_0  = 4'h0;
assign MASTER6_AWPROT_const_net_0   = 3'h0;
assign MASTER6_AWQOS_const_net_0    = 4'h0;
assign MASTER6_AWREGION_const_net_0 = 4'h0;
assign MASTER6_WDATA_const_net_0    = 64'h0000000000000000;
assign MASTER6_WSTRB_const_net_0    = 8'hFF;
assign MASTER6_ARID_const_net_0     = 4'h0;
assign MASTER6_ARADDR_const_net_0   = 32'h00000000;
assign MASTER6_ARLEN_const_net_0    = 8'h00;
assign MASTER6_ARSIZE_const_net_0   = 3'h0;
assign MASTER6_ARBURST_const_net_0  = 2'h3;
assign MASTER6_ARLOCK_const_net_0   = 2'h0;
assign MASTER6_ARCACHE_const_net_0  = 4'h0;
assign MASTER6_ARPROT_const_net_0   = 3'h0;
assign MASTER6_ARQOS_const_net_0    = 4'h0;
assign MASTER6_ARREGION_const_net_0 = 4'h0;
assign MASTER7_AWID_const_net_0     = 4'h0;
assign MASTER7_AWADDR_const_net_0   = 32'h00000000;
assign MASTER7_AWLEN_const_net_0    = 8'h00;
assign MASTER7_AWSIZE_const_net_0   = 3'h0;
assign MASTER7_AWBURST_const_net_0  = 2'h3;
assign MASTER7_AWLOCK_const_net_0   = 2'h0;
assign MASTER7_AWCACHE_const_net_0  = 4'h0;
assign MASTER7_AWPROT_const_net_0   = 3'h0;
assign MASTER7_AWQOS_const_net_0    = 4'h0;
assign MASTER7_AWREGION_const_net_0 = 4'h0;
assign MASTER7_WDATA_const_net_0    = 64'h0000000000000000;
assign MASTER7_WSTRB_const_net_0    = 8'hFF;
assign MASTER7_ARID_const_net_0     = 4'h0;
assign MASTER7_ARADDR_const_net_0   = 32'h00000000;
assign MASTER7_ARLEN_const_net_0    = 8'h00;
assign MASTER7_ARSIZE_const_net_0   = 3'h0;
assign MASTER7_ARBURST_const_net_0  = 2'h3;
assign MASTER7_ARLOCK_const_net_0   = 2'h0;
assign MASTER7_ARCACHE_const_net_0  = 4'h0;
assign MASTER7_ARPROT_const_net_0   = 3'h0;
assign MASTER7_ARQOS_const_net_0    = 4'h0;
assign MASTER7_ARREGION_const_net_0 = 4'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign AXI4mslave0_3_AWID_net_0      = AXI4mslave0_3_AWID;
assign SLAVE0_AWID[4:0]              = AXI4mslave0_3_AWID_net_0;
assign AXI4mslave0_3_AWADDR_net_0    = AXI4mslave0_3_AWADDR;
assign SLAVE0_AWADDR[31:0]           = AXI4mslave0_3_AWADDR_net_0;
assign AXI4mslave0_3_AWLEN_net_0     = AXI4mslave0_3_AWLEN;
assign SLAVE0_AWLEN[7:0]             = AXI4mslave0_3_AWLEN_net_0;
assign AXI4mslave0_3_AWSIZE_net_0    = AXI4mslave0_3_AWSIZE;
assign SLAVE0_AWSIZE[2:0]            = AXI4mslave0_3_AWSIZE_net_0;
assign AXI4mslave0_3_AWBURST_net_0   = AXI4mslave0_3_AWBURST;
assign SLAVE0_AWBURST[1:0]           = AXI4mslave0_3_AWBURST_net_0;
assign AXI4mslave0_3_AWLOCK_net_0    = AXI4mslave0_3_AWLOCK;
assign SLAVE0_AWLOCK[1:0]            = AXI4mslave0_3_AWLOCK_net_0;
assign AXI4mslave0_3_AWCACHE_net_0   = AXI4mslave0_3_AWCACHE;
assign SLAVE0_AWCACHE[3:0]           = AXI4mslave0_3_AWCACHE_net_0;
assign AXI4mslave0_3_AWPROT_net_0    = AXI4mslave0_3_AWPROT;
assign SLAVE0_AWPROT[2:0]            = AXI4mslave0_3_AWPROT_net_0;
assign AXI4mslave0_3_AWQOS_net_0     = AXI4mslave0_3_AWQOS;
assign SLAVE0_AWQOS[3:0]             = AXI4mslave0_3_AWQOS_net_0;
assign AXI4mslave0_3_AWREGION_net_0  = AXI4mslave0_3_AWREGION;
assign SLAVE0_AWREGION[3:0]          = AXI4mslave0_3_AWREGION_net_0;
assign AXI4mslave0_3_AWVALID_net_0   = AXI4mslave0_3_AWVALID;
assign SLAVE0_AWVALID                = AXI4mslave0_3_AWVALID_net_0;
assign AXI4mslave0_3_WDATA_net_0     = AXI4mslave0_3_WDATA;
assign SLAVE0_WDATA[63:0]            = AXI4mslave0_3_WDATA_net_0;
assign AXI4mslave0_3_WSTRB_net_0     = AXI4mslave0_3_WSTRB;
assign SLAVE0_WSTRB[7:0]             = AXI4mslave0_3_WSTRB_net_0;
assign AXI4mslave0_3_WLAST_net_0     = AXI4mslave0_3_WLAST;
assign SLAVE0_WLAST                  = AXI4mslave0_3_WLAST_net_0;
assign AXI4mslave0_3_WVALID_net_0    = AXI4mslave0_3_WVALID;
assign SLAVE0_WVALID                 = AXI4mslave0_3_WVALID_net_0;
assign AXI4mslave0_3_BREADY_net_0    = AXI4mslave0_3_BREADY;
assign SLAVE0_BREADY                 = AXI4mslave0_3_BREADY_net_0;
assign AXI4mslave0_3_ARID_net_0      = AXI4mslave0_3_ARID;
assign SLAVE0_ARID[4:0]              = AXI4mslave0_3_ARID_net_0;
assign AXI4mslave0_3_ARADDR_net_0    = AXI4mslave0_3_ARADDR;
assign SLAVE0_ARADDR[31:0]           = AXI4mslave0_3_ARADDR_net_0;
assign AXI4mslave0_3_ARLEN_net_0     = AXI4mslave0_3_ARLEN;
assign SLAVE0_ARLEN[7:0]             = AXI4mslave0_3_ARLEN_net_0;
assign AXI4mslave0_3_ARSIZE_net_0    = AXI4mslave0_3_ARSIZE;
assign SLAVE0_ARSIZE[2:0]            = AXI4mslave0_3_ARSIZE_net_0;
assign AXI4mslave0_3_ARBURST_net_0   = AXI4mslave0_3_ARBURST;
assign SLAVE0_ARBURST[1:0]           = AXI4mslave0_3_ARBURST_net_0;
assign AXI4mslave0_3_ARLOCK_net_0    = AXI4mslave0_3_ARLOCK;
assign SLAVE0_ARLOCK[1:0]            = AXI4mslave0_3_ARLOCK_net_0;
assign AXI4mslave0_3_ARCACHE_net_0   = AXI4mslave0_3_ARCACHE;
assign SLAVE0_ARCACHE[3:0]           = AXI4mslave0_3_ARCACHE_net_0;
assign AXI4mslave0_3_ARPROT_net_0    = AXI4mslave0_3_ARPROT;
assign SLAVE0_ARPROT[2:0]            = AXI4mslave0_3_ARPROT_net_0;
assign AXI4mslave0_3_ARQOS_net_0     = AXI4mslave0_3_ARQOS;
assign SLAVE0_ARQOS[3:0]             = AXI4mslave0_3_ARQOS_net_0;
assign AXI4mslave0_3_ARREGION_net_0  = AXI4mslave0_3_ARREGION;
assign SLAVE0_ARREGION[3:0]          = AXI4mslave0_3_ARREGION_net_0;
assign AXI4mslave0_3_ARVALID_net_0   = AXI4mslave0_3_ARVALID;
assign SLAVE0_ARVALID                = AXI4mslave0_3_ARVALID_net_0;
assign AXI4mslave0_3_RREADY_net_0    = AXI4mslave0_3_RREADY;
assign SLAVE0_RREADY                 = AXI4mslave0_3_RREADY_net_0;
assign AXI4mslave0_3_AWUSER_net_0[0] = AXI4mslave0_3_AWUSER[0];
assign SLAVE0_AWUSER[0:0]            = AXI4mslave0_3_AWUSER_net_0[0];
assign AXI4mslave0_3_WUSER_net_0[0]  = AXI4mslave0_3_WUSER[0];
assign SLAVE0_WUSER[0:0]             = AXI4mslave0_3_WUSER_net_0[0];
assign AXI4mslave0_3_ARUSER_net_0[0] = AXI4mslave0_3_ARUSER[0];
assign SLAVE0_ARUSER[0:0]            = AXI4mslave0_3_ARUSER_net_0[0];
assign AHBmmaster0_HRDATA_net_0      = AHBmmaster0_HRDATA;
assign MASTER0_HRDATA[31:0]          = AHBmmaster0_HRDATA_net_0;
assign AHBmmaster0_HREADY_net_0      = AHBmmaster0_HREADY;
assign MASTER0_HREADY                = AHBmmaster0_HREADY_net_0;
assign AHBmmaster0_HRESP_net_0       = AHBmmaster0_HRESP;
assign MASTER0_HRESP                 = AHBmmaster0_HRESP_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------COREAXI4INTERCONNECT   -   Actel:DirectCore:COREAXI4INTERCONNECT:2.5.100
COREAXI4INTERCONNECT #( 
        .ADDR_WIDTH                    ( 32 ),
        .AHB_MASTER0_BRESP_CHECK_MODE  ( 0 ),
        .AHB_MASTER1_BRESP_CHECK_MODE  ( 0 ),
        .AHB_MASTER2_BRESP_CHECK_MODE  ( 0 ),
        .AHB_MASTER3_BRESP_CHECK_MODE  ( 0 ),
        .AHB_MASTER4_BRESP_CHECK_MODE  ( 0 ),
        .AHB_MASTER5_BRESP_CHECK_MODE  ( 0 ),
        .AHB_MASTER6_BRESP_CHECK_MODE  ( 0 ),
        .AHB_MASTER7_BRESP_CHECK_MODE  ( 0 ),
        .CROSSBAR_MODE                 ( 1 ),
        .DATA_WIDTH                    ( 64 ),
        .DWC_ADDR_FIFO_DEPTH_CEILING   ( 10 ),
        .FAMILY                        ( 26 ),
        .ID_WIDTH                      ( 4 ),
        .MASTER0_CHAN_RS               ( 1 ),
        .MASTER0_CLOCK_DOMAIN_CROSSING ( 0 ),
        .MASTER0_DATA_WIDTH            ( 32 ),
        .MASTER0_DEF_BURST_LEN         ( 0 ),
        .MASTER0_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .MASTER0_READ_SLAVE0           ( 1 ),
        .MASTER0_READ_SLAVE1           ( 1 ),
        .MASTER0_READ_SLAVE2           ( 1 ),
        .MASTER0_READ_SLAVE3           ( 1 ),
        .MASTER0_READ_SLAVE4           ( 1 ),
        .MASTER0_READ_SLAVE5           ( 1 ),
        .MASTER0_READ_SLAVE6           ( 1 ),
        .MASTER0_READ_SLAVE7           ( 1 ),
        .MASTER0_READ_SLAVE8           ( 1 ),
        .MASTER0_READ_SLAVE9           ( 1 ),
        .MASTER0_READ_SLAVE10          ( 1 ),
        .MASTER0_READ_SLAVE11          ( 1 ),
        .MASTER0_READ_SLAVE12          ( 1 ),
        .MASTER0_READ_SLAVE13          ( 1 ),
        .MASTER0_READ_SLAVE14          ( 1 ),
        .MASTER0_READ_SLAVE15          ( 1 ),
        .MASTER0_READ_SLAVE16          ( 1 ),
        .MASTER0_READ_SLAVE17          ( 1 ),
        .MASTER0_READ_SLAVE18          ( 1 ),
        .MASTER0_READ_SLAVE19          ( 1 ),
        .MASTER0_READ_SLAVE20          ( 1 ),
        .MASTER0_READ_SLAVE21          ( 1 ),
        .MASTER0_READ_SLAVE22          ( 1 ),
        .MASTER0_READ_SLAVE23          ( 1 ),
        .MASTER0_READ_SLAVE24          ( 1 ),
        .MASTER0_READ_SLAVE25          ( 1 ),
        .MASTER0_READ_SLAVE26          ( 1 ),
        .MASTER0_READ_SLAVE27          ( 1 ),
        .MASTER0_READ_SLAVE28          ( 1 ),
        .MASTER0_READ_SLAVE29          ( 1 ),
        .MASTER0_READ_SLAVE30          ( 1 ),
        .MASTER0_READ_SLAVE31          ( 1 ),
        .MASTER0_TYPE                  ( 2 ),
        .MASTER0_WRITE_SLAVE0          ( 1 ),
        .MASTER0_WRITE_SLAVE1          ( 1 ),
        .MASTER0_WRITE_SLAVE2          ( 1 ),
        .MASTER0_WRITE_SLAVE3          ( 1 ),
        .MASTER0_WRITE_SLAVE4          ( 1 ),
        .MASTER0_WRITE_SLAVE5          ( 1 ),
        .MASTER0_WRITE_SLAVE6          ( 1 ),
        .MASTER0_WRITE_SLAVE7          ( 1 ),
        .MASTER0_WRITE_SLAVE8          ( 1 ),
        .MASTER0_WRITE_SLAVE9          ( 1 ),
        .MASTER0_WRITE_SLAVE10         ( 1 ),
        .MASTER0_WRITE_SLAVE11         ( 1 ),
        .MASTER0_WRITE_SLAVE12         ( 1 ),
        .MASTER0_WRITE_SLAVE13         ( 1 ),
        .MASTER0_WRITE_SLAVE14         ( 1 ),
        .MASTER0_WRITE_SLAVE15         ( 1 ),
        .MASTER0_WRITE_SLAVE16         ( 1 ),
        .MASTER0_WRITE_SLAVE17         ( 1 ),
        .MASTER0_WRITE_SLAVE18         ( 1 ),
        .MASTER0_WRITE_SLAVE19         ( 1 ),
        .MASTER0_WRITE_SLAVE20         ( 1 ),
        .MASTER0_WRITE_SLAVE21         ( 1 ),
        .MASTER0_WRITE_SLAVE22         ( 1 ),
        .MASTER0_WRITE_SLAVE23         ( 1 ),
        .MASTER0_WRITE_SLAVE24         ( 1 ),
        .MASTER0_WRITE_SLAVE25         ( 1 ),
        .MASTER0_WRITE_SLAVE26         ( 1 ),
        .MASTER0_WRITE_SLAVE27         ( 1 ),
        .MASTER0_WRITE_SLAVE28         ( 1 ),
        .MASTER0_WRITE_SLAVE29         ( 1 ),
        .MASTER0_WRITE_SLAVE30         ( 1 ),
        .MASTER0_WRITE_SLAVE31         ( 1 ),
        .MASTER1_CHAN_RS               ( 1 ),
        .MASTER1_CLOCK_DOMAIN_CROSSING ( 0 ),
        .MASTER1_DATA_WIDTH            ( 64 ),
        .MASTER1_DEF_BURST_LEN         ( 0 ),
        .MASTER1_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .MASTER1_READ_SLAVE0           ( 1 ),
        .MASTER1_READ_SLAVE1           ( 1 ),
        .MASTER1_READ_SLAVE2           ( 1 ),
        .MASTER1_READ_SLAVE3           ( 1 ),
        .MASTER1_READ_SLAVE4           ( 1 ),
        .MASTER1_READ_SLAVE5           ( 1 ),
        .MASTER1_READ_SLAVE6           ( 1 ),
        .MASTER1_READ_SLAVE7           ( 1 ),
        .MASTER1_READ_SLAVE8           ( 1 ),
        .MASTER1_READ_SLAVE9           ( 1 ),
        .MASTER1_READ_SLAVE10          ( 1 ),
        .MASTER1_READ_SLAVE11          ( 1 ),
        .MASTER1_READ_SLAVE12          ( 1 ),
        .MASTER1_READ_SLAVE13          ( 1 ),
        .MASTER1_READ_SLAVE14          ( 1 ),
        .MASTER1_READ_SLAVE15          ( 1 ),
        .MASTER1_READ_SLAVE16          ( 1 ),
        .MASTER1_READ_SLAVE17          ( 1 ),
        .MASTER1_READ_SLAVE18          ( 1 ),
        .MASTER1_READ_SLAVE19          ( 1 ),
        .MASTER1_READ_SLAVE20          ( 1 ),
        .MASTER1_READ_SLAVE21          ( 1 ),
        .MASTER1_READ_SLAVE22          ( 1 ),
        .MASTER1_READ_SLAVE23          ( 1 ),
        .MASTER1_READ_SLAVE24          ( 1 ),
        .MASTER1_READ_SLAVE25          ( 1 ),
        .MASTER1_READ_SLAVE26          ( 1 ),
        .MASTER1_READ_SLAVE27          ( 1 ),
        .MASTER1_READ_SLAVE28          ( 1 ),
        .MASTER1_READ_SLAVE29          ( 1 ),
        .MASTER1_READ_SLAVE30          ( 1 ),
        .MASTER1_READ_SLAVE31          ( 1 ),
        .MASTER1_TYPE                  ( 0 ),
        .MASTER1_WRITE_SLAVE0          ( 1 ),
        .MASTER1_WRITE_SLAVE1          ( 1 ),
        .MASTER1_WRITE_SLAVE2          ( 1 ),
        .MASTER1_WRITE_SLAVE3          ( 1 ),
        .MASTER1_WRITE_SLAVE4          ( 1 ),
        .MASTER1_WRITE_SLAVE5          ( 1 ),
        .MASTER1_WRITE_SLAVE6          ( 1 ),
        .MASTER1_WRITE_SLAVE7          ( 1 ),
        .MASTER1_WRITE_SLAVE8          ( 1 ),
        .MASTER1_WRITE_SLAVE9          ( 1 ),
        .MASTER1_WRITE_SLAVE10         ( 1 ),
        .MASTER1_WRITE_SLAVE11         ( 1 ),
        .MASTER1_WRITE_SLAVE12         ( 1 ),
        .MASTER1_WRITE_SLAVE13         ( 1 ),
        .MASTER1_WRITE_SLAVE14         ( 1 ),
        .MASTER1_WRITE_SLAVE15         ( 1 ),
        .MASTER1_WRITE_SLAVE16         ( 1 ),
        .MASTER1_WRITE_SLAVE17         ( 1 ),
        .MASTER1_WRITE_SLAVE18         ( 1 ),
        .MASTER1_WRITE_SLAVE19         ( 1 ),
        .MASTER1_WRITE_SLAVE20         ( 1 ),
        .MASTER1_WRITE_SLAVE21         ( 1 ),
        .MASTER1_WRITE_SLAVE22         ( 1 ),
        .MASTER1_WRITE_SLAVE23         ( 1 ),
        .MASTER1_WRITE_SLAVE24         ( 1 ),
        .MASTER1_WRITE_SLAVE25         ( 1 ),
        .MASTER1_WRITE_SLAVE26         ( 1 ),
        .MASTER1_WRITE_SLAVE27         ( 1 ),
        .MASTER1_WRITE_SLAVE28         ( 1 ),
        .MASTER1_WRITE_SLAVE29         ( 1 ),
        .MASTER1_WRITE_SLAVE30         ( 1 ),
        .MASTER1_WRITE_SLAVE31         ( 1 ),
        .MASTER2_CHAN_RS               ( 1 ),
        .MASTER2_CLOCK_DOMAIN_CROSSING ( 0 ),
        .MASTER2_DATA_WIDTH            ( 64 ),
        .MASTER2_DEF_BURST_LEN         ( 0 ),
        .MASTER2_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .MASTER2_READ_SLAVE0           ( 1 ),
        .MASTER2_READ_SLAVE1           ( 1 ),
        .MASTER2_READ_SLAVE2           ( 1 ),
        .MASTER2_READ_SLAVE3           ( 1 ),
        .MASTER2_READ_SLAVE4           ( 1 ),
        .MASTER2_READ_SLAVE5           ( 1 ),
        .MASTER2_READ_SLAVE6           ( 1 ),
        .MASTER2_READ_SLAVE7           ( 1 ),
        .MASTER2_READ_SLAVE8           ( 1 ),
        .MASTER2_READ_SLAVE9           ( 1 ),
        .MASTER2_READ_SLAVE10          ( 1 ),
        .MASTER2_READ_SLAVE11          ( 1 ),
        .MASTER2_READ_SLAVE12          ( 1 ),
        .MASTER2_READ_SLAVE13          ( 1 ),
        .MASTER2_READ_SLAVE14          ( 1 ),
        .MASTER2_READ_SLAVE15          ( 1 ),
        .MASTER2_READ_SLAVE16          ( 1 ),
        .MASTER2_READ_SLAVE17          ( 1 ),
        .MASTER2_READ_SLAVE18          ( 1 ),
        .MASTER2_READ_SLAVE19          ( 1 ),
        .MASTER2_READ_SLAVE20          ( 1 ),
        .MASTER2_READ_SLAVE21          ( 1 ),
        .MASTER2_READ_SLAVE22          ( 1 ),
        .MASTER2_READ_SLAVE23          ( 1 ),
        .MASTER2_READ_SLAVE24          ( 1 ),
        .MASTER2_READ_SLAVE25          ( 1 ),
        .MASTER2_READ_SLAVE26          ( 1 ),
        .MASTER2_READ_SLAVE27          ( 1 ),
        .MASTER2_READ_SLAVE28          ( 1 ),
        .MASTER2_READ_SLAVE29          ( 1 ),
        .MASTER2_READ_SLAVE30          ( 1 ),
        .MASTER2_READ_SLAVE31          ( 1 ),
        .MASTER2_TYPE                  ( 0 ),
        .MASTER2_WRITE_SLAVE0          ( 1 ),
        .MASTER2_WRITE_SLAVE1          ( 1 ),
        .MASTER2_WRITE_SLAVE2          ( 1 ),
        .MASTER2_WRITE_SLAVE3          ( 1 ),
        .MASTER2_WRITE_SLAVE4          ( 1 ),
        .MASTER2_WRITE_SLAVE5          ( 1 ),
        .MASTER2_WRITE_SLAVE6          ( 1 ),
        .MASTER2_WRITE_SLAVE7          ( 1 ),
        .MASTER2_WRITE_SLAVE8          ( 1 ),
        .MASTER2_WRITE_SLAVE9          ( 1 ),
        .MASTER2_WRITE_SLAVE10         ( 1 ),
        .MASTER2_WRITE_SLAVE11         ( 1 ),
        .MASTER2_WRITE_SLAVE12         ( 1 ),
        .MASTER2_WRITE_SLAVE13         ( 1 ),
        .MASTER2_WRITE_SLAVE14         ( 1 ),
        .MASTER2_WRITE_SLAVE15         ( 1 ),
        .MASTER2_WRITE_SLAVE16         ( 1 ),
        .MASTER2_WRITE_SLAVE17         ( 1 ),
        .MASTER2_WRITE_SLAVE18         ( 1 ),
        .MASTER2_WRITE_SLAVE19         ( 1 ),
        .MASTER2_WRITE_SLAVE20         ( 1 ),
        .MASTER2_WRITE_SLAVE21         ( 1 ),
        .MASTER2_WRITE_SLAVE22         ( 1 ),
        .MASTER2_WRITE_SLAVE23         ( 1 ),
        .MASTER2_WRITE_SLAVE24         ( 1 ),
        .MASTER2_WRITE_SLAVE25         ( 1 ),
        .MASTER2_WRITE_SLAVE26         ( 1 ),
        .MASTER2_WRITE_SLAVE27         ( 1 ),
        .MASTER2_WRITE_SLAVE28         ( 1 ),
        .MASTER2_WRITE_SLAVE29         ( 1 ),
        .MASTER2_WRITE_SLAVE30         ( 1 ),
        .MASTER2_WRITE_SLAVE31         ( 1 ),
        .MASTER3_CHAN_RS               ( 1 ),
        .MASTER3_CLOCK_DOMAIN_CROSSING ( 0 ),
        .MASTER3_DATA_WIDTH            ( 64 ),
        .MASTER3_DEF_BURST_LEN         ( 0 ),
        .MASTER3_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .MASTER3_READ_SLAVE0           ( 1 ),
        .MASTER3_READ_SLAVE1           ( 1 ),
        .MASTER3_READ_SLAVE2           ( 1 ),
        .MASTER3_READ_SLAVE3           ( 1 ),
        .MASTER3_READ_SLAVE4           ( 1 ),
        .MASTER3_READ_SLAVE5           ( 1 ),
        .MASTER3_READ_SLAVE6           ( 1 ),
        .MASTER3_READ_SLAVE7           ( 1 ),
        .MASTER3_READ_SLAVE8           ( 1 ),
        .MASTER3_READ_SLAVE9           ( 1 ),
        .MASTER3_READ_SLAVE10          ( 1 ),
        .MASTER3_READ_SLAVE11          ( 1 ),
        .MASTER3_READ_SLAVE12          ( 1 ),
        .MASTER3_READ_SLAVE13          ( 1 ),
        .MASTER3_READ_SLAVE14          ( 1 ),
        .MASTER3_READ_SLAVE15          ( 1 ),
        .MASTER3_READ_SLAVE16          ( 1 ),
        .MASTER3_READ_SLAVE17          ( 1 ),
        .MASTER3_READ_SLAVE18          ( 1 ),
        .MASTER3_READ_SLAVE19          ( 1 ),
        .MASTER3_READ_SLAVE20          ( 1 ),
        .MASTER3_READ_SLAVE21          ( 1 ),
        .MASTER3_READ_SLAVE22          ( 1 ),
        .MASTER3_READ_SLAVE23          ( 1 ),
        .MASTER3_READ_SLAVE24          ( 1 ),
        .MASTER3_READ_SLAVE25          ( 1 ),
        .MASTER3_READ_SLAVE26          ( 1 ),
        .MASTER3_READ_SLAVE27          ( 1 ),
        .MASTER3_READ_SLAVE28          ( 1 ),
        .MASTER3_READ_SLAVE29          ( 1 ),
        .MASTER3_READ_SLAVE30          ( 1 ),
        .MASTER3_READ_SLAVE31          ( 1 ),
        .MASTER3_TYPE                  ( 0 ),
        .MASTER3_WRITE_SLAVE0          ( 1 ),
        .MASTER3_WRITE_SLAVE1          ( 1 ),
        .MASTER3_WRITE_SLAVE2          ( 1 ),
        .MASTER3_WRITE_SLAVE3          ( 1 ),
        .MASTER3_WRITE_SLAVE4          ( 1 ),
        .MASTER3_WRITE_SLAVE5          ( 1 ),
        .MASTER3_WRITE_SLAVE6          ( 1 ),
        .MASTER3_WRITE_SLAVE7          ( 1 ),
        .MASTER3_WRITE_SLAVE8          ( 1 ),
        .MASTER3_WRITE_SLAVE9          ( 1 ),
        .MASTER3_WRITE_SLAVE10         ( 1 ),
        .MASTER3_WRITE_SLAVE11         ( 1 ),
        .MASTER3_WRITE_SLAVE12         ( 1 ),
        .MASTER3_WRITE_SLAVE13         ( 1 ),
        .MASTER3_WRITE_SLAVE14         ( 1 ),
        .MASTER3_WRITE_SLAVE15         ( 1 ),
        .MASTER3_WRITE_SLAVE16         ( 1 ),
        .MASTER3_WRITE_SLAVE17         ( 1 ),
        .MASTER3_WRITE_SLAVE18         ( 1 ),
        .MASTER3_WRITE_SLAVE19         ( 1 ),
        .MASTER3_WRITE_SLAVE20         ( 1 ),
        .MASTER3_WRITE_SLAVE21         ( 1 ),
        .MASTER3_WRITE_SLAVE22         ( 1 ),
        .MASTER3_WRITE_SLAVE23         ( 1 ),
        .MASTER3_WRITE_SLAVE24         ( 1 ),
        .MASTER3_WRITE_SLAVE25         ( 1 ),
        .MASTER3_WRITE_SLAVE26         ( 1 ),
        .MASTER3_WRITE_SLAVE27         ( 1 ),
        .MASTER3_WRITE_SLAVE28         ( 1 ),
        .MASTER3_WRITE_SLAVE29         ( 1 ),
        .MASTER3_WRITE_SLAVE30         ( 1 ),
        .MASTER3_WRITE_SLAVE31         ( 1 ),
        .MASTER4_CHAN_RS               ( 1 ),
        .MASTER4_CLOCK_DOMAIN_CROSSING ( 0 ),
        .MASTER4_DATA_WIDTH            ( 64 ),
        .MASTER4_DEF_BURST_LEN         ( 0 ),
        .MASTER4_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .MASTER4_READ_SLAVE0           ( 1 ),
        .MASTER4_READ_SLAVE1           ( 1 ),
        .MASTER4_READ_SLAVE2           ( 1 ),
        .MASTER4_READ_SLAVE3           ( 1 ),
        .MASTER4_READ_SLAVE4           ( 1 ),
        .MASTER4_READ_SLAVE5           ( 1 ),
        .MASTER4_READ_SLAVE6           ( 1 ),
        .MASTER4_READ_SLAVE7           ( 1 ),
        .MASTER4_READ_SLAVE8           ( 1 ),
        .MASTER4_READ_SLAVE9           ( 1 ),
        .MASTER4_READ_SLAVE10          ( 1 ),
        .MASTER4_READ_SLAVE11          ( 1 ),
        .MASTER4_READ_SLAVE12          ( 1 ),
        .MASTER4_READ_SLAVE13          ( 1 ),
        .MASTER4_READ_SLAVE14          ( 1 ),
        .MASTER4_READ_SLAVE15          ( 1 ),
        .MASTER4_READ_SLAVE16          ( 1 ),
        .MASTER4_READ_SLAVE17          ( 1 ),
        .MASTER4_READ_SLAVE18          ( 1 ),
        .MASTER4_READ_SLAVE19          ( 1 ),
        .MASTER4_READ_SLAVE20          ( 1 ),
        .MASTER4_READ_SLAVE21          ( 1 ),
        .MASTER4_READ_SLAVE22          ( 1 ),
        .MASTER4_READ_SLAVE23          ( 1 ),
        .MASTER4_READ_SLAVE24          ( 1 ),
        .MASTER4_READ_SLAVE25          ( 1 ),
        .MASTER4_READ_SLAVE26          ( 1 ),
        .MASTER4_READ_SLAVE27          ( 1 ),
        .MASTER4_READ_SLAVE28          ( 1 ),
        .MASTER4_READ_SLAVE29          ( 1 ),
        .MASTER4_READ_SLAVE30          ( 1 ),
        .MASTER4_READ_SLAVE31          ( 1 ),
        .MASTER4_TYPE                  ( 0 ),
        .MASTER4_WRITE_SLAVE0          ( 1 ),
        .MASTER4_WRITE_SLAVE1          ( 1 ),
        .MASTER4_WRITE_SLAVE2          ( 1 ),
        .MASTER4_WRITE_SLAVE3          ( 1 ),
        .MASTER4_WRITE_SLAVE4          ( 1 ),
        .MASTER4_WRITE_SLAVE5          ( 1 ),
        .MASTER4_WRITE_SLAVE6          ( 1 ),
        .MASTER4_WRITE_SLAVE7          ( 1 ),
        .MASTER4_WRITE_SLAVE8          ( 1 ),
        .MASTER4_WRITE_SLAVE9          ( 1 ),
        .MASTER4_WRITE_SLAVE10         ( 1 ),
        .MASTER4_WRITE_SLAVE11         ( 1 ),
        .MASTER4_WRITE_SLAVE12         ( 1 ),
        .MASTER4_WRITE_SLAVE13         ( 1 ),
        .MASTER4_WRITE_SLAVE14         ( 1 ),
        .MASTER4_WRITE_SLAVE15         ( 1 ),
        .MASTER4_WRITE_SLAVE16         ( 1 ),
        .MASTER4_WRITE_SLAVE17         ( 1 ),
        .MASTER4_WRITE_SLAVE18         ( 1 ),
        .MASTER4_WRITE_SLAVE19         ( 1 ),
        .MASTER4_WRITE_SLAVE20         ( 1 ),
        .MASTER4_WRITE_SLAVE21         ( 1 ),
        .MASTER4_WRITE_SLAVE22         ( 1 ),
        .MASTER4_WRITE_SLAVE23         ( 1 ),
        .MASTER4_WRITE_SLAVE24         ( 1 ),
        .MASTER4_WRITE_SLAVE25         ( 1 ),
        .MASTER4_WRITE_SLAVE26         ( 1 ),
        .MASTER4_WRITE_SLAVE27         ( 1 ),
        .MASTER4_WRITE_SLAVE28         ( 1 ),
        .MASTER4_WRITE_SLAVE29         ( 1 ),
        .MASTER4_WRITE_SLAVE30         ( 1 ),
        .MASTER4_WRITE_SLAVE31         ( 1 ),
        .MASTER5_CHAN_RS               ( 1 ),
        .MASTER5_CLOCK_DOMAIN_CROSSING ( 0 ),
        .MASTER5_DATA_WIDTH            ( 64 ),
        .MASTER5_DEF_BURST_LEN         ( 0 ),
        .MASTER5_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .MASTER5_READ_SLAVE0           ( 1 ),
        .MASTER5_READ_SLAVE1           ( 1 ),
        .MASTER5_READ_SLAVE2           ( 1 ),
        .MASTER5_READ_SLAVE3           ( 1 ),
        .MASTER5_READ_SLAVE4           ( 1 ),
        .MASTER5_READ_SLAVE5           ( 1 ),
        .MASTER5_READ_SLAVE6           ( 1 ),
        .MASTER5_READ_SLAVE7           ( 1 ),
        .MASTER5_READ_SLAVE8           ( 1 ),
        .MASTER5_READ_SLAVE9           ( 1 ),
        .MASTER5_READ_SLAVE10          ( 1 ),
        .MASTER5_READ_SLAVE11          ( 1 ),
        .MASTER5_READ_SLAVE12          ( 1 ),
        .MASTER5_READ_SLAVE13          ( 1 ),
        .MASTER5_READ_SLAVE14          ( 1 ),
        .MASTER5_READ_SLAVE15          ( 1 ),
        .MASTER5_READ_SLAVE16          ( 1 ),
        .MASTER5_READ_SLAVE17          ( 1 ),
        .MASTER5_READ_SLAVE18          ( 1 ),
        .MASTER5_READ_SLAVE19          ( 1 ),
        .MASTER5_READ_SLAVE20          ( 1 ),
        .MASTER5_READ_SLAVE21          ( 1 ),
        .MASTER5_READ_SLAVE22          ( 1 ),
        .MASTER5_READ_SLAVE23          ( 1 ),
        .MASTER5_READ_SLAVE24          ( 1 ),
        .MASTER5_READ_SLAVE25          ( 1 ),
        .MASTER5_READ_SLAVE26          ( 1 ),
        .MASTER5_READ_SLAVE27          ( 1 ),
        .MASTER5_READ_SLAVE28          ( 1 ),
        .MASTER5_READ_SLAVE29          ( 1 ),
        .MASTER5_READ_SLAVE30          ( 1 ),
        .MASTER5_READ_SLAVE31          ( 1 ),
        .MASTER5_TYPE                  ( 0 ),
        .MASTER5_WRITE_SLAVE0          ( 1 ),
        .MASTER5_WRITE_SLAVE1          ( 1 ),
        .MASTER5_WRITE_SLAVE2          ( 1 ),
        .MASTER5_WRITE_SLAVE3          ( 1 ),
        .MASTER5_WRITE_SLAVE4          ( 1 ),
        .MASTER5_WRITE_SLAVE5          ( 1 ),
        .MASTER5_WRITE_SLAVE6          ( 1 ),
        .MASTER5_WRITE_SLAVE7          ( 1 ),
        .MASTER5_WRITE_SLAVE8          ( 1 ),
        .MASTER5_WRITE_SLAVE9          ( 1 ),
        .MASTER5_WRITE_SLAVE10         ( 1 ),
        .MASTER5_WRITE_SLAVE11         ( 1 ),
        .MASTER5_WRITE_SLAVE12         ( 1 ),
        .MASTER5_WRITE_SLAVE13         ( 1 ),
        .MASTER5_WRITE_SLAVE14         ( 1 ),
        .MASTER5_WRITE_SLAVE15         ( 1 ),
        .MASTER5_WRITE_SLAVE16         ( 1 ),
        .MASTER5_WRITE_SLAVE17         ( 1 ),
        .MASTER5_WRITE_SLAVE18         ( 1 ),
        .MASTER5_WRITE_SLAVE19         ( 1 ),
        .MASTER5_WRITE_SLAVE20         ( 1 ),
        .MASTER5_WRITE_SLAVE21         ( 1 ),
        .MASTER5_WRITE_SLAVE22         ( 1 ),
        .MASTER5_WRITE_SLAVE23         ( 1 ),
        .MASTER5_WRITE_SLAVE24         ( 1 ),
        .MASTER5_WRITE_SLAVE25         ( 1 ),
        .MASTER5_WRITE_SLAVE26         ( 1 ),
        .MASTER5_WRITE_SLAVE27         ( 1 ),
        .MASTER5_WRITE_SLAVE28         ( 1 ),
        .MASTER5_WRITE_SLAVE29         ( 1 ),
        .MASTER5_WRITE_SLAVE30         ( 1 ),
        .MASTER5_WRITE_SLAVE31         ( 1 ),
        .MASTER6_CHAN_RS               ( 1 ),
        .MASTER6_CLOCK_DOMAIN_CROSSING ( 0 ),
        .MASTER6_DATA_WIDTH            ( 64 ),
        .MASTER6_DEF_BURST_LEN         ( 0 ),
        .MASTER6_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .MASTER6_READ_SLAVE0           ( 1 ),
        .MASTER6_READ_SLAVE1           ( 1 ),
        .MASTER6_READ_SLAVE2           ( 1 ),
        .MASTER6_READ_SLAVE3           ( 1 ),
        .MASTER6_READ_SLAVE4           ( 1 ),
        .MASTER6_READ_SLAVE5           ( 1 ),
        .MASTER6_READ_SLAVE6           ( 1 ),
        .MASTER6_READ_SLAVE7           ( 1 ),
        .MASTER6_READ_SLAVE8           ( 1 ),
        .MASTER6_READ_SLAVE9           ( 1 ),
        .MASTER6_READ_SLAVE10          ( 1 ),
        .MASTER6_READ_SLAVE11          ( 1 ),
        .MASTER6_READ_SLAVE12          ( 1 ),
        .MASTER6_READ_SLAVE13          ( 1 ),
        .MASTER6_READ_SLAVE14          ( 1 ),
        .MASTER6_READ_SLAVE15          ( 1 ),
        .MASTER6_READ_SLAVE16          ( 1 ),
        .MASTER6_READ_SLAVE17          ( 1 ),
        .MASTER6_READ_SLAVE18          ( 1 ),
        .MASTER6_READ_SLAVE19          ( 1 ),
        .MASTER6_READ_SLAVE20          ( 1 ),
        .MASTER6_READ_SLAVE21          ( 1 ),
        .MASTER6_READ_SLAVE22          ( 1 ),
        .MASTER6_READ_SLAVE23          ( 1 ),
        .MASTER6_READ_SLAVE24          ( 1 ),
        .MASTER6_READ_SLAVE25          ( 1 ),
        .MASTER6_READ_SLAVE26          ( 1 ),
        .MASTER6_READ_SLAVE27          ( 1 ),
        .MASTER6_READ_SLAVE28          ( 1 ),
        .MASTER6_READ_SLAVE29          ( 1 ),
        .MASTER6_READ_SLAVE30          ( 1 ),
        .MASTER6_READ_SLAVE31          ( 1 ),
        .MASTER6_TYPE                  ( 0 ),
        .MASTER6_WRITE_SLAVE0          ( 1 ),
        .MASTER6_WRITE_SLAVE1          ( 1 ),
        .MASTER6_WRITE_SLAVE2          ( 1 ),
        .MASTER6_WRITE_SLAVE3          ( 1 ),
        .MASTER6_WRITE_SLAVE4          ( 1 ),
        .MASTER6_WRITE_SLAVE5          ( 1 ),
        .MASTER6_WRITE_SLAVE6          ( 1 ),
        .MASTER6_WRITE_SLAVE7          ( 1 ),
        .MASTER6_WRITE_SLAVE8          ( 1 ),
        .MASTER6_WRITE_SLAVE9          ( 1 ),
        .MASTER6_WRITE_SLAVE10         ( 1 ),
        .MASTER6_WRITE_SLAVE11         ( 1 ),
        .MASTER6_WRITE_SLAVE12         ( 1 ),
        .MASTER6_WRITE_SLAVE13         ( 1 ),
        .MASTER6_WRITE_SLAVE14         ( 1 ),
        .MASTER6_WRITE_SLAVE15         ( 1 ),
        .MASTER6_WRITE_SLAVE16         ( 1 ),
        .MASTER6_WRITE_SLAVE17         ( 1 ),
        .MASTER6_WRITE_SLAVE18         ( 1 ),
        .MASTER6_WRITE_SLAVE19         ( 1 ),
        .MASTER6_WRITE_SLAVE20         ( 1 ),
        .MASTER6_WRITE_SLAVE21         ( 1 ),
        .MASTER6_WRITE_SLAVE22         ( 1 ),
        .MASTER6_WRITE_SLAVE23         ( 1 ),
        .MASTER6_WRITE_SLAVE24         ( 1 ),
        .MASTER6_WRITE_SLAVE25         ( 1 ),
        .MASTER6_WRITE_SLAVE26         ( 1 ),
        .MASTER6_WRITE_SLAVE27         ( 1 ),
        .MASTER6_WRITE_SLAVE28         ( 1 ),
        .MASTER6_WRITE_SLAVE29         ( 1 ),
        .MASTER6_WRITE_SLAVE30         ( 1 ),
        .MASTER6_WRITE_SLAVE31         ( 1 ),
        .MASTER7_CHAN_RS               ( 1 ),
        .MASTER7_CLOCK_DOMAIN_CROSSING ( 0 ),
        .MASTER7_DATA_WIDTH            ( 64 ),
        .MASTER7_DEF_BURST_LEN         ( 0 ),
        .MASTER7_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .MASTER7_READ_SLAVE0           ( 1 ),
        .MASTER7_READ_SLAVE1           ( 1 ),
        .MASTER7_READ_SLAVE2           ( 1 ),
        .MASTER7_READ_SLAVE3           ( 1 ),
        .MASTER7_READ_SLAVE4           ( 1 ),
        .MASTER7_READ_SLAVE5           ( 1 ),
        .MASTER7_READ_SLAVE6           ( 1 ),
        .MASTER7_READ_SLAVE7           ( 1 ),
        .MASTER7_READ_SLAVE8           ( 1 ),
        .MASTER7_READ_SLAVE9           ( 1 ),
        .MASTER7_READ_SLAVE10          ( 1 ),
        .MASTER7_READ_SLAVE11          ( 1 ),
        .MASTER7_READ_SLAVE12          ( 1 ),
        .MASTER7_READ_SLAVE13          ( 1 ),
        .MASTER7_READ_SLAVE14          ( 1 ),
        .MASTER7_READ_SLAVE15          ( 1 ),
        .MASTER7_READ_SLAVE16          ( 1 ),
        .MASTER7_READ_SLAVE17          ( 1 ),
        .MASTER7_READ_SLAVE18          ( 1 ),
        .MASTER7_READ_SLAVE19          ( 1 ),
        .MASTER7_READ_SLAVE20          ( 1 ),
        .MASTER7_READ_SLAVE21          ( 1 ),
        .MASTER7_READ_SLAVE22          ( 1 ),
        .MASTER7_READ_SLAVE23          ( 1 ),
        .MASTER7_READ_SLAVE24          ( 1 ),
        .MASTER7_READ_SLAVE25          ( 1 ),
        .MASTER7_READ_SLAVE26          ( 1 ),
        .MASTER7_READ_SLAVE27          ( 1 ),
        .MASTER7_READ_SLAVE28          ( 1 ),
        .MASTER7_READ_SLAVE29          ( 1 ),
        .MASTER7_READ_SLAVE30          ( 1 ),
        .MASTER7_READ_SLAVE31          ( 1 ),
        .MASTER7_TYPE                  ( 0 ),
        .MASTER7_WRITE_SLAVE0          ( 1 ),
        .MASTER7_WRITE_SLAVE1          ( 1 ),
        .MASTER7_WRITE_SLAVE2          ( 1 ),
        .MASTER7_WRITE_SLAVE3          ( 1 ),
        .MASTER7_WRITE_SLAVE4          ( 1 ),
        .MASTER7_WRITE_SLAVE5          ( 1 ),
        .MASTER7_WRITE_SLAVE6          ( 1 ),
        .MASTER7_WRITE_SLAVE7          ( 1 ),
        .MASTER7_WRITE_SLAVE8          ( 1 ),
        .MASTER7_WRITE_SLAVE9          ( 1 ),
        .MASTER7_WRITE_SLAVE10         ( 1 ),
        .MASTER7_WRITE_SLAVE11         ( 1 ),
        .MASTER7_WRITE_SLAVE12         ( 1 ),
        .MASTER7_WRITE_SLAVE13         ( 1 ),
        .MASTER7_WRITE_SLAVE14         ( 1 ),
        .MASTER7_WRITE_SLAVE15         ( 1 ),
        .MASTER7_WRITE_SLAVE16         ( 1 ),
        .MASTER7_WRITE_SLAVE17         ( 1 ),
        .MASTER7_WRITE_SLAVE18         ( 1 ),
        .MASTER7_WRITE_SLAVE19         ( 1 ),
        .MASTER7_WRITE_SLAVE20         ( 1 ),
        .MASTER7_WRITE_SLAVE21         ( 1 ),
        .MASTER7_WRITE_SLAVE22         ( 1 ),
        .MASTER7_WRITE_SLAVE23         ( 1 ),
        .MASTER7_WRITE_SLAVE24         ( 1 ),
        .MASTER7_WRITE_SLAVE25         ( 1 ),
        .MASTER7_WRITE_SLAVE26         ( 1 ),
        .MASTER7_WRITE_SLAVE27         ( 1 ),
        .MASTER7_WRITE_SLAVE28         ( 1 ),
        .MASTER7_WRITE_SLAVE29         ( 1 ),
        .MASTER7_WRITE_SLAVE30         ( 1 ),
        .MASTER7_WRITE_SLAVE31         ( 1 ),
        .NUM_MASTERS                   ( 1 ),
        .NUM_MASTERS_WIDTH             ( 1 ),
        .NUM_SLAVES                    ( 1 ),
        .NUM_THREADS                   ( 1 ),
        .OPEN_TRANS_MAX                ( 2 ),
        .RD_ARB_EN                     ( 0 ),
        .SLAVE0_CHAN_RS                ( 1 ),
        .SLAVE0_CLOCK_DOMAIN_CROSSING  ( 0 ),
        .SLAVE0_DATA_WIDTH             ( 64 ),
        .SLAVE0_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE0_END_ADDR               ( 'h8fffffff ),
        .SLAVE0_START_ADDR             ( 'h80000000 ),
        .SLAVE0_TYPE                   ( 0 ),
        .SLAVE1_CHAN_RS                ( 1 ),
        .SLAVE1_CLOCK_DOMAIN_CROSSING  ( 1 ),
        .SLAVE1_DATA_WIDTH             ( 64 ),
        .SLAVE1_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE1_END_ADDR               ( 'hfffffff ),
        .SLAVE1_START_ADDR             ( 'h8000000 ),
        .SLAVE1_TYPE                   ( 0 ),
        .SLAVE2_CHAN_RS                ( 1 ),
        .SLAVE2_CLOCK_DOMAIN_CROSSING  ( 1 ),
        .SLAVE2_DATA_WIDTH             ( 64 ),
        .SLAVE2_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE2_END_ADDR               ( 'h17ffffff ),
        .SLAVE2_START_ADDR             ( 'h10000000 ),
        .SLAVE2_TYPE                   ( 0 ),
        .SLAVE3_CHAN_RS                ( 1 ),
        .SLAVE3_CLOCK_DOMAIN_CROSSING  ( 1 ),
        .SLAVE3_DATA_WIDTH             ( 64 ),
        .SLAVE3_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE3_END_ADDR               ( 'h1fffffff ),
        .SLAVE3_START_ADDR             ( 'h18000000 ),
        .SLAVE3_TYPE                   ( 0 ),
        .SLAVE4_CHAN_RS                ( 1 ),
        .SLAVE4_CLOCK_DOMAIN_CROSSING  ( 1 ),
        .SLAVE4_DATA_WIDTH             ( 64 ),
        .SLAVE4_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE4_END_ADDR               ( 'h27ffffff ),
        .SLAVE4_START_ADDR             ( 'h20000000 ),
        .SLAVE4_TYPE                   ( 0 ),
        .SLAVE5_CHAN_RS                ( 1 ),
        .SLAVE5_CLOCK_DOMAIN_CROSSING  ( 1 ),
        .SLAVE5_DATA_WIDTH             ( 64 ),
        .SLAVE5_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE5_END_ADDR               ( 'h2fffffff ),
        .SLAVE5_START_ADDR             ( 'h28000000 ),
        .SLAVE5_TYPE                   ( 0 ),
        .SLAVE6_CHAN_RS                ( 1 ),
        .SLAVE6_CLOCK_DOMAIN_CROSSING  ( 1 ),
        .SLAVE6_DATA_WIDTH             ( 64 ),
        .SLAVE6_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE6_END_ADDR               ( 'h37ffffff ),
        .SLAVE6_START_ADDR             ( 'h30000000 ),
        .SLAVE6_TYPE                   ( 0 ),
        .SLAVE7_CHAN_RS                ( 1 ),
        .SLAVE7_CLOCK_DOMAIN_CROSSING  ( 1 ),
        .SLAVE7_DATA_WIDTH             ( 64 ),
        .SLAVE7_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE7_END_ADDR               ( 'h3fffffff ),
        .SLAVE7_START_ADDR             ( 'h38000000 ),
        .SLAVE7_TYPE                   ( 0 ),
        .SLAVE8_CHAN_RS                ( 1 ),
        .SLAVE8_CLOCK_DOMAIN_CROSSING  ( 1 ),
        .SLAVE8_DATA_WIDTH             ( 64 ),
        .SLAVE8_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE8_END_ADDR               ( 'h47ffffff ),
        .SLAVE8_START_ADDR             ( 'h40000000 ),
        .SLAVE8_TYPE                   ( 0 ),
        .SLAVE9_CHAN_RS                ( 1 ),
        .SLAVE9_CLOCK_DOMAIN_CROSSING  ( 1 ),
        .SLAVE9_DATA_WIDTH             ( 64 ),
        .SLAVE9_DWC_DATA_FIFO_DEPTH    ( 16 ),
        .SLAVE9_END_ADDR               ( 'h4fffffff ),
        .SLAVE9_START_ADDR             ( 'h48000000 ),
        .SLAVE9_TYPE                   ( 0 ),
        .SLAVE10_CHAN_RS               ( 1 ),
        .SLAVE10_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE10_DATA_WIDTH            ( 64 ),
        .SLAVE10_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE10_END_ADDR              ( 'h57ffffff ),
        .SLAVE10_START_ADDR            ( 'h50000000 ),
        .SLAVE10_TYPE                  ( 0 ),
        .SLAVE11_CHAN_RS               ( 1 ),
        .SLAVE11_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE11_DATA_WIDTH            ( 64 ),
        .SLAVE11_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE11_END_ADDR              ( 'h5fffffff ),
        .SLAVE11_START_ADDR            ( 'h58000000 ),
        .SLAVE11_TYPE                  ( 0 ),
        .SLAVE12_CHAN_RS               ( 1 ),
        .SLAVE12_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE12_DATA_WIDTH            ( 64 ),
        .SLAVE12_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE12_END_ADDR              ( 'h67ffffff ),
        .SLAVE12_START_ADDR            ( 'h60000000 ),
        .SLAVE12_TYPE                  ( 0 ),
        .SLAVE13_CHAN_RS               ( 1 ),
        .SLAVE13_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE13_DATA_WIDTH            ( 64 ),
        .SLAVE13_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE13_END_ADDR              ( 'h6fffffff ),
        .SLAVE13_START_ADDR            ( 'h68000000 ),
        .SLAVE13_TYPE                  ( 0 ),
        .SLAVE14_CHAN_RS               ( 1 ),
        .SLAVE14_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE14_DATA_WIDTH            ( 64 ),
        .SLAVE14_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE14_END_ADDR              ( 'h77ffffff ),
        .SLAVE14_START_ADDR            ( 'h70000000 ),
        .SLAVE14_TYPE                  ( 0 ),
        .SLAVE15_CHAN_RS               ( 1 ),
        .SLAVE15_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE15_DATA_WIDTH            ( 64 ),
        .SLAVE15_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE15_END_ADDR              ( 'h7fffffff ),
        .SLAVE15_START_ADDR            ( 'h78000000 ),
        .SLAVE15_TYPE                  ( 0 ),
        .SLAVE16_CHAN_RS               ( 1 ),
        .SLAVE16_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE16_DATA_WIDTH            ( 64 ),
        .SLAVE16_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE16_END_ADDR              ( 'h87ffffff ),
        .SLAVE16_START_ADDR            ( 'h80000000 ),
        .SLAVE16_TYPE                  ( 0 ),
        .SLAVE17_CHAN_RS               ( 1 ),
        .SLAVE17_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE17_DATA_WIDTH            ( 64 ),
        .SLAVE17_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE17_END_ADDR              ( 'h8fffffff ),
        .SLAVE17_START_ADDR            ( 'h88000000 ),
        .SLAVE17_TYPE                  ( 0 ),
        .SLAVE18_CHAN_RS               ( 1 ),
        .SLAVE18_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE18_DATA_WIDTH            ( 64 ),
        .SLAVE18_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE18_END_ADDR              ( 'h97ffffff ),
        .SLAVE18_START_ADDR            ( 'h90000000 ),
        .SLAVE18_TYPE                  ( 0 ),
        .SLAVE19_CHAN_RS               ( 1 ),
        .SLAVE19_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE19_DATA_WIDTH            ( 64 ),
        .SLAVE19_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE19_END_ADDR              ( 'h9fffffff ),
        .SLAVE19_START_ADDR            ( 'h98000000 ),
        .SLAVE19_TYPE                  ( 0 ),
        .SLAVE20_CHAN_RS               ( 1 ),
        .SLAVE20_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE20_DATA_WIDTH            ( 64 ),
        .SLAVE20_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE20_END_ADDR              ( 'ha7ffffff ),
        .SLAVE20_START_ADDR            ( 'ha0000000 ),
        .SLAVE20_TYPE                  ( 0 ),
        .SLAVE21_CHAN_RS               ( 1 ),
        .SLAVE21_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE21_DATA_WIDTH            ( 64 ),
        .SLAVE21_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE21_END_ADDR              ( 'hafffffff ),
        .SLAVE21_START_ADDR            ( 'ha8000000 ),
        .SLAVE21_TYPE                  ( 0 ),
        .SLAVE22_CHAN_RS               ( 1 ),
        .SLAVE22_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE22_DATA_WIDTH            ( 64 ),
        .SLAVE22_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE22_END_ADDR              ( 'hb7ffffff ),
        .SLAVE22_START_ADDR            ( 'hb0000000 ),
        .SLAVE22_TYPE                  ( 0 ),
        .SLAVE23_CHAN_RS               ( 1 ),
        .SLAVE23_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE23_DATA_WIDTH            ( 64 ),
        .SLAVE23_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE23_END_ADDR              ( 'hbfffffff ),
        .SLAVE23_START_ADDR            ( 'hb8000000 ),
        .SLAVE23_TYPE                  ( 0 ),
        .SLAVE24_CHAN_RS               ( 1 ),
        .SLAVE24_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE24_DATA_WIDTH            ( 64 ),
        .SLAVE24_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE24_END_ADDR              ( 'hc7ffffff ),
        .SLAVE24_START_ADDR            ( 'hc0000000 ),
        .SLAVE24_TYPE                  ( 0 ),
        .SLAVE25_CHAN_RS               ( 1 ),
        .SLAVE25_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE25_DATA_WIDTH            ( 64 ),
        .SLAVE25_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE25_END_ADDR              ( 'hcfffffff ),
        .SLAVE25_START_ADDR            ( 'hc8000000 ),
        .SLAVE25_TYPE                  ( 0 ),
        .SLAVE26_CHAN_RS               ( 1 ),
        .SLAVE26_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE26_DATA_WIDTH            ( 64 ),
        .SLAVE26_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE26_END_ADDR              ( 'hd7ffffff ),
        .SLAVE26_START_ADDR            ( 'hd0000000 ),
        .SLAVE26_TYPE                  ( 0 ),
        .SLAVE27_CHAN_RS               ( 1 ),
        .SLAVE27_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE27_DATA_WIDTH            ( 64 ),
        .SLAVE27_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE27_END_ADDR              ( 'hdfffffff ),
        .SLAVE27_START_ADDR            ( 'hd8000000 ),
        .SLAVE27_TYPE                  ( 0 ),
        .SLAVE28_CHAN_RS               ( 1 ),
        .SLAVE28_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE28_DATA_WIDTH            ( 64 ),
        .SLAVE28_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE28_END_ADDR              ( 'he7ffffff ),
        .SLAVE28_START_ADDR            ( 'he0000000 ),
        .SLAVE28_TYPE                  ( 0 ),
        .SLAVE29_CHAN_RS               ( 1 ),
        .SLAVE29_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE29_DATA_WIDTH            ( 64 ),
        .SLAVE29_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE29_END_ADDR              ( 'hefffffff ),
        .SLAVE29_START_ADDR            ( 'he8000000 ),
        .SLAVE29_TYPE                  ( 0 ),
        .SLAVE30_CHAN_RS               ( 1 ),
        .SLAVE30_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE30_DATA_WIDTH            ( 64 ),
        .SLAVE30_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE30_END_ADDR              ( 'hf7ffffff ),
        .SLAVE30_START_ADDR            ( 'hf0000000 ),
        .SLAVE30_TYPE                  ( 0 ),
        .SLAVE31_CHAN_RS               ( 1 ),
        .SLAVE31_CLOCK_DOMAIN_CROSSING ( 1 ),
        .SLAVE31_DATA_WIDTH            ( 64 ),
        .SLAVE31_DWC_DATA_FIFO_DEPTH   ( 16 ),
        .SLAVE31_END_ADDR              ( 'hffffffff ),
        .SLAVE31_START_ADDR            ( 'hf8000000 ),
        .SLAVE31_TYPE                  ( 0 ),
        .SLV_AXI4PRT_ADDRDEPTH         ( 4 ),
        .SLV_AXI4PRT_DATADEPTH         ( 4 ),
        .USER_WIDTH                    ( 1 ) )
AXI_INTERCONNECT_0(
        // Inputs
        .ACLK              ( ACLK ),
        .ARESETN           ( ARESETN ),
        .MASTER0_AWVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_AWVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_AWVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_AWVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_AWVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_AWVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_AWVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_AWVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_WLAST     ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_WVALID    ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_WLAST     ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_WVALID    ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_WLAST     ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_WVALID    ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_WLAST     ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_WVALID    ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_WLAST     ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_WVALID    ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_WLAST     ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_WVALID    ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_WLAST     ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_WVALID    ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_WLAST     ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_WVALID    ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_BREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_BREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_BREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_BREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_BREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_BREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_BREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_BREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_ARVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_ARVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_ARVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_ARVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_ARVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_ARVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_ARVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_ARVALID   ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_RREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_RREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_RREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_RREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_RREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_RREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_RREADY    ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_RREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_AWREADY    ( SLAVE0_AWREADY ),
        .SLAVE1_AWREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE2_AWREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE3_AWREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE4_AWREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE5_AWREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE6_AWREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE7_AWREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_WREADY     ( SLAVE0_WREADY ),
        .SLAVE1_WREADY     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE2_WREADY     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE3_WREADY     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE4_WREADY     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE5_WREADY     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE6_WREADY     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE7_WREADY     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_BVALID     ( SLAVE0_BVALID ),
        .SLAVE1_BVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE2_BVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE3_BVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE4_BVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE5_BVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE6_BVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE7_BVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_ARREADY    ( SLAVE0_ARREADY ),
        .SLAVE1_ARREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE2_ARREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE3_ARREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE4_ARREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE5_ARREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE6_ARREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE7_ARREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_RLAST      ( SLAVE0_RLAST ),
        .SLAVE0_RVALID     ( SLAVE0_RVALID ),
        .SLAVE1_RLAST      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE1_RVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE2_RLAST      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE2_RVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE3_RLAST      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE3_RVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE4_RLAST      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE4_RVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE5_RLAST      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE5_RVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE6_RLAST      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE6_RVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE7_RLAST      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE7_RVALID     ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_HMASTLOCK ( MASTER0_HMASTLOCK ),
        .MASTER0_HNONSEC   ( MASTER0_HNONSEC ),
        .MASTER0_HWRITE    ( MASTER0_HWRITE ),
        .MASTER0_HSEL      ( MASTER0_HSEL ),
        .MASTER1_HMASTLOCK ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_HNONSEC   ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_HWRITE    ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_HSEL      ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_HMASTLOCK ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_HNONSEC   ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_HWRITE    ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_HSEL      ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_HMASTLOCK ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_HNONSEC   ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_HWRITE    ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_HSEL      ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_HMASTLOCK ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_HNONSEC   ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_HWRITE    ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_HSEL      ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_HMASTLOCK ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_HNONSEC   ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_HWRITE    ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_HSEL      ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_HMASTLOCK ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_HNONSEC   ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_HWRITE    ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_HSEL      ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_HMASTLOCK ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_HNONSEC   ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_HWRITE    ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_HSEL      ( GND_net ), // tied to 1'b0 from definition
        .M_CLK0            ( GND_net ), // tied to 1'b0 from definition
        .M_CLK1            ( GND_net ), // tied to 1'b0 from definition
        .M_CLK2            ( GND_net ), // tied to 1'b0 from definition
        .M_CLK3            ( GND_net ), // tied to 1'b0 from definition
        .M_CLK4            ( GND_net ), // tied to 1'b0 from definition
        .M_CLK5            ( GND_net ), // tied to 1'b0 from definition
        .M_CLK6            ( GND_net ), // tied to 1'b0 from definition
        .M_CLK7            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK0            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK1            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK2            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK3            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK4            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK5            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK6            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK7            ( GND_net ), // tied to 1'b0 from definition
        .SLAVE8_AWREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE9_AWREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE10_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE11_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE12_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE13_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE14_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE15_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE8_WREADY     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE9_WREADY     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE10_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE11_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE12_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE13_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE14_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE15_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE8_BVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE9_BVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE10_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE11_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE12_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE13_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE14_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE15_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE8_ARREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE9_ARREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE10_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE11_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE12_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE13_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE14_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE15_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE8_RLAST      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE8_RVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE9_RLAST      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE9_RVALID     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE10_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE10_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE11_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE11_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE12_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE12_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE13_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE13_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE14_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE14_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE15_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE15_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE16_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE17_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE18_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE19_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE20_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE21_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE22_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE23_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE16_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE17_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE18_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE19_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE20_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE21_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE22_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE23_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE16_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE17_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE18_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE19_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE20_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE21_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE22_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE23_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE16_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE17_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE18_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE19_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE20_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE21_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE22_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE23_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE16_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE16_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE17_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE17_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE18_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE18_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE19_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE19_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE20_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE20_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE21_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE21_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE22_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE22_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE23_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE23_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE24_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE25_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE26_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE27_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE28_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE29_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE30_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE31_AWREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE24_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE25_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE26_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE27_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE28_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE29_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE30_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE31_WREADY    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE24_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE25_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE26_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE27_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE28_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE29_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE30_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE31_BVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE24_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE25_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE26_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE27_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE28_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE29_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE30_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE31_ARREADY   ( GND_net ), // tied to 1'b0 from definition
        .SLAVE24_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE24_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE25_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE25_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE26_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE26_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE27_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE27_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE28_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE28_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE29_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE29_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE30_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE30_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE31_RLAST     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE31_RVALID    ( GND_net ), // tied to 1'b0 from definition
        .S_CLK8            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK9            ( GND_net ), // tied to 1'b0 from definition
        .S_CLK10           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK11           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK12           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK13           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK14           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK15           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK16           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK17           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK18           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK19           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK20           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK21           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK22           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK23           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK24           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK25           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK26           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK27           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK28           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK29           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK30           ( GND_net ), // tied to 1'b0 from definition
        .S_CLK31           ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_AWID      ( MASTER0_AWID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_AWADDR    ( MASTER0_AWADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER0_AWLEN     ( MASTER0_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER0_AWSIZE    ( MASTER0_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER0_AWBURST   ( MASTER0_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER0_AWLOCK    ( MASTER0_AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER0_AWCACHE   ( MASTER0_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_AWPROT    ( MASTER0_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER0_AWREGION  ( MASTER0_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_AWQOS     ( MASTER0_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_AWUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_AWID      ( MASTER1_AWID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER1_AWADDR    ( MASTER1_AWADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER1_AWLEN     ( MASTER1_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER1_AWSIZE    ( MASTER1_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER1_AWBURST   ( MASTER1_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER1_AWLOCK    ( MASTER1_AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER1_AWCACHE   ( MASTER1_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER1_AWPROT    ( MASTER1_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER1_AWREGION  ( MASTER1_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER1_AWQOS     ( MASTER1_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER1_AWUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_AWID      ( MASTER2_AWID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER2_AWADDR    ( MASTER2_AWADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER2_AWLEN     ( MASTER2_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER2_AWSIZE    ( MASTER2_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER2_AWBURST   ( MASTER2_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER2_AWLOCK    ( MASTER2_AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER2_AWCACHE   ( MASTER2_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER2_AWPROT    ( MASTER2_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER2_AWREGION  ( MASTER2_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER2_AWQOS     ( MASTER2_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER2_AWUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_AWID      ( MASTER3_AWID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER3_AWADDR    ( MASTER3_AWADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER3_AWLEN     ( MASTER3_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER3_AWSIZE    ( MASTER3_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER3_AWBURST   ( MASTER3_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER3_AWLOCK    ( MASTER3_AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER3_AWCACHE   ( MASTER3_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER3_AWPROT    ( MASTER3_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER3_AWREGION  ( MASTER3_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER3_AWQOS     ( MASTER3_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER3_AWUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_AWID      ( MASTER4_AWID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER4_AWADDR    ( MASTER4_AWADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER4_AWLEN     ( MASTER4_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER4_AWSIZE    ( MASTER4_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER4_AWBURST   ( MASTER4_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER4_AWLOCK    ( MASTER4_AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER4_AWCACHE   ( MASTER4_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER4_AWPROT    ( MASTER4_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER4_AWREGION  ( MASTER4_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER4_AWQOS     ( MASTER4_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER4_AWUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_AWID      ( MASTER5_AWID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER5_AWADDR    ( MASTER5_AWADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER5_AWLEN     ( MASTER5_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER5_AWSIZE    ( MASTER5_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER5_AWBURST   ( MASTER5_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER5_AWLOCK    ( MASTER5_AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER5_AWCACHE   ( MASTER5_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER5_AWPROT    ( MASTER5_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER5_AWREGION  ( MASTER5_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER5_AWQOS     ( MASTER5_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER5_AWUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_AWID      ( MASTER6_AWID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER6_AWADDR    ( MASTER6_AWADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER6_AWLEN     ( MASTER6_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER6_AWSIZE    ( MASTER6_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER6_AWBURST   ( MASTER6_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER6_AWLOCK    ( MASTER6_AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER6_AWCACHE   ( MASTER6_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER6_AWPROT    ( MASTER6_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER6_AWREGION  ( MASTER6_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER6_AWQOS     ( MASTER6_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER6_AWUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_AWID      ( MASTER7_AWID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER7_AWADDR    ( MASTER7_AWADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER7_AWLEN     ( MASTER7_AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER7_AWSIZE    ( MASTER7_AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER7_AWBURST   ( MASTER7_AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER7_AWLOCK    ( MASTER7_AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER7_AWCACHE   ( MASTER7_AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER7_AWPROT    ( MASTER7_AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER7_AWREGION  ( MASTER7_AWREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER7_AWQOS     ( MASTER7_AWQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER7_AWUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_WDATA     ( MASTER0_WDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER0_WSTRB     ( MASTER0_WSTRB_const_net_0 ), // tied to 4'hF from definition
        .MASTER0_WUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_WDATA     ( MASTER1_WDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER1_WSTRB     ( MASTER1_WSTRB_const_net_0 ), // tied to 8'hFF from definition
        .MASTER1_WUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_WDATA     ( MASTER2_WDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER2_WSTRB     ( MASTER2_WSTRB_const_net_0 ), // tied to 8'hFF from definition
        .MASTER2_WUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_WDATA     ( MASTER3_WDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER3_WSTRB     ( MASTER3_WSTRB_const_net_0 ), // tied to 8'hFF from definition
        .MASTER3_WUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_WDATA     ( MASTER4_WDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER4_WSTRB     ( MASTER4_WSTRB_const_net_0 ), // tied to 8'hFF from definition
        .MASTER4_WUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_WDATA     ( MASTER5_WDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER5_WSTRB     ( MASTER5_WSTRB_const_net_0 ), // tied to 8'hFF from definition
        .MASTER5_WUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_WDATA     ( MASTER6_WDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER6_WSTRB     ( MASTER6_WSTRB_const_net_0 ), // tied to 8'hFF from definition
        .MASTER6_WUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_WDATA     ( MASTER7_WDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER7_WSTRB     ( MASTER7_WSTRB_const_net_0 ), // tied to 8'hFF from definition
        .MASTER7_WUSER     ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_ARID      ( MASTER0_ARID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_ARADDR    ( MASTER0_ARADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER0_ARLEN     ( MASTER0_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER0_ARSIZE    ( MASTER0_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER0_ARBURST   ( MASTER0_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER0_ARLOCK    ( MASTER0_ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER0_ARCACHE   ( MASTER0_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_ARPROT    ( MASTER0_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER0_ARREGION  ( MASTER0_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_ARQOS     ( MASTER0_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER0_ARUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER1_ARID      ( MASTER1_ARID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER1_ARADDR    ( MASTER1_ARADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER1_ARLEN     ( MASTER1_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER1_ARSIZE    ( MASTER1_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER1_ARBURST   ( MASTER1_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER1_ARLOCK    ( MASTER1_ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER1_ARCACHE   ( MASTER1_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER1_ARPROT    ( MASTER1_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER1_ARREGION  ( MASTER1_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER1_ARQOS     ( MASTER1_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER1_ARUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER2_ARID      ( MASTER2_ARID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER2_ARADDR    ( MASTER2_ARADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER2_ARLEN     ( MASTER2_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER2_ARSIZE    ( MASTER2_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER2_ARBURST   ( MASTER2_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER2_ARLOCK    ( MASTER2_ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER2_ARCACHE   ( MASTER2_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER2_ARPROT    ( MASTER2_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER2_ARREGION  ( MASTER2_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER2_ARQOS     ( MASTER2_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER2_ARUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER3_ARID      ( MASTER3_ARID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER3_ARADDR    ( MASTER3_ARADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER3_ARLEN     ( MASTER3_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER3_ARSIZE    ( MASTER3_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER3_ARBURST   ( MASTER3_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER3_ARLOCK    ( MASTER3_ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER3_ARCACHE   ( MASTER3_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER3_ARPROT    ( MASTER3_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER3_ARREGION  ( MASTER3_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER3_ARQOS     ( MASTER3_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER3_ARUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER4_ARID      ( MASTER4_ARID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER4_ARADDR    ( MASTER4_ARADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER4_ARLEN     ( MASTER4_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER4_ARSIZE    ( MASTER4_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER4_ARBURST   ( MASTER4_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER4_ARLOCK    ( MASTER4_ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER4_ARCACHE   ( MASTER4_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER4_ARPROT    ( MASTER4_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER4_ARREGION  ( MASTER4_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER4_ARQOS     ( MASTER4_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER4_ARUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER5_ARID      ( MASTER5_ARID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER5_ARADDR    ( MASTER5_ARADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER5_ARLEN     ( MASTER5_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER5_ARSIZE    ( MASTER5_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER5_ARBURST   ( MASTER5_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER5_ARLOCK    ( MASTER5_ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER5_ARCACHE   ( MASTER5_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER5_ARPROT    ( MASTER5_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER5_ARREGION  ( MASTER5_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER5_ARQOS     ( MASTER5_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER5_ARUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER6_ARID      ( MASTER6_ARID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER6_ARADDR    ( MASTER6_ARADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER6_ARLEN     ( MASTER6_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER6_ARSIZE    ( MASTER6_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER6_ARBURST   ( MASTER6_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER6_ARLOCK    ( MASTER6_ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER6_ARCACHE   ( MASTER6_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER6_ARPROT    ( MASTER6_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER6_ARREGION  ( MASTER6_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER6_ARQOS     ( MASTER6_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER6_ARUSER    ( GND_net ), // tied to 1'b0 from definition
        .MASTER7_ARID      ( MASTER7_ARID_const_net_0 ), // tied to 4'h0 from definition
        .MASTER7_ARADDR    ( MASTER7_ARADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER7_ARLEN     ( MASTER7_ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .MASTER7_ARSIZE    ( MASTER7_ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER7_ARBURST   ( MASTER7_ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .MASTER7_ARLOCK    ( MASTER7_ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .MASTER7_ARCACHE   ( MASTER7_ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .MASTER7_ARPROT    ( MASTER7_ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .MASTER7_ARREGION  ( MASTER7_ARREGION_const_net_0 ), // tied to 4'h0 from definition
        .MASTER7_ARQOS     ( MASTER7_ARQOS_const_net_0 ), // tied to 4'h0 from definition
        .MASTER7_ARUSER    ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_BID        ( SLAVE0_BID ),
        .SLAVE0_BRESP      ( SLAVE0_BRESP ),
        .SLAVE0_BUSER      ( SLAVE0_BUSER ),
        .SLAVE1_BID        ( SLAVE1_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE1_BRESP      ( SLAVE1_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE1_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE2_BID        ( SLAVE2_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE2_BRESP      ( SLAVE2_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE2_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE3_BID        ( SLAVE3_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE3_BRESP      ( SLAVE3_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE3_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE4_BID        ( SLAVE4_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE4_BRESP      ( SLAVE4_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE4_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE5_BID        ( SLAVE5_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE5_BRESP      ( SLAVE5_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE5_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE6_BID        ( SLAVE6_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE6_BRESP      ( SLAVE6_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE6_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE7_BID        ( SLAVE7_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE7_BRESP      ( SLAVE7_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE7_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE0_RID        ( SLAVE0_RID ),
        .SLAVE0_RDATA      ( SLAVE0_RDATA ),
        .SLAVE0_RRESP      ( SLAVE0_RRESP ),
        .SLAVE0_RUSER      ( SLAVE0_RUSER ),
        .SLAVE1_RID        ( SLAVE1_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE1_RDATA      ( SLAVE1_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE1_RRESP      ( SLAVE1_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE1_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE2_RID        ( SLAVE2_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE2_RDATA      ( SLAVE2_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE2_RRESP      ( SLAVE2_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE2_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE3_RID        ( SLAVE3_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE3_RDATA      ( SLAVE3_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE3_RRESP      ( SLAVE3_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE3_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE4_RID        ( SLAVE4_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE4_RDATA      ( SLAVE4_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE4_RRESP      ( SLAVE4_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE4_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE5_RID        ( SLAVE5_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE5_RDATA      ( SLAVE5_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE5_RRESP      ( SLAVE5_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE5_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE6_RID        ( SLAVE6_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE6_RDATA      ( SLAVE6_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE6_RRESP      ( SLAVE6_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE6_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE7_RID        ( SLAVE7_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE7_RDATA      ( SLAVE7_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE7_RRESP      ( SLAVE7_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE7_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .MASTER0_HADDR     ( MASTER0_HADDR ),
        .MASTER0_HBURST    ( MASTER0_HBURST ),
        .MASTER0_HPROT     ( MASTER0_HPROT ),
        .MASTER0_HSIZE     ( MASTER0_HSIZE ),
        .MASTER0_HTRANS    ( MASTER0_HTRANS ),
        .MASTER0_HWDATA    ( MASTER0_HWDATA ),
        .MASTER1_HADDR     ( MASTER1_HADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER1_HBURST    ( MASTER1_HBURST_const_net_0 ), // tied to 3'h0 from definition
        .MASTER1_HPROT     ( MASTER1_HPROT_const_net_0 ), // tied to 7'h00 from definition
        .MASTER1_HSIZE     ( MASTER1_HSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER1_HTRANS    ( MASTER1_HTRANS_const_net_0 ), // tied to 2'h0 from definition
        .MASTER1_HWDATA    ( MASTER1_HWDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER2_HADDR     ( MASTER2_HADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER2_HBURST    ( MASTER2_HBURST_const_net_0 ), // tied to 3'h0 from definition
        .MASTER2_HPROT     ( MASTER2_HPROT_const_net_0 ), // tied to 7'h00 from definition
        .MASTER2_HSIZE     ( MASTER2_HSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER2_HTRANS    ( MASTER2_HTRANS_const_net_0 ), // tied to 2'h0 from definition
        .MASTER2_HWDATA    ( MASTER2_HWDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER3_HADDR     ( MASTER3_HADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER3_HBURST    ( MASTER3_HBURST_const_net_0 ), // tied to 3'h0 from definition
        .MASTER3_HPROT     ( MASTER3_HPROT_const_net_0 ), // tied to 7'h00 from definition
        .MASTER3_HSIZE     ( MASTER3_HSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER3_HTRANS    ( MASTER3_HTRANS_const_net_0 ), // tied to 2'h0 from definition
        .MASTER3_HWDATA    ( MASTER3_HWDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER4_HADDR     ( MASTER4_HADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER4_HBURST    ( MASTER4_HBURST_const_net_0 ), // tied to 3'h0 from definition
        .MASTER4_HPROT     ( MASTER4_HPROT_const_net_0 ), // tied to 7'h00 from definition
        .MASTER4_HSIZE     ( MASTER4_HSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER4_HTRANS    ( MASTER4_HTRANS_const_net_0 ), // tied to 2'h0 from definition
        .MASTER4_HWDATA    ( MASTER4_HWDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER5_HADDR     ( MASTER5_HADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER5_HBURST    ( MASTER5_HBURST_const_net_0 ), // tied to 3'h0 from definition
        .MASTER5_HPROT     ( MASTER5_HPROT_const_net_0 ), // tied to 7'h00 from definition
        .MASTER5_HSIZE     ( MASTER5_HSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER5_HTRANS    ( MASTER5_HTRANS_const_net_0 ), // tied to 2'h0 from definition
        .MASTER5_HWDATA    ( MASTER5_HWDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER6_HADDR     ( MASTER6_HADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER6_HBURST    ( MASTER6_HBURST_const_net_0 ), // tied to 3'h0 from definition
        .MASTER6_HPROT     ( MASTER6_HPROT_const_net_0 ), // tied to 7'h00 from definition
        .MASTER6_HSIZE     ( MASTER6_HSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER6_HTRANS    ( MASTER6_HTRANS_const_net_0 ), // tied to 2'h0 from definition
        .MASTER6_HWDATA    ( MASTER6_HWDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .MASTER7_HADDR     ( MASTER7_HADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .MASTER7_HBURST    ( MASTER7_HBURST_const_net_0 ), // tied to 3'h0 from definition
        .MASTER7_HPROT     ( MASTER7_HPROT_const_net_0 ), // tied to 7'h00 from definition
        .MASTER7_HSIZE     ( MASTER7_HSIZE_const_net_0 ), // tied to 3'h0 from definition
        .MASTER7_HTRANS    ( MASTER7_HTRANS_const_net_0 ), // tied to 2'h0 from definition
        .MASTER7_HWDATA    ( MASTER7_HWDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE8_BID        ( SLAVE8_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE8_BRESP      ( SLAVE8_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE8_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE9_BID        ( SLAVE9_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE9_BRESP      ( SLAVE9_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE9_BUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE10_BID       ( SLAVE10_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE10_BRESP     ( SLAVE10_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE10_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE11_BID       ( SLAVE11_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE11_BRESP     ( SLAVE11_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE11_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE12_BID       ( SLAVE12_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE12_BRESP     ( SLAVE12_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE12_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE13_BID       ( SLAVE13_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE13_BRESP     ( SLAVE13_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE13_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE14_BID       ( SLAVE14_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE14_BRESP     ( SLAVE14_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE14_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE15_BID       ( SLAVE15_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE15_BRESP     ( SLAVE15_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE15_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE8_RID        ( SLAVE8_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE8_RDATA      ( SLAVE8_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE8_RRESP      ( SLAVE8_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE8_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE9_RID        ( SLAVE9_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE9_RDATA      ( SLAVE9_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE9_RRESP      ( SLAVE9_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE9_RUSER      ( GND_net ), // tied to 1'b0 from definition
        .SLAVE10_RID       ( SLAVE10_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE10_RDATA     ( SLAVE10_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE10_RRESP     ( SLAVE10_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE10_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE11_RID       ( SLAVE11_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE11_RDATA     ( SLAVE11_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE11_RRESP     ( SLAVE11_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE11_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE12_RID       ( SLAVE12_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE12_RDATA     ( SLAVE12_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE12_RRESP     ( SLAVE12_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE12_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE13_RID       ( SLAVE13_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE13_RDATA     ( SLAVE13_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE13_RRESP     ( SLAVE13_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE13_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE14_RID       ( SLAVE14_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE14_RDATA     ( SLAVE14_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE14_RRESP     ( SLAVE14_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE14_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE15_RID       ( SLAVE15_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE15_RDATA     ( SLAVE15_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE15_RRESP     ( SLAVE15_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE15_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE16_BID       ( SLAVE16_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE16_BRESP     ( SLAVE16_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE16_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE17_BID       ( SLAVE17_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE17_BRESP     ( SLAVE17_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE17_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE18_BID       ( SLAVE18_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE18_BRESP     ( SLAVE18_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE18_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE19_BID       ( SLAVE19_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE19_BRESP     ( SLAVE19_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE19_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE20_BID       ( SLAVE20_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE20_BRESP     ( SLAVE20_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE20_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE21_BID       ( SLAVE21_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE21_BRESP     ( SLAVE21_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE21_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE22_BID       ( SLAVE22_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE22_BRESP     ( SLAVE22_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE22_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE23_BID       ( SLAVE23_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE23_BRESP     ( SLAVE23_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE23_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE16_RID       ( SLAVE16_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE16_RDATA     ( SLAVE16_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE16_RRESP     ( SLAVE16_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE16_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE17_RID       ( SLAVE17_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE17_RDATA     ( SLAVE17_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE17_RRESP     ( SLAVE17_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE17_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE18_RID       ( SLAVE18_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE18_RDATA     ( SLAVE18_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE18_RRESP     ( SLAVE18_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE18_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE19_RID       ( SLAVE19_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE19_RDATA     ( SLAVE19_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE19_RRESP     ( SLAVE19_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE19_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE20_RID       ( SLAVE20_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE20_RDATA     ( SLAVE20_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE20_RRESP     ( SLAVE20_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE20_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE21_RID       ( SLAVE21_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE21_RDATA     ( SLAVE21_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE21_RRESP     ( SLAVE21_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE21_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE22_RID       ( SLAVE22_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE22_RDATA     ( SLAVE22_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE22_RRESP     ( SLAVE22_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE22_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE23_RID       ( SLAVE23_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE23_RDATA     ( SLAVE23_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE23_RRESP     ( SLAVE23_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE23_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE24_BID       ( SLAVE24_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE24_BRESP     ( SLAVE24_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE24_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE25_BID       ( SLAVE25_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE25_BRESP     ( SLAVE25_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE25_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE26_BID       ( SLAVE26_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE26_BRESP     ( SLAVE26_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE26_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE27_BID       ( SLAVE27_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE27_BRESP     ( SLAVE27_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE27_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE28_BID       ( SLAVE28_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE28_BRESP     ( SLAVE28_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE28_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE29_BID       ( SLAVE29_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE29_BRESP     ( SLAVE29_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE29_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE30_BID       ( SLAVE30_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE30_BRESP     ( SLAVE30_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE30_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE31_BID       ( SLAVE31_BID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE31_BRESP     ( SLAVE31_BRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE31_BUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE24_RID       ( SLAVE24_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE24_RDATA     ( SLAVE24_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE24_RRESP     ( SLAVE24_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE24_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE25_RID       ( SLAVE25_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE25_RDATA     ( SLAVE25_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE25_RRESP     ( SLAVE25_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE25_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE26_RID       ( SLAVE26_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE26_RDATA     ( SLAVE26_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE26_RRESP     ( SLAVE26_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE26_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE27_RID       ( SLAVE27_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE27_RDATA     ( SLAVE27_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE27_RRESP     ( SLAVE27_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE27_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE28_RID       ( SLAVE28_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE28_RDATA     ( SLAVE28_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE28_RRESP     ( SLAVE28_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE28_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE29_RID       ( SLAVE29_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE29_RDATA     ( SLAVE29_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE29_RRESP     ( SLAVE29_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE29_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE30_RID       ( SLAVE30_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE30_RDATA     ( SLAVE30_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE30_RRESP     ( SLAVE30_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE30_RUSER     ( GND_net ), // tied to 1'b0 from definition
        .SLAVE31_RID       ( SLAVE31_RID_const_net_0 ), // tied to 5'h00 from definition
        .SLAVE31_RDATA     ( SLAVE31_RDATA_const_net_0 ), // tied to 64'h0000000000000000 from definition
        .SLAVE31_RRESP     ( SLAVE31_RRESP_const_net_0 ), // tied to 2'h0 from definition
        .SLAVE31_RUSER     ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .MASTER0_AWREADY   (  ),
        .MASTER1_AWREADY   (  ),
        .MASTER2_AWREADY   (  ),
        .MASTER3_AWREADY   (  ),
        .MASTER4_AWREADY   (  ),
        .MASTER5_AWREADY   (  ),
        .MASTER6_AWREADY   (  ),
        .MASTER7_AWREADY   (  ),
        .MASTER0_WREADY    (  ),
        .MASTER1_WREADY    (  ),
        .MASTER2_WREADY    (  ),
        .MASTER3_WREADY    (  ),
        .MASTER4_WREADY    (  ),
        .MASTER5_WREADY    (  ),
        .MASTER6_WREADY    (  ),
        .MASTER7_WREADY    (  ),
        .MASTER0_BVALID    (  ),
        .MASTER1_BVALID    (  ),
        .MASTER2_BVALID    (  ),
        .MASTER3_BVALID    (  ),
        .MASTER4_BVALID    (  ),
        .MASTER5_BVALID    (  ),
        .MASTER6_BVALID    (  ),
        .MASTER7_BVALID    (  ),
        .MASTER0_ARREADY   (  ),
        .MASTER1_ARREADY   (  ),
        .MASTER2_ARREADY   (  ),
        .MASTER3_ARREADY   (  ),
        .MASTER4_ARREADY   (  ),
        .MASTER5_ARREADY   (  ),
        .MASTER6_ARREADY   (  ),
        .MASTER7_ARREADY   (  ),
        .MASTER0_RLAST     (  ),
        .MASTER0_RVALID    (  ),
        .MASTER1_RLAST     (  ),
        .MASTER1_RVALID    (  ),
        .MASTER2_RLAST     (  ),
        .MASTER2_RVALID    (  ),
        .MASTER3_RLAST     (  ),
        .MASTER3_RVALID    (  ),
        .MASTER4_RLAST     (  ),
        .MASTER4_RVALID    (  ),
        .MASTER5_RLAST     (  ),
        .MASTER5_RVALID    (  ),
        .MASTER6_RLAST     (  ),
        .MASTER6_RVALID    (  ),
        .MASTER7_RLAST     (  ),
        .MASTER7_RVALID    (  ),
        .SLAVE0_AWVALID    ( AXI4mslave0_3_AWVALID ),
        .SLAVE1_AWVALID    (  ),
        .SLAVE2_AWVALID    (  ),
        .SLAVE3_AWVALID    (  ),
        .SLAVE4_AWVALID    (  ),
        .SLAVE5_AWVALID    (  ),
        .SLAVE6_AWVALID    (  ),
        .SLAVE7_AWVALID    (  ),
        .SLAVE0_WLAST      ( AXI4mslave0_3_WLAST ),
        .SLAVE0_WVALID     ( AXI4mslave0_3_WVALID ),
        .SLAVE1_WLAST      (  ),
        .SLAVE1_WVALID     (  ),
        .SLAVE2_WLAST      (  ),
        .SLAVE2_WVALID     (  ),
        .SLAVE3_WLAST      (  ),
        .SLAVE3_WVALID     (  ),
        .SLAVE4_WLAST      (  ),
        .SLAVE4_WVALID     (  ),
        .SLAVE5_WLAST      (  ),
        .SLAVE5_WVALID     (  ),
        .SLAVE6_WLAST      (  ),
        .SLAVE6_WVALID     (  ),
        .SLAVE7_WLAST      (  ),
        .SLAVE7_WVALID     (  ),
        .SLAVE0_BREADY     ( AXI4mslave0_3_BREADY ),
        .SLAVE1_BREADY     (  ),
        .SLAVE2_BREADY     (  ),
        .SLAVE3_BREADY     (  ),
        .SLAVE4_BREADY     (  ),
        .SLAVE5_BREADY     (  ),
        .SLAVE6_BREADY     (  ),
        .SLAVE7_BREADY     (  ),
        .SLAVE0_ARVALID    ( AXI4mslave0_3_ARVALID ),
        .SLAVE1_ARVALID    (  ),
        .SLAVE2_ARVALID    (  ),
        .SLAVE3_ARVALID    (  ),
        .SLAVE4_ARVALID    (  ),
        .SLAVE5_ARVALID    (  ),
        .SLAVE6_ARVALID    (  ),
        .SLAVE7_ARVALID    (  ),
        .SLAVE0_RREADY     ( AXI4mslave0_3_RREADY ),
        .SLAVE1_RREADY     (  ),
        .SLAVE2_RREADY     (  ),
        .SLAVE3_RREADY     (  ),
        .SLAVE4_RREADY     (  ),
        .SLAVE5_RREADY     (  ),
        .SLAVE6_RREADY     (  ),
        .SLAVE7_RREADY     (  ),
        .MASTER0_HREADY    ( AHBmmaster0_HREADY ),
        .MASTER0_HRESP     ( AHBmmaster0_HRESP ),
        .MASTER1_HREADY    (  ),
        .MASTER1_HRESP     (  ),
        .MASTER2_HREADY    (  ),
        .MASTER2_HRESP     (  ),
        .MASTER3_HREADY    (  ),
        .MASTER3_HRESP     (  ),
        .MASTER4_HREADY    (  ),
        .MASTER4_HRESP     (  ),
        .MASTER5_HREADY    (  ),
        .MASTER5_HRESP     (  ),
        .MASTER6_HREADY    (  ),
        .MASTER6_HRESP     (  ),
        .MASTER7_HREADY    (  ),
        .MASTER7_HRESP     (  ),
        .SLAVE8_AWVALID    (  ),
        .SLAVE9_AWVALID    (  ),
        .SLAVE10_AWVALID   (  ),
        .SLAVE11_AWVALID   (  ),
        .SLAVE12_AWVALID   (  ),
        .SLAVE13_AWVALID   (  ),
        .SLAVE14_AWVALID   (  ),
        .SLAVE15_AWVALID   (  ),
        .SLAVE8_WLAST      (  ),
        .SLAVE8_WVALID     (  ),
        .SLAVE9_WLAST      (  ),
        .SLAVE9_WVALID     (  ),
        .SLAVE10_WLAST     (  ),
        .SLAVE10_WVALID    (  ),
        .SLAVE11_WLAST     (  ),
        .SLAVE11_WVALID    (  ),
        .SLAVE12_WLAST     (  ),
        .SLAVE12_WVALID    (  ),
        .SLAVE13_WLAST     (  ),
        .SLAVE13_WVALID    (  ),
        .SLAVE14_WLAST     (  ),
        .SLAVE14_WVALID    (  ),
        .SLAVE15_WLAST     (  ),
        .SLAVE15_WVALID    (  ),
        .SLAVE8_BREADY     (  ),
        .SLAVE9_BREADY     (  ),
        .SLAVE10_BREADY    (  ),
        .SLAVE11_BREADY    (  ),
        .SLAVE12_BREADY    (  ),
        .SLAVE13_BREADY    (  ),
        .SLAVE14_BREADY    (  ),
        .SLAVE15_BREADY    (  ),
        .SLAVE8_ARVALID    (  ),
        .SLAVE9_ARVALID    (  ),
        .SLAVE10_ARVALID   (  ),
        .SLAVE11_ARVALID   (  ),
        .SLAVE12_ARVALID   (  ),
        .SLAVE13_ARVALID   (  ),
        .SLAVE14_ARVALID   (  ),
        .SLAVE15_ARVALID   (  ),
        .SLAVE8_RREADY     (  ),
        .SLAVE9_RREADY     (  ),
        .SLAVE10_RREADY    (  ),
        .SLAVE11_RREADY    (  ),
        .SLAVE12_RREADY    (  ),
        .SLAVE13_RREADY    (  ),
        .SLAVE14_RREADY    (  ),
        .SLAVE15_RREADY    (  ),
        .SLAVE16_AWVALID   (  ),
        .SLAVE17_AWVALID   (  ),
        .SLAVE18_AWVALID   (  ),
        .SLAVE19_AWVALID   (  ),
        .SLAVE20_AWVALID   (  ),
        .SLAVE21_AWVALID   (  ),
        .SLAVE22_AWVALID   (  ),
        .SLAVE23_AWVALID   (  ),
        .SLAVE16_WLAST     (  ),
        .SLAVE16_WVALID    (  ),
        .SLAVE17_WLAST     (  ),
        .SLAVE17_WVALID    (  ),
        .SLAVE18_WLAST     (  ),
        .SLAVE18_WVALID    (  ),
        .SLAVE19_WLAST     (  ),
        .SLAVE19_WVALID    (  ),
        .SLAVE20_WLAST     (  ),
        .SLAVE20_WVALID    (  ),
        .SLAVE21_WLAST     (  ),
        .SLAVE21_WVALID    (  ),
        .SLAVE22_WLAST     (  ),
        .SLAVE22_WVALID    (  ),
        .SLAVE23_WLAST     (  ),
        .SLAVE23_WVALID    (  ),
        .SLAVE16_BREADY    (  ),
        .SLAVE17_BREADY    (  ),
        .SLAVE18_BREADY    (  ),
        .SLAVE19_BREADY    (  ),
        .SLAVE20_BREADY    (  ),
        .SLAVE21_BREADY    (  ),
        .SLAVE22_BREADY    (  ),
        .SLAVE23_BREADY    (  ),
        .SLAVE16_ARVALID   (  ),
        .SLAVE17_ARVALID   (  ),
        .SLAVE18_ARVALID   (  ),
        .SLAVE19_ARVALID   (  ),
        .SLAVE20_ARVALID   (  ),
        .SLAVE21_ARVALID   (  ),
        .SLAVE22_ARVALID   (  ),
        .SLAVE23_ARVALID   (  ),
        .SLAVE16_RREADY    (  ),
        .SLAVE17_RREADY    (  ),
        .SLAVE18_RREADY    (  ),
        .SLAVE19_RREADY    (  ),
        .SLAVE20_RREADY    (  ),
        .SLAVE21_RREADY    (  ),
        .SLAVE22_RREADY    (  ),
        .SLAVE23_RREADY    (  ),
        .SLAVE24_AWVALID   (  ),
        .SLAVE25_AWVALID   (  ),
        .SLAVE26_AWVALID   (  ),
        .SLAVE27_AWVALID   (  ),
        .SLAVE28_AWVALID   (  ),
        .SLAVE29_AWVALID   (  ),
        .SLAVE30_AWVALID   (  ),
        .SLAVE31_AWVALID   (  ),
        .SLAVE24_WLAST     (  ),
        .SLAVE24_WVALID    (  ),
        .SLAVE25_WLAST     (  ),
        .SLAVE25_WVALID    (  ),
        .SLAVE26_WLAST     (  ),
        .SLAVE26_WVALID    (  ),
        .SLAVE27_WLAST     (  ),
        .SLAVE27_WVALID    (  ),
        .SLAVE28_WLAST     (  ),
        .SLAVE28_WVALID    (  ),
        .SLAVE29_WLAST     (  ),
        .SLAVE29_WVALID    (  ),
        .SLAVE30_WLAST     (  ),
        .SLAVE30_WVALID    (  ),
        .SLAVE31_WLAST     (  ),
        .SLAVE31_WVALID    (  ),
        .SLAVE24_BREADY    (  ),
        .SLAVE25_BREADY    (  ),
        .SLAVE26_BREADY    (  ),
        .SLAVE27_BREADY    (  ),
        .SLAVE28_BREADY    (  ),
        .SLAVE29_BREADY    (  ),
        .SLAVE30_BREADY    (  ),
        .SLAVE31_BREADY    (  ),
        .SLAVE24_ARVALID   (  ),
        .SLAVE25_ARVALID   (  ),
        .SLAVE26_ARVALID   (  ),
        .SLAVE27_ARVALID   (  ),
        .SLAVE28_ARVALID   (  ),
        .SLAVE29_ARVALID   (  ),
        .SLAVE30_ARVALID   (  ),
        .SLAVE31_ARVALID   (  ),
        .SLAVE24_RREADY    (  ),
        .SLAVE25_RREADY    (  ),
        .SLAVE26_RREADY    (  ),
        .SLAVE27_RREADY    (  ),
        .SLAVE28_RREADY    (  ),
        .SLAVE29_RREADY    (  ),
        .SLAVE30_RREADY    (  ),
        .SLAVE31_RREADY    (  ),
        .MASTER0_BID       (  ),
        .MASTER0_BRESP     (  ),
        .MASTER0_BUSER     (  ),
        .MASTER1_BID       (  ),
        .MASTER1_BRESP     (  ),
        .MASTER1_BUSER     (  ),
        .MASTER2_BID       (  ),
        .MASTER2_BRESP     (  ),
        .MASTER2_BUSER     (  ),
        .MASTER3_BID       (  ),
        .MASTER3_BRESP     (  ),
        .MASTER3_BUSER     (  ),
        .MASTER4_BID       (  ),
        .MASTER4_BRESP     (  ),
        .MASTER4_BUSER     (  ),
        .MASTER5_BID       (  ),
        .MASTER5_BRESP     (  ),
        .MASTER5_BUSER     (  ),
        .MASTER6_BID       (  ),
        .MASTER6_BRESP     (  ),
        .MASTER6_BUSER     (  ),
        .MASTER7_BID       (  ),
        .MASTER7_BRESP     (  ),
        .MASTER7_BUSER     (  ),
        .MASTER0_RID       (  ),
        .MASTER0_RDATA     (  ),
        .MASTER0_RRESP     (  ),
        .MASTER0_RUSER     (  ),
        .MASTER1_RID       (  ),
        .MASTER1_RDATA     (  ),
        .MASTER1_RRESP     (  ),
        .MASTER1_RUSER     (  ),
        .MASTER2_RID       (  ),
        .MASTER2_RDATA     (  ),
        .MASTER2_RRESP     (  ),
        .MASTER2_RUSER     (  ),
        .MASTER3_RID       (  ),
        .MASTER3_RDATA     (  ),
        .MASTER3_RRESP     (  ),
        .MASTER3_RUSER     (  ),
        .MASTER4_RID       (  ),
        .MASTER4_RDATA     (  ),
        .MASTER4_RRESP     (  ),
        .MASTER4_RUSER     (  ),
        .MASTER5_RID       (  ),
        .MASTER5_RDATA     (  ),
        .MASTER5_RRESP     (  ),
        .MASTER5_RUSER     (  ),
        .MASTER6_RID       (  ),
        .MASTER6_RDATA     (  ),
        .MASTER6_RRESP     (  ),
        .MASTER6_RUSER     (  ),
        .MASTER7_RID       (  ),
        .MASTER7_RDATA     (  ),
        .MASTER7_RRESP     (  ),
        .MASTER7_RUSER     (  ),
        .SLAVE0_AWID       ( AXI4mslave0_3_AWID ),
        .SLAVE0_AWADDR     ( AXI4mslave0_3_AWADDR ),
        .SLAVE0_AWLEN      ( AXI4mslave0_3_AWLEN ),
        .SLAVE0_AWSIZE     ( AXI4mslave0_3_AWSIZE ),
        .SLAVE0_AWBURST    ( AXI4mslave0_3_AWBURST ),
        .SLAVE0_AWLOCK     ( AXI4mslave0_3_AWLOCK ),
        .SLAVE0_AWCACHE    ( AXI4mslave0_3_AWCACHE ),
        .SLAVE0_AWPROT     ( AXI4mslave0_3_AWPROT ),
        .SLAVE0_AWREGION   ( AXI4mslave0_3_AWREGION ),
        .SLAVE0_AWQOS      ( AXI4mslave0_3_AWQOS ),
        .SLAVE0_AWUSER     ( AXI4mslave0_3_AWUSER ),
        .SLAVE1_AWID       (  ),
        .SLAVE1_AWADDR     (  ),
        .SLAVE1_AWLEN      (  ),
        .SLAVE1_AWSIZE     (  ),
        .SLAVE1_AWBURST    (  ),
        .SLAVE1_AWLOCK     (  ),
        .SLAVE1_AWCACHE    (  ),
        .SLAVE1_AWPROT     (  ),
        .SLAVE1_AWREGION   (  ),
        .SLAVE1_AWQOS      (  ),
        .SLAVE1_AWUSER     (  ),
        .SLAVE2_AWID       (  ),
        .SLAVE2_AWADDR     (  ),
        .SLAVE2_AWLEN      (  ),
        .SLAVE2_AWSIZE     (  ),
        .SLAVE2_AWBURST    (  ),
        .SLAVE2_AWLOCK     (  ),
        .SLAVE2_AWCACHE    (  ),
        .SLAVE2_AWPROT     (  ),
        .SLAVE2_AWREGION   (  ),
        .SLAVE2_AWQOS      (  ),
        .SLAVE2_AWUSER     (  ),
        .SLAVE3_AWID       (  ),
        .SLAVE3_AWADDR     (  ),
        .SLAVE3_AWLEN      (  ),
        .SLAVE3_AWSIZE     (  ),
        .SLAVE3_AWBURST    (  ),
        .SLAVE3_AWLOCK     (  ),
        .SLAVE3_AWCACHE    (  ),
        .SLAVE3_AWPROT     (  ),
        .SLAVE3_AWREGION   (  ),
        .SLAVE3_AWQOS      (  ),
        .SLAVE3_AWUSER     (  ),
        .SLAVE4_AWID       (  ),
        .SLAVE4_AWADDR     (  ),
        .SLAVE4_AWLEN      (  ),
        .SLAVE4_AWSIZE     (  ),
        .SLAVE4_AWBURST    (  ),
        .SLAVE4_AWLOCK     (  ),
        .SLAVE4_AWCACHE    (  ),
        .SLAVE4_AWPROT     (  ),
        .SLAVE4_AWREGION   (  ),
        .SLAVE4_AWQOS      (  ),
        .SLAVE4_AWUSER     (  ),
        .SLAVE5_AWID       (  ),
        .SLAVE5_AWADDR     (  ),
        .SLAVE5_AWLEN      (  ),
        .SLAVE5_AWSIZE     (  ),
        .SLAVE5_AWBURST    (  ),
        .SLAVE5_AWLOCK     (  ),
        .SLAVE5_AWCACHE    (  ),
        .SLAVE5_AWPROT     (  ),
        .SLAVE5_AWREGION   (  ),
        .SLAVE5_AWQOS      (  ),
        .SLAVE5_AWUSER     (  ),
        .SLAVE6_AWID       (  ),
        .SLAVE6_AWADDR     (  ),
        .SLAVE6_AWLEN      (  ),
        .SLAVE6_AWSIZE     (  ),
        .SLAVE6_AWBURST    (  ),
        .SLAVE6_AWLOCK     (  ),
        .SLAVE6_AWCACHE    (  ),
        .SLAVE6_AWPROT     (  ),
        .SLAVE6_AWREGION   (  ),
        .SLAVE6_AWQOS      (  ),
        .SLAVE6_AWUSER     (  ),
        .SLAVE7_AWID       (  ),
        .SLAVE7_AWADDR     (  ),
        .SLAVE7_AWLEN      (  ),
        .SLAVE7_AWSIZE     (  ),
        .SLAVE7_AWBURST    (  ),
        .SLAVE7_AWLOCK     (  ),
        .SLAVE7_AWCACHE    (  ),
        .SLAVE7_AWPROT     (  ),
        .SLAVE7_AWREGION   (  ),
        .SLAVE7_AWQOS      (  ),
        .SLAVE7_AWUSER     (  ),
        .SLAVE0_WID        (  ),
        .SLAVE0_WDATA      ( AXI4mslave0_3_WDATA ),
        .SLAVE0_WSTRB      ( AXI4mslave0_3_WSTRB ),
        .SLAVE0_WUSER      ( AXI4mslave0_3_WUSER ),
        .SLAVE1_WID        (  ),
        .SLAVE1_WDATA      (  ),
        .SLAVE1_WSTRB      (  ),
        .SLAVE1_WUSER      (  ),
        .SLAVE2_WID        (  ),
        .SLAVE2_WDATA      (  ),
        .SLAVE2_WSTRB      (  ),
        .SLAVE2_WUSER      (  ),
        .SLAVE3_WID        (  ),
        .SLAVE3_WDATA      (  ),
        .SLAVE3_WSTRB      (  ),
        .SLAVE3_WUSER      (  ),
        .SLAVE4_WID        (  ),
        .SLAVE4_WDATA      (  ),
        .SLAVE4_WSTRB      (  ),
        .SLAVE4_WUSER      (  ),
        .SLAVE5_WID        (  ),
        .SLAVE5_WDATA      (  ),
        .SLAVE5_WSTRB      (  ),
        .SLAVE5_WUSER      (  ),
        .SLAVE6_WID        (  ),
        .SLAVE6_WDATA      (  ),
        .SLAVE6_WSTRB      (  ),
        .SLAVE6_WUSER      (  ),
        .SLAVE7_WID        (  ),
        .SLAVE7_WDATA      (  ),
        .SLAVE7_WSTRB      (  ),
        .SLAVE7_WUSER      (  ),
        .SLAVE0_ARID       ( AXI4mslave0_3_ARID ),
        .SLAVE0_ARADDR     ( AXI4mslave0_3_ARADDR ),
        .SLAVE0_ARLEN      ( AXI4mslave0_3_ARLEN ),
        .SLAVE0_ARSIZE     ( AXI4mslave0_3_ARSIZE ),
        .SLAVE0_ARBURST    ( AXI4mslave0_3_ARBURST ),
        .SLAVE0_ARLOCK     ( AXI4mslave0_3_ARLOCK ),
        .SLAVE0_ARCACHE    ( AXI4mslave0_3_ARCACHE ),
        .SLAVE0_ARPROT     ( AXI4mslave0_3_ARPROT ),
        .SLAVE0_ARREGION   ( AXI4mslave0_3_ARREGION ),
        .SLAVE0_ARQOS      ( AXI4mslave0_3_ARQOS ),
        .SLAVE0_ARUSER     ( AXI4mslave0_3_ARUSER ),
        .SLAVE1_ARID       (  ),
        .SLAVE1_ARADDR     (  ),
        .SLAVE1_ARLEN      (  ),
        .SLAVE1_ARSIZE     (  ),
        .SLAVE1_ARBURST    (  ),
        .SLAVE1_ARLOCK     (  ),
        .SLAVE1_ARCACHE    (  ),
        .SLAVE1_ARPROT     (  ),
        .SLAVE1_ARREGION   (  ),
        .SLAVE1_ARQOS      (  ),
        .SLAVE1_ARUSER     (  ),
        .SLAVE2_ARID       (  ),
        .SLAVE2_ARADDR     (  ),
        .SLAVE2_ARLEN      (  ),
        .SLAVE2_ARSIZE     (  ),
        .SLAVE2_ARBURST    (  ),
        .SLAVE2_ARLOCK     (  ),
        .SLAVE2_ARCACHE    (  ),
        .SLAVE2_ARPROT     (  ),
        .SLAVE2_ARREGION   (  ),
        .SLAVE2_ARQOS      (  ),
        .SLAVE2_ARUSER     (  ),
        .SLAVE3_ARID       (  ),
        .SLAVE3_ARADDR     (  ),
        .SLAVE3_ARLEN      (  ),
        .SLAVE3_ARSIZE     (  ),
        .SLAVE3_ARBURST    (  ),
        .SLAVE3_ARLOCK     (  ),
        .SLAVE3_ARCACHE    (  ),
        .SLAVE3_ARPROT     (  ),
        .SLAVE3_ARREGION   (  ),
        .SLAVE3_ARQOS      (  ),
        .SLAVE3_ARUSER     (  ),
        .SLAVE4_ARID       (  ),
        .SLAVE4_ARADDR     (  ),
        .SLAVE4_ARLEN      (  ),
        .SLAVE4_ARSIZE     (  ),
        .SLAVE4_ARBURST    (  ),
        .SLAVE4_ARLOCK     (  ),
        .SLAVE4_ARCACHE    (  ),
        .SLAVE4_ARPROT     (  ),
        .SLAVE4_ARREGION   (  ),
        .SLAVE4_ARQOS      (  ),
        .SLAVE4_ARUSER     (  ),
        .SLAVE5_ARID       (  ),
        .SLAVE5_ARADDR     (  ),
        .SLAVE5_ARLEN      (  ),
        .SLAVE5_ARSIZE     (  ),
        .SLAVE5_ARBURST    (  ),
        .SLAVE5_ARLOCK     (  ),
        .SLAVE5_ARCACHE    (  ),
        .SLAVE5_ARPROT     (  ),
        .SLAVE5_ARREGION   (  ),
        .SLAVE5_ARQOS      (  ),
        .SLAVE5_ARUSER     (  ),
        .SLAVE6_ARID       (  ),
        .SLAVE6_ARADDR     (  ),
        .SLAVE6_ARLEN      (  ),
        .SLAVE6_ARSIZE     (  ),
        .SLAVE6_ARBURST    (  ),
        .SLAVE6_ARLOCK     (  ),
        .SLAVE6_ARCACHE    (  ),
        .SLAVE6_ARPROT     (  ),
        .SLAVE6_ARREGION   (  ),
        .SLAVE6_ARQOS      (  ),
        .SLAVE6_ARUSER     (  ),
        .SLAVE7_ARID       (  ),
        .SLAVE7_ARADDR     (  ),
        .SLAVE7_ARLEN      (  ),
        .SLAVE7_ARSIZE     (  ),
        .SLAVE7_ARBURST    (  ),
        .SLAVE7_ARLOCK     (  ),
        .SLAVE7_ARCACHE    (  ),
        .SLAVE7_ARPROT     (  ),
        .SLAVE7_ARREGION   (  ),
        .SLAVE7_ARQOS      (  ),
        .SLAVE7_ARUSER     (  ),
        .MASTER0_HRDATA    ( AHBmmaster0_HRDATA ),
        .MASTER1_HRDATA    (  ),
        .MASTER2_HRDATA    (  ),
        .MASTER3_HRDATA    (  ),
        .MASTER4_HRDATA    (  ),
        .MASTER5_HRDATA    (  ),
        .MASTER6_HRDATA    (  ),
        .MASTER7_HRDATA    (  ),
        .SLAVE8_AWID       (  ),
        .SLAVE8_AWADDR     (  ),
        .SLAVE8_AWLEN      (  ),
        .SLAVE8_AWSIZE     (  ),
        .SLAVE8_AWBURST    (  ),
        .SLAVE8_AWLOCK     (  ),
        .SLAVE8_AWCACHE    (  ),
        .SLAVE8_AWPROT     (  ),
        .SLAVE8_AWREGION   (  ),
        .SLAVE8_AWQOS      (  ),
        .SLAVE8_AWUSER     (  ),
        .SLAVE9_AWID       (  ),
        .SLAVE9_AWADDR     (  ),
        .SLAVE9_AWLEN      (  ),
        .SLAVE9_AWSIZE     (  ),
        .SLAVE9_AWBURST    (  ),
        .SLAVE9_AWLOCK     (  ),
        .SLAVE9_AWCACHE    (  ),
        .SLAVE9_AWPROT     (  ),
        .SLAVE9_AWREGION   (  ),
        .SLAVE9_AWQOS      (  ),
        .SLAVE9_AWUSER     (  ),
        .SLAVE10_AWID      (  ),
        .SLAVE10_AWADDR    (  ),
        .SLAVE10_AWLEN     (  ),
        .SLAVE10_AWSIZE    (  ),
        .SLAVE10_AWBURST   (  ),
        .SLAVE10_AWLOCK    (  ),
        .SLAVE10_AWCACHE   (  ),
        .SLAVE10_AWPROT    (  ),
        .SLAVE10_AWREGION  (  ),
        .SLAVE10_AWQOS     (  ),
        .SLAVE10_AWUSER    (  ),
        .SLAVE11_AWID      (  ),
        .SLAVE11_AWADDR    (  ),
        .SLAVE11_AWLEN     (  ),
        .SLAVE11_AWSIZE    (  ),
        .SLAVE11_AWBURST   (  ),
        .SLAVE11_AWLOCK    (  ),
        .SLAVE11_AWCACHE   (  ),
        .SLAVE11_AWPROT    (  ),
        .SLAVE11_AWREGION  (  ),
        .SLAVE11_AWQOS     (  ),
        .SLAVE11_AWUSER    (  ),
        .SLAVE12_AWID      (  ),
        .SLAVE12_AWADDR    (  ),
        .SLAVE12_AWLEN     (  ),
        .SLAVE12_AWSIZE    (  ),
        .SLAVE12_AWBURST   (  ),
        .SLAVE12_AWLOCK    (  ),
        .SLAVE12_AWCACHE   (  ),
        .SLAVE12_AWPROT    (  ),
        .SLAVE12_AWREGION  (  ),
        .SLAVE12_AWQOS     (  ),
        .SLAVE12_AWUSER    (  ),
        .SLAVE13_AWID      (  ),
        .SLAVE13_AWADDR    (  ),
        .SLAVE13_AWLEN     (  ),
        .SLAVE13_AWSIZE    (  ),
        .SLAVE13_AWBURST   (  ),
        .SLAVE13_AWLOCK    (  ),
        .SLAVE13_AWCACHE   (  ),
        .SLAVE13_AWPROT    (  ),
        .SLAVE13_AWREGION  (  ),
        .SLAVE13_AWQOS     (  ),
        .SLAVE13_AWUSER    (  ),
        .SLAVE14_AWID      (  ),
        .SLAVE14_AWADDR    (  ),
        .SLAVE14_AWLEN     (  ),
        .SLAVE14_AWSIZE    (  ),
        .SLAVE14_AWBURST   (  ),
        .SLAVE14_AWLOCK    (  ),
        .SLAVE14_AWCACHE   (  ),
        .SLAVE14_AWPROT    (  ),
        .SLAVE14_AWREGION  (  ),
        .SLAVE14_AWQOS     (  ),
        .SLAVE14_AWUSER    (  ),
        .SLAVE15_AWID      (  ),
        .SLAVE15_AWADDR    (  ),
        .SLAVE15_AWLEN     (  ),
        .SLAVE15_AWSIZE    (  ),
        .SLAVE15_AWBURST   (  ),
        .SLAVE15_AWLOCK    (  ),
        .SLAVE15_AWCACHE   (  ),
        .SLAVE15_AWPROT    (  ),
        .SLAVE15_AWREGION  (  ),
        .SLAVE15_AWQOS     (  ),
        .SLAVE15_AWUSER    (  ),
        .SLAVE8_WID        (  ),
        .SLAVE8_WDATA      (  ),
        .SLAVE8_WSTRB      (  ),
        .SLAVE8_WUSER      (  ),
        .SLAVE9_WID        (  ),
        .SLAVE9_WDATA      (  ),
        .SLAVE9_WSTRB      (  ),
        .SLAVE9_WUSER      (  ),
        .SLAVE10_WID       (  ),
        .SLAVE10_WDATA     (  ),
        .SLAVE10_WSTRB     (  ),
        .SLAVE10_WUSER     (  ),
        .SLAVE11_WID       (  ),
        .SLAVE11_WDATA     (  ),
        .SLAVE11_WSTRB     (  ),
        .SLAVE11_WUSER     (  ),
        .SLAVE12_WID       (  ),
        .SLAVE12_WDATA     (  ),
        .SLAVE12_WSTRB     (  ),
        .SLAVE12_WUSER     (  ),
        .SLAVE13_WID       (  ),
        .SLAVE13_WDATA     (  ),
        .SLAVE13_WSTRB     (  ),
        .SLAVE13_WUSER     (  ),
        .SLAVE14_WID       (  ),
        .SLAVE14_WDATA     (  ),
        .SLAVE14_WSTRB     (  ),
        .SLAVE14_WUSER     (  ),
        .SLAVE15_WID       (  ),
        .SLAVE15_WDATA     (  ),
        .SLAVE15_WSTRB     (  ),
        .SLAVE15_WUSER     (  ),
        .SLAVE8_ARID       (  ),
        .SLAVE8_ARADDR     (  ),
        .SLAVE8_ARLEN      (  ),
        .SLAVE8_ARSIZE     (  ),
        .SLAVE8_ARBURST    (  ),
        .SLAVE8_ARLOCK     (  ),
        .SLAVE8_ARCACHE    (  ),
        .SLAVE8_ARPROT     (  ),
        .SLAVE8_ARREGION   (  ),
        .SLAVE8_ARQOS      (  ),
        .SLAVE8_ARUSER     (  ),
        .SLAVE9_ARID       (  ),
        .SLAVE9_ARADDR     (  ),
        .SLAVE9_ARLEN      (  ),
        .SLAVE9_ARSIZE     (  ),
        .SLAVE9_ARBURST    (  ),
        .SLAVE9_ARLOCK     (  ),
        .SLAVE9_ARCACHE    (  ),
        .SLAVE9_ARPROT     (  ),
        .SLAVE9_ARREGION   (  ),
        .SLAVE9_ARQOS      (  ),
        .SLAVE9_ARUSER     (  ),
        .SLAVE10_ARID      (  ),
        .SLAVE10_ARADDR    (  ),
        .SLAVE10_ARLEN     (  ),
        .SLAVE10_ARSIZE    (  ),
        .SLAVE10_ARBURST   (  ),
        .SLAVE10_ARLOCK    (  ),
        .SLAVE10_ARCACHE   (  ),
        .SLAVE10_ARPROT    (  ),
        .SLAVE10_ARREGION  (  ),
        .SLAVE10_ARQOS     (  ),
        .SLAVE10_ARUSER    (  ),
        .SLAVE11_ARID      (  ),
        .SLAVE11_ARADDR    (  ),
        .SLAVE11_ARLEN     (  ),
        .SLAVE11_ARSIZE    (  ),
        .SLAVE11_ARBURST   (  ),
        .SLAVE11_ARLOCK    (  ),
        .SLAVE11_ARCACHE   (  ),
        .SLAVE11_ARPROT    (  ),
        .SLAVE11_ARREGION  (  ),
        .SLAVE11_ARQOS     (  ),
        .SLAVE11_ARUSER    (  ),
        .SLAVE12_ARID      (  ),
        .SLAVE12_ARADDR    (  ),
        .SLAVE12_ARLEN     (  ),
        .SLAVE12_ARSIZE    (  ),
        .SLAVE12_ARBURST   (  ),
        .SLAVE12_ARLOCK    (  ),
        .SLAVE12_ARCACHE   (  ),
        .SLAVE12_ARPROT    (  ),
        .SLAVE12_ARREGION  (  ),
        .SLAVE12_ARQOS     (  ),
        .SLAVE12_ARUSER    (  ),
        .SLAVE13_ARID      (  ),
        .SLAVE13_ARADDR    (  ),
        .SLAVE13_ARLEN     (  ),
        .SLAVE13_ARSIZE    (  ),
        .SLAVE13_ARBURST   (  ),
        .SLAVE13_ARLOCK    (  ),
        .SLAVE13_ARCACHE   (  ),
        .SLAVE13_ARPROT    (  ),
        .SLAVE13_ARREGION  (  ),
        .SLAVE13_ARQOS     (  ),
        .SLAVE13_ARUSER    (  ),
        .SLAVE14_ARID      (  ),
        .SLAVE14_ARADDR    (  ),
        .SLAVE14_ARLEN     (  ),
        .SLAVE14_ARSIZE    (  ),
        .SLAVE14_ARBURST   (  ),
        .SLAVE14_ARLOCK    (  ),
        .SLAVE14_ARCACHE   (  ),
        .SLAVE14_ARPROT    (  ),
        .SLAVE14_ARREGION  (  ),
        .SLAVE14_ARQOS     (  ),
        .SLAVE14_ARUSER    (  ),
        .SLAVE15_ARID      (  ),
        .SLAVE15_ARADDR    (  ),
        .SLAVE15_ARLEN     (  ),
        .SLAVE15_ARSIZE    (  ),
        .SLAVE15_ARBURST   (  ),
        .SLAVE15_ARLOCK    (  ),
        .SLAVE15_ARCACHE   (  ),
        .SLAVE15_ARPROT    (  ),
        .SLAVE15_ARREGION  (  ),
        .SLAVE15_ARQOS     (  ),
        .SLAVE15_ARUSER    (  ),
        .SLAVE16_AWID      (  ),
        .SLAVE16_AWADDR    (  ),
        .SLAVE16_AWLEN     (  ),
        .SLAVE16_AWSIZE    (  ),
        .SLAVE16_AWBURST   (  ),
        .SLAVE16_AWLOCK    (  ),
        .SLAVE16_AWCACHE   (  ),
        .SLAVE16_AWPROT    (  ),
        .SLAVE16_AWREGION  (  ),
        .SLAVE16_AWQOS     (  ),
        .SLAVE16_AWUSER    (  ),
        .SLAVE17_AWID      (  ),
        .SLAVE17_AWADDR    (  ),
        .SLAVE17_AWLEN     (  ),
        .SLAVE17_AWSIZE    (  ),
        .SLAVE17_AWBURST   (  ),
        .SLAVE17_AWLOCK    (  ),
        .SLAVE17_AWCACHE   (  ),
        .SLAVE17_AWPROT    (  ),
        .SLAVE17_AWREGION  (  ),
        .SLAVE17_AWQOS     (  ),
        .SLAVE17_AWUSER    (  ),
        .SLAVE18_AWID      (  ),
        .SLAVE18_AWADDR    (  ),
        .SLAVE18_AWLEN     (  ),
        .SLAVE18_AWSIZE    (  ),
        .SLAVE18_AWBURST   (  ),
        .SLAVE18_AWLOCK    (  ),
        .SLAVE18_AWCACHE   (  ),
        .SLAVE18_AWPROT    (  ),
        .SLAVE18_AWREGION  (  ),
        .SLAVE18_AWQOS     (  ),
        .SLAVE18_AWUSER    (  ),
        .SLAVE19_AWID      (  ),
        .SLAVE19_AWADDR    (  ),
        .SLAVE19_AWLEN     (  ),
        .SLAVE19_AWSIZE    (  ),
        .SLAVE19_AWBURST   (  ),
        .SLAVE19_AWLOCK    (  ),
        .SLAVE19_AWCACHE   (  ),
        .SLAVE19_AWPROT    (  ),
        .SLAVE19_AWREGION  (  ),
        .SLAVE19_AWQOS     (  ),
        .SLAVE19_AWUSER    (  ),
        .SLAVE20_AWID      (  ),
        .SLAVE20_AWADDR    (  ),
        .SLAVE20_AWLEN     (  ),
        .SLAVE20_AWSIZE    (  ),
        .SLAVE20_AWBURST   (  ),
        .SLAVE20_AWLOCK    (  ),
        .SLAVE20_AWCACHE   (  ),
        .SLAVE20_AWPROT    (  ),
        .SLAVE20_AWREGION  (  ),
        .SLAVE20_AWQOS     (  ),
        .SLAVE20_AWUSER    (  ),
        .SLAVE21_AWID      (  ),
        .SLAVE21_AWADDR    (  ),
        .SLAVE21_AWLEN     (  ),
        .SLAVE21_AWSIZE    (  ),
        .SLAVE21_AWBURST   (  ),
        .SLAVE21_AWLOCK    (  ),
        .SLAVE21_AWCACHE   (  ),
        .SLAVE21_AWPROT    (  ),
        .SLAVE21_AWREGION  (  ),
        .SLAVE21_AWQOS     (  ),
        .SLAVE21_AWUSER    (  ),
        .SLAVE22_AWID      (  ),
        .SLAVE22_AWADDR    (  ),
        .SLAVE22_AWLEN     (  ),
        .SLAVE22_AWSIZE    (  ),
        .SLAVE22_AWBURST   (  ),
        .SLAVE22_AWLOCK    (  ),
        .SLAVE22_AWCACHE   (  ),
        .SLAVE22_AWPROT    (  ),
        .SLAVE22_AWREGION  (  ),
        .SLAVE22_AWQOS     (  ),
        .SLAVE22_AWUSER    (  ),
        .SLAVE23_AWID      (  ),
        .SLAVE23_AWADDR    (  ),
        .SLAVE23_AWLEN     (  ),
        .SLAVE23_AWSIZE    (  ),
        .SLAVE23_AWBURST   (  ),
        .SLAVE23_AWLOCK    (  ),
        .SLAVE23_AWCACHE   (  ),
        .SLAVE23_AWPROT    (  ),
        .SLAVE23_AWREGION  (  ),
        .SLAVE23_AWQOS     (  ),
        .SLAVE23_AWUSER    (  ),
        .SLAVE16_WID       (  ),
        .SLAVE16_WDATA     (  ),
        .SLAVE16_WSTRB     (  ),
        .SLAVE16_WUSER     (  ),
        .SLAVE17_WID       (  ),
        .SLAVE17_WDATA     (  ),
        .SLAVE17_WSTRB     (  ),
        .SLAVE17_WUSER     (  ),
        .SLAVE18_WID       (  ),
        .SLAVE18_WDATA     (  ),
        .SLAVE18_WSTRB     (  ),
        .SLAVE18_WUSER     (  ),
        .SLAVE19_WID       (  ),
        .SLAVE19_WDATA     (  ),
        .SLAVE19_WSTRB     (  ),
        .SLAVE19_WUSER     (  ),
        .SLAVE20_WID       (  ),
        .SLAVE20_WDATA     (  ),
        .SLAVE20_WSTRB     (  ),
        .SLAVE20_WUSER     (  ),
        .SLAVE21_WID       (  ),
        .SLAVE21_WDATA     (  ),
        .SLAVE21_WSTRB     (  ),
        .SLAVE21_WUSER     (  ),
        .SLAVE22_WID       (  ),
        .SLAVE22_WDATA     (  ),
        .SLAVE22_WSTRB     (  ),
        .SLAVE22_WUSER     (  ),
        .SLAVE23_WID       (  ),
        .SLAVE23_WDATA     (  ),
        .SLAVE23_WSTRB     (  ),
        .SLAVE23_WUSER     (  ),
        .SLAVE16_ARID      (  ),
        .SLAVE16_ARADDR    (  ),
        .SLAVE16_ARLEN     (  ),
        .SLAVE16_ARSIZE    (  ),
        .SLAVE16_ARBURST   (  ),
        .SLAVE16_ARLOCK    (  ),
        .SLAVE16_ARCACHE   (  ),
        .SLAVE16_ARPROT    (  ),
        .SLAVE16_ARREGION  (  ),
        .SLAVE16_ARQOS     (  ),
        .SLAVE16_ARUSER    (  ),
        .SLAVE17_ARID      (  ),
        .SLAVE17_ARADDR    (  ),
        .SLAVE17_ARLEN     (  ),
        .SLAVE17_ARSIZE    (  ),
        .SLAVE17_ARBURST   (  ),
        .SLAVE17_ARLOCK    (  ),
        .SLAVE17_ARCACHE   (  ),
        .SLAVE17_ARPROT    (  ),
        .SLAVE17_ARREGION  (  ),
        .SLAVE17_ARQOS     (  ),
        .SLAVE17_ARUSER    (  ),
        .SLAVE18_ARID      (  ),
        .SLAVE18_ARADDR    (  ),
        .SLAVE18_ARLEN     (  ),
        .SLAVE18_ARSIZE    (  ),
        .SLAVE18_ARBURST   (  ),
        .SLAVE18_ARLOCK    (  ),
        .SLAVE18_ARCACHE   (  ),
        .SLAVE18_ARPROT    (  ),
        .SLAVE18_ARREGION  (  ),
        .SLAVE18_ARQOS     (  ),
        .SLAVE18_ARUSER    (  ),
        .SLAVE19_ARID      (  ),
        .SLAVE19_ARADDR    (  ),
        .SLAVE19_ARLEN     (  ),
        .SLAVE19_ARSIZE    (  ),
        .SLAVE19_ARBURST   (  ),
        .SLAVE19_ARLOCK    (  ),
        .SLAVE19_ARCACHE   (  ),
        .SLAVE19_ARPROT    (  ),
        .SLAVE19_ARREGION  (  ),
        .SLAVE19_ARQOS     (  ),
        .SLAVE19_ARUSER    (  ),
        .SLAVE20_ARID      (  ),
        .SLAVE20_ARADDR    (  ),
        .SLAVE20_ARLEN     (  ),
        .SLAVE20_ARSIZE    (  ),
        .SLAVE20_ARBURST   (  ),
        .SLAVE20_ARLOCK    (  ),
        .SLAVE20_ARCACHE   (  ),
        .SLAVE20_ARPROT    (  ),
        .SLAVE20_ARREGION  (  ),
        .SLAVE20_ARQOS     (  ),
        .SLAVE20_ARUSER    (  ),
        .SLAVE21_ARID      (  ),
        .SLAVE21_ARADDR    (  ),
        .SLAVE21_ARLEN     (  ),
        .SLAVE21_ARSIZE    (  ),
        .SLAVE21_ARBURST   (  ),
        .SLAVE21_ARLOCK    (  ),
        .SLAVE21_ARCACHE   (  ),
        .SLAVE21_ARPROT    (  ),
        .SLAVE21_ARREGION  (  ),
        .SLAVE21_ARQOS     (  ),
        .SLAVE21_ARUSER    (  ),
        .SLAVE22_ARID      (  ),
        .SLAVE22_ARADDR    (  ),
        .SLAVE22_ARLEN     (  ),
        .SLAVE22_ARSIZE    (  ),
        .SLAVE22_ARBURST   (  ),
        .SLAVE22_ARLOCK    (  ),
        .SLAVE22_ARCACHE   (  ),
        .SLAVE22_ARPROT    (  ),
        .SLAVE22_ARREGION  (  ),
        .SLAVE22_ARQOS     (  ),
        .SLAVE22_ARUSER    (  ),
        .SLAVE23_ARID      (  ),
        .SLAVE23_ARADDR    (  ),
        .SLAVE23_ARLEN     (  ),
        .SLAVE23_ARSIZE    (  ),
        .SLAVE23_ARBURST   (  ),
        .SLAVE23_ARLOCK    (  ),
        .SLAVE23_ARCACHE   (  ),
        .SLAVE23_ARPROT    (  ),
        .SLAVE23_ARREGION  (  ),
        .SLAVE23_ARQOS     (  ),
        .SLAVE23_ARUSER    (  ),
        .SLAVE24_AWID      (  ),
        .SLAVE24_AWADDR    (  ),
        .SLAVE24_AWLEN     (  ),
        .SLAVE24_AWSIZE    (  ),
        .SLAVE24_AWBURST   (  ),
        .SLAVE24_AWLOCK    (  ),
        .SLAVE24_AWCACHE   (  ),
        .SLAVE24_AWPROT    (  ),
        .SLAVE24_AWREGION  (  ),
        .SLAVE24_AWQOS     (  ),
        .SLAVE24_AWUSER    (  ),
        .SLAVE25_AWID      (  ),
        .SLAVE25_AWADDR    (  ),
        .SLAVE25_AWLEN     (  ),
        .SLAVE25_AWSIZE    (  ),
        .SLAVE25_AWBURST   (  ),
        .SLAVE25_AWLOCK    (  ),
        .SLAVE25_AWCACHE   (  ),
        .SLAVE25_AWPROT    (  ),
        .SLAVE25_AWREGION  (  ),
        .SLAVE25_AWQOS     (  ),
        .SLAVE25_AWUSER    (  ),
        .SLAVE26_AWID      (  ),
        .SLAVE26_AWADDR    (  ),
        .SLAVE26_AWLEN     (  ),
        .SLAVE26_AWSIZE    (  ),
        .SLAVE26_AWBURST   (  ),
        .SLAVE26_AWLOCK    (  ),
        .SLAVE26_AWCACHE   (  ),
        .SLAVE26_AWPROT    (  ),
        .SLAVE26_AWREGION  (  ),
        .SLAVE26_AWQOS     (  ),
        .SLAVE26_AWUSER    (  ),
        .SLAVE27_AWID      (  ),
        .SLAVE27_AWADDR    (  ),
        .SLAVE27_AWLEN     (  ),
        .SLAVE27_AWSIZE    (  ),
        .SLAVE27_AWBURST   (  ),
        .SLAVE27_AWLOCK    (  ),
        .SLAVE27_AWCACHE   (  ),
        .SLAVE27_AWPROT    (  ),
        .SLAVE27_AWREGION  (  ),
        .SLAVE27_AWQOS     (  ),
        .SLAVE27_AWUSER    (  ),
        .SLAVE28_AWID      (  ),
        .SLAVE28_AWADDR    (  ),
        .SLAVE28_AWLEN     (  ),
        .SLAVE28_AWSIZE    (  ),
        .SLAVE28_AWBURST   (  ),
        .SLAVE28_AWLOCK    (  ),
        .SLAVE28_AWCACHE   (  ),
        .SLAVE28_AWPROT    (  ),
        .SLAVE28_AWREGION  (  ),
        .SLAVE28_AWQOS     (  ),
        .SLAVE28_AWUSER    (  ),
        .SLAVE29_AWID      (  ),
        .SLAVE29_AWADDR    (  ),
        .SLAVE29_AWLEN     (  ),
        .SLAVE29_AWSIZE    (  ),
        .SLAVE29_AWBURST   (  ),
        .SLAVE29_AWLOCK    (  ),
        .SLAVE29_AWCACHE   (  ),
        .SLAVE29_AWPROT    (  ),
        .SLAVE29_AWREGION  (  ),
        .SLAVE29_AWQOS     (  ),
        .SLAVE29_AWUSER    (  ),
        .SLAVE30_AWID      (  ),
        .SLAVE30_AWADDR    (  ),
        .SLAVE30_AWLEN     (  ),
        .SLAVE30_AWSIZE    (  ),
        .SLAVE30_AWBURST   (  ),
        .SLAVE30_AWLOCK    (  ),
        .SLAVE30_AWCACHE   (  ),
        .SLAVE30_AWPROT    (  ),
        .SLAVE30_AWREGION  (  ),
        .SLAVE30_AWQOS     (  ),
        .SLAVE30_AWUSER    (  ),
        .SLAVE31_AWID      (  ),
        .SLAVE31_AWADDR    (  ),
        .SLAVE31_AWLEN     (  ),
        .SLAVE31_AWSIZE    (  ),
        .SLAVE31_AWBURST   (  ),
        .SLAVE31_AWLOCK    (  ),
        .SLAVE31_AWCACHE   (  ),
        .SLAVE31_AWPROT    (  ),
        .SLAVE31_AWREGION  (  ),
        .SLAVE31_AWQOS     (  ),
        .SLAVE31_AWUSER    (  ),
        .SLAVE24_WID       (  ),
        .SLAVE24_WDATA     (  ),
        .SLAVE24_WSTRB     (  ),
        .SLAVE24_WUSER     (  ),
        .SLAVE25_WID       (  ),
        .SLAVE25_WDATA     (  ),
        .SLAVE25_WSTRB     (  ),
        .SLAVE25_WUSER     (  ),
        .SLAVE26_WID       (  ),
        .SLAVE26_WDATA     (  ),
        .SLAVE26_WSTRB     (  ),
        .SLAVE26_WUSER     (  ),
        .SLAVE27_WID       (  ),
        .SLAVE27_WDATA     (  ),
        .SLAVE27_WSTRB     (  ),
        .SLAVE27_WUSER     (  ),
        .SLAVE28_WID       (  ),
        .SLAVE28_WDATA     (  ),
        .SLAVE28_WSTRB     (  ),
        .SLAVE28_WUSER     (  ),
        .SLAVE29_WID       (  ),
        .SLAVE29_WDATA     (  ),
        .SLAVE29_WSTRB     (  ),
        .SLAVE29_WUSER     (  ),
        .SLAVE30_WID       (  ),
        .SLAVE30_WDATA     (  ),
        .SLAVE30_WSTRB     (  ),
        .SLAVE30_WUSER     (  ),
        .SLAVE31_WID       (  ),
        .SLAVE31_WDATA     (  ),
        .SLAVE31_WSTRB     (  ),
        .SLAVE31_WUSER     (  ),
        .SLAVE24_ARID      (  ),
        .SLAVE24_ARADDR    (  ),
        .SLAVE24_ARLEN     (  ),
        .SLAVE24_ARSIZE    (  ),
        .SLAVE24_ARBURST   (  ),
        .SLAVE24_ARLOCK    (  ),
        .SLAVE24_ARCACHE   (  ),
        .SLAVE24_ARPROT    (  ),
        .SLAVE24_ARREGION  (  ),
        .SLAVE24_ARQOS     (  ),
        .SLAVE24_ARUSER    (  ),
        .SLAVE25_ARID      (  ),
        .SLAVE25_ARADDR    (  ),
        .SLAVE25_ARLEN     (  ),
        .SLAVE25_ARSIZE    (  ),
        .SLAVE25_ARBURST   (  ),
        .SLAVE25_ARLOCK    (  ),
        .SLAVE25_ARCACHE   (  ),
        .SLAVE25_ARPROT    (  ),
        .SLAVE25_ARREGION  (  ),
        .SLAVE25_ARQOS     (  ),
        .SLAVE25_ARUSER    (  ),
        .SLAVE26_ARID      (  ),
        .SLAVE26_ARADDR    (  ),
        .SLAVE26_ARLEN     (  ),
        .SLAVE26_ARSIZE    (  ),
        .SLAVE26_ARBURST   (  ),
        .SLAVE26_ARLOCK    (  ),
        .SLAVE26_ARCACHE   (  ),
        .SLAVE26_ARPROT    (  ),
        .SLAVE26_ARREGION  (  ),
        .SLAVE26_ARQOS     (  ),
        .SLAVE26_ARUSER    (  ),
        .SLAVE27_ARID      (  ),
        .SLAVE27_ARADDR    (  ),
        .SLAVE27_ARLEN     (  ),
        .SLAVE27_ARSIZE    (  ),
        .SLAVE27_ARBURST   (  ),
        .SLAVE27_ARLOCK    (  ),
        .SLAVE27_ARCACHE   (  ),
        .SLAVE27_ARPROT    (  ),
        .SLAVE27_ARREGION  (  ),
        .SLAVE27_ARQOS     (  ),
        .SLAVE27_ARUSER    (  ),
        .SLAVE28_ARID      (  ),
        .SLAVE28_ARADDR    (  ),
        .SLAVE28_ARLEN     (  ),
        .SLAVE28_ARSIZE    (  ),
        .SLAVE28_ARBURST   (  ),
        .SLAVE28_ARLOCK    (  ),
        .SLAVE28_ARCACHE   (  ),
        .SLAVE28_ARPROT    (  ),
        .SLAVE28_ARREGION  (  ),
        .SLAVE28_ARQOS     (  ),
        .SLAVE28_ARUSER    (  ),
        .SLAVE29_ARID      (  ),
        .SLAVE29_ARADDR    (  ),
        .SLAVE29_ARLEN     (  ),
        .SLAVE29_ARSIZE    (  ),
        .SLAVE29_ARBURST   (  ),
        .SLAVE29_ARLOCK    (  ),
        .SLAVE29_ARCACHE   (  ),
        .SLAVE29_ARPROT    (  ),
        .SLAVE29_ARREGION  (  ),
        .SLAVE29_ARQOS     (  ),
        .SLAVE29_ARUSER    (  ),
        .SLAVE30_ARID      (  ),
        .SLAVE30_ARADDR    (  ),
        .SLAVE30_ARLEN     (  ),
        .SLAVE30_ARSIZE    (  ),
        .SLAVE30_ARBURST   (  ),
        .SLAVE30_ARLOCK    (  ),
        .SLAVE30_ARCACHE   (  ),
        .SLAVE30_ARPROT    (  ),
        .SLAVE30_ARREGION  (  ),
        .SLAVE30_ARQOS     (  ),
        .SLAVE30_ARUSER    (  ),
        .SLAVE31_ARID      (  ),
        .SLAVE31_ARADDR    (  ),
        .SLAVE31_ARLEN     (  ),
        .SLAVE31_ARSIZE    (  ),
        .SLAVE31_ARBURST   (  ),
        .SLAVE31_ARLOCK    (  ),
        .SLAVE31_ARCACHE   (  ),
        .SLAVE31_ARPROT    (  ),
        .SLAVE31_ARREGION  (  ),
        .SLAVE31_ARQOS     (  ),
        .SLAVE31_ARUSER    (  ) 
        );


endmodule
