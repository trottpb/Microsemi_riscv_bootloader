`timescale 1 ns/100 ps
// Version: PolarFire v2.3 12.200.35.9


module DDR4_DDRPHY_BLK_LANE_0_IOD_DQ_PF_IOD(
       ARST_N,
       RX_SYNC_RST,
       TX_SYNC_RST,
       HS_IO_CLK,
       RX_DQS_90,
       TX_DQS,
       FIFO_WR_PTR,
       FIFO_RD_PTR,
       EYE_MONITOR_LANE_WIDTH,
       TX_DATA_0,
       TX_DATA_1,
       TX_DATA_2,
       TX_DATA_3,
       TX_DATA_4,
       TX_DATA_5,
       TX_DATA_6,
       TX_DATA_7,
       OE_DATA_0,
       OE_DATA_1,
       OE_DATA_2,
       OE_DATA_3,
       OE_DATA_4,
       OE_DATA_5,
       OE_DATA_6,
       OE_DATA_7,
       EYE_MONITOR_CLEAR_FLAGS_0,
       EYE_MONITOR_CLEAR_FLAGS_1,
       EYE_MONITOR_CLEAR_FLAGS_2,
       EYE_MONITOR_CLEAR_FLAGS_3,
       EYE_MONITOR_CLEAR_FLAGS_4,
       EYE_MONITOR_CLEAR_FLAGS_5,
       EYE_MONITOR_CLEAR_FLAGS_6,
       EYE_MONITOR_CLEAR_FLAGS_7,
       DELAY_LINE_MOVE_0,
       DELAY_LINE_MOVE_1,
       DELAY_LINE_MOVE_2,
       DELAY_LINE_MOVE_3,
       DELAY_LINE_MOVE_4,
       DELAY_LINE_MOVE_5,
       DELAY_LINE_MOVE_6,
       DELAY_LINE_MOVE_7,
       DELAY_LINE_DIRECTION_0,
       DELAY_LINE_DIRECTION_1,
       DELAY_LINE_DIRECTION_2,
       DELAY_LINE_DIRECTION_3,
       DELAY_LINE_DIRECTION_4,
       DELAY_LINE_DIRECTION_5,
       DELAY_LINE_DIRECTION_6,
       DELAY_LINE_DIRECTION_7,
       DELAY_LINE_LOAD_0,
       DELAY_LINE_LOAD_1,
       DELAY_LINE_LOAD_2,
       DELAY_LINE_LOAD_3,
       DELAY_LINE_LOAD_4,
       DELAY_LINE_LOAD_5,
       DELAY_LINE_LOAD_6,
       DELAY_LINE_LOAD_7,
       DELAY_LINE_OUT_OF_RANGE_0,
       DELAY_LINE_OUT_OF_RANGE_1,
       DELAY_LINE_OUT_OF_RANGE_2,
       DELAY_LINE_OUT_OF_RANGE_3,
       DELAY_LINE_OUT_OF_RANGE_4,
       DELAY_LINE_OUT_OF_RANGE_5,
       DELAY_LINE_OUT_OF_RANGE_6,
       DELAY_LINE_OUT_OF_RANGE_7,
       FAB_CLK,
       EYE_MONITOR_EARLY_0,
       EYE_MONITOR_EARLY_1,
       EYE_MONITOR_EARLY_2,
       EYE_MONITOR_EARLY_3,
       EYE_MONITOR_EARLY_4,
       EYE_MONITOR_EARLY_5,
       EYE_MONITOR_EARLY_6,
       EYE_MONITOR_EARLY_7,
       EYE_MONITOR_LATE_0,
       EYE_MONITOR_LATE_1,
       EYE_MONITOR_LATE_2,
       EYE_MONITOR_LATE_3,
       EYE_MONITOR_LATE_4,
       EYE_MONITOR_LATE_5,
       EYE_MONITOR_LATE_6,
       EYE_MONITOR_LATE_7,
       RX_DATA_0,
       RX_DATA_1,
       RX_DATA_2,
       RX_DATA_3,
       RX_DATA_4,
       RX_DATA_5,
       RX_DATA_6,
       RX_DATA_7,
       PAD,
       ODT_EN_0,
       ODT_EN_1,
       ODT_EN_2,
       ODT_EN_3,
       ODT_EN_4,
       ODT_EN_5,
       ODT_EN_6,
       ODT_EN_7,
       RX_BYPASS_DATA_0,
       RX_BYPASS_DATA_1,
       RX_BYPASS_DATA_2,
       RX_BYPASS_DATA_3,
       RX_BYPASS_DATA_4,
       RX_BYPASS_DATA_5,
       RX_BYPASS_DATA_6,
       RX_BYPASS_DATA_7
    );
input  ARST_N;
input  RX_SYNC_RST;
input  TX_SYNC_RST;
input  [0:0] HS_IO_CLK;
input  [0:0] RX_DQS_90;
input  TX_DQS;
input  [2:0] FIFO_WR_PTR;
input  [2:0] FIFO_RD_PTR;
input  [2:0] EYE_MONITOR_LANE_WIDTH;
input  [7:0] TX_DATA_0;
input  [7:0] TX_DATA_1;
input  [7:0] TX_DATA_2;
input  [7:0] TX_DATA_3;
input  [7:0] TX_DATA_4;
input  [7:0] TX_DATA_5;
input  [7:0] TX_DATA_6;
input  [7:0] TX_DATA_7;
input  [3:0] OE_DATA_0;
input  [3:0] OE_DATA_1;
input  [3:0] OE_DATA_2;
input  [3:0] OE_DATA_3;
input  [3:0] OE_DATA_4;
input  [3:0] OE_DATA_5;
input  [3:0] OE_DATA_6;
input  [3:0] OE_DATA_7;
input  EYE_MONITOR_CLEAR_FLAGS_0;
input  EYE_MONITOR_CLEAR_FLAGS_1;
input  EYE_MONITOR_CLEAR_FLAGS_2;
input  EYE_MONITOR_CLEAR_FLAGS_3;
input  EYE_MONITOR_CLEAR_FLAGS_4;
input  EYE_MONITOR_CLEAR_FLAGS_5;
input  EYE_MONITOR_CLEAR_FLAGS_6;
input  EYE_MONITOR_CLEAR_FLAGS_7;
input  DELAY_LINE_MOVE_0;
input  DELAY_LINE_MOVE_1;
input  DELAY_LINE_MOVE_2;
input  DELAY_LINE_MOVE_3;
input  DELAY_LINE_MOVE_4;
input  DELAY_LINE_MOVE_5;
input  DELAY_LINE_MOVE_6;
input  DELAY_LINE_MOVE_7;
input  DELAY_LINE_DIRECTION_0;
input  DELAY_LINE_DIRECTION_1;
input  DELAY_LINE_DIRECTION_2;
input  DELAY_LINE_DIRECTION_3;
input  DELAY_LINE_DIRECTION_4;
input  DELAY_LINE_DIRECTION_5;
input  DELAY_LINE_DIRECTION_6;
input  DELAY_LINE_DIRECTION_7;
input  DELAY_LINE_LOAD_0;
input  DELAY_LINE_LOAD_1;
input  DELAY_LINE_LOAD_2;
input  DELAY_LINE_LOAD_3;
input  DELAY_LINE_LOAD_4;
input  DELAY_LINE_LOAD_5;
input  DELAY_LINE_LOAD_6;
input  DELAY_LINE_LOAD_7;
output DELAY_LINE_OUT_OF_RANGE_0;
output DELAY_LINE_OUT_OF_RANGE_1;
output DELAY_LINE_OUT_OF_RANGE_2;
output DELAY_LINE_OUT_OF_RANGE_3;
output DELAY_LINE_OUT_OF_RANGE_4;
output DELAY_LINE_OUT_OF_RANGE_5;
output DELAY_LINE_OUT_OF_RANGE_6;
output DELAY_LINE_OUT_OF_RANGE_7;
input  FAB_CLK;
output EYE_MONITOR_EARLY_0;
output EYE_MONITOR_EARLY_1;
output EYE_MONITOR_EARLY_2;
output EYE_MONITOR_EARLY_3;
output EYE_MONITOR_EARLY_4;
output EYE_MONITOR_EARLY_5;
output EYE_MONITOR_EARLY_6;
output EYE_MONITOR_EARLY_7;
output EYE_MONITOR_LATE_0;
output EYE_MONITOR_LATE_1;
output EYE_MONITOR_LATE_2;
output EYE_MONITOR_LATE_3;
output EYE_MONITOR_LATE_4;
output EYE_MONITOR_LATE_5;
output EYE_MONITOR_LATE_6;
output EYE_MONITOR_LATE_7;
output [7:0] RX_DATA_0;
output [7:0] RX_DATA_1;
output [7:0] RX_DATA_2;
output [7:0] RX_DATA_3;
output [7:0] RX_DATA_4;
output [7:0] RX_DATA_5;
output [7:0] RX_DATA_6;
output [7:0] RX_DATA_7;
inout  [7:0] PAD;
input  ODT_EN_0;
input  ODT_EN_1;
input  ODT_EN_2;
input  ODT_EN_3;
input  ODT_EN_4;
input  ODT_EN_5;
input  ODT_EN_6;
input  ODT_EN_7;
output RX_BYPASS_DATA_0;
output RX_BYPASS_DATA_1;
output RX_BYPASS_DATA_2;
output RX_BYPASS_DATA_3;
output RX_BYPASS_DATA_4;
output RX_BYPASS_DATA_5;
output RX_BYPASS_DATA_6;
output RX_BYPASS_DATA_7;

    wire GND_net, VCC_net, Y_I_BIBUF_0_net, D_I_BIBUF_0_net, 
        E_I_BIBUF_0_net, Y_I_BIBUF_1_net, D_I_BIBUF_1_net, 
        E_I_BIBUF_1_net, Y_I_BIBUF_2_net, D_I_BIBUF_2_net, 
        E_I_BIBUF_2_net, Y_I_BIBUF_3_net, D_I_BIBUF_3_net, 
        E_I_BIBUF_3_net, Y_I_BIBUF_4_net, D_I_BIBUF_4_net, 
        E_I_BIBUF_4_net, Y_I_BIBUF_5_net, D_I_BIBUF_5_net, 
        E_I_BIBUF_5_net, Y_I_BIBUF_6_net, D_I_BIBUF_6_net, 
        E_I_BIBUF_6_net, Y_I_BIBUF_7_net, D_I_BIBUF_7_net, 
        E_I_BIBUF_7_net;
    
    BIBUF I_BIBUF_1 (.D(D_I_BIBUF_1_net), .E(E_I_BIBUF_1_net), .Y(
        Y_I_BIBUF_1_net), .PAD(PAD[1]));
    IOD #( .DATA_RATE(1333.332), .FORMAL_NAME("DQ3"), .INTERFACE_NAME("DDR4")
        , .DELAY_LINE_SIMULATION_MODE("ENABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b1)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b11)
        , .RX_MODE(4'b1100), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b1)
        , .FIFO_WR_EN(1'b1), .EYE_MONITOR_EN(1'b1), .TX_MODE(7'b1000100)
        , .TX_CLK_SEL(2'b10), .TX_OE_MODE(3'b010), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b1), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_3 (
        .EYE_MONITOR_EARLY(EYE_MONITOR_EARLY_3), .EYE_MONITOR_LATE(
        EYE_MONITOR_LATE_3), .RX_DATA({RX_DATA_3[7], RX_DATA_3[6], 
        RX_DATA_3[5], RX_DATA_3[4], RX_DATA_3[3], RX_DATA_3[2], 
        RX_DATA_3[1], RX_DATA_3[0], nc0, RX_BYPASS_DATA_3}), 
        .DELAY_LINE_OUT_OF_RANGE(DELAY_LINE_OUT_OF_RANGE_3), .TX_DATA({
        TX_DATA_3[7], TX_DATA_3[6], TX_DATA_3[5], TX_DATA_3[4], 
        TX_DATA_3[3], TX_DATA_3[2], TX_DATA_3[1], TX_DATA_3[0]}), 
        .OE_DATA({OE_DATA_3[3], OE_DATA_3[2], OE_DATA_3[1], 
        OE_DATA_3[0]}), .RX_BIT_SLIP(GND_net), 
        .EYE_MONITOR_CLEAR_FLAGS(EYE_MONITOR_CLEAR_FLAGS_3), 
        .DELAY_LINE_MOVE(DELAY_LINE_MOVE_3), .DELAY_LINE_DIRECTION(
        DELAY_LINE_DIRECTION_3), .DELAY_LINE_LOAD(DELAY_LINE_LOAD_3), 
        .RX_CLK(FAB_CLK), .TX_CLK(FAB_CLK), .ODT_EN(ODT_EN_3), 
        .INFF_SL(GND_net), .INFF_EN(GND_net), .OUTFF_SL(GND_net), 
        .OUTFF_EN(GND_net), .AL_N(GND_net), .OEFF_LAT_N(GND_net), 
        .OEFF_SD_N(GND_net), .OEFF_AD_N(), .INFF_LAT_N(GND_net), 
        .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), .OUTFF_LAT_N(GND_net)
        , .OUTFF_SD_N(GND_net), .OUTFF_AD_N(), .RX_P(Y_I_BIBUF_3_net), 
        .RX_N(), .TX_DATA_9(GND_net), .TX_DATA_8(GND_net), .ARST_N(
        ARST_N), .RX_SYNC_RST(RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), 
        .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, GND_net, 
        HS_IO_CLK[0]}), .RX_DQS_90({GND_net, RX_DQS_90[0]}), .TX_DQS(
        TX_DQS), .TX_DQS_270(GND_net), .FIFO_WR_PTR({FIFO_WR_PTR[2], 
        FIFO_WR_PTR[1], FIFO_WR_PTR[0]}), .FIFO_RD_PTR({FIFO_RD_PTR[2], 
        FIFO_RD_PTR[1], FIFO_RD_PTR[0]}), .TX(D_I_BIBUF_3_net), .OE(
        E_I_BIBUF_3_net), .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net), 
        .EYE_MONITOR_LANE_WIDTH({EYE_MONITOR_LANE_WIDTH[2], 
        EYE_MONITOR_LANE_WIDTH[1], EYE_MONITOR_LANE_WIDTH[0]}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc1, nc2, nc3, nc4, nc5, 
        nc6, nc7, nc8, nc9, nc10, nc11}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    BIBUF I_BIBUF_2 (.D(D_I_BIBUF_2_net), .E(E_I_BIBUF_2_net), .Y(
        Y_I_BIBUF_2_net), .PAD(PAD[2]));
    BIBUF I_BIBUF_5 (.D(D_I_BIBUF_5_net), .E(E_I_BIBUF_5_net), .Y(
        Y_I_BIBUF_5_net), .PAD(PAD[5]));
    BIBUF I_BIBUF_4 (.D(D_I_BIBUF_4_net), .E(E_I_BIBUF_4_net), .Y(
        Y_I_BIBUF_4_net), .PAD(PAD[4]));
    IOD #( .DATA_RATE(1333.332), .FORMAL_NAME("DQ0"), .INTERFACE_NAME("DDR4")
        , .DELAY_LINE_SIMULATION_MODE("ENABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b1)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b11)
        , .RX_MODE(4'b1100), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b1)
        , .FIFO_WR_EN(1'b1), .EYE_MONITOR_EN(1'b1), .TX_MODE(7'b1000100)
        , .TX_CLK_SEL(2'b10), .TX_OE_MODE(3'b010), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b1), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_0 (
        .EYE_MONITOR_EARLY(EYE_MONITOR_EARLY_0), .EYE_MONITOR_LATE(
        EYE_MONITOR_LATE_0), .RX_DATA({RX_DATA_0[7], RX_DATA_0[6], 
        RX_DATA_0[5], RX_DATA_0[4], RX_DATA_0[3], RX_DATA_0[2], 
        RX_DATA_0[1], RX_DATA_0[0], nc12, RX_BYPASS_DATA_0}), 
        .DELAY_LINE_OUT_OF_RANGE(DELAY_LINE_OUT_OF_RANGE_0), .TX_DATA({
        TX_DATA_0[7], TX_DATA_0[6], TX_DATA_0[5], TX_DATA_0[4], 
        TX_DATA_0[3], TX_DATA_0[2], TX_DATA_0[1], TX_DATA_0[0]}), 
        .OE_DATA({OE_DATA_0[3], OE_DATA_0[2], OE_DATA_0[1], 
        OE_DATA_0[0]}), .RX_BIT_SLIP(GND_net), 
        .EYE_MONITOR_CLEAR_FLAGS(EYE_MONITOR_CLEAR_FLAGS_0), 
        .DELAY_LINE_MOVE(DELAY_LINE_MOVE_0), .DELAY_LINE_DIRECTION(
        DELAY_LINE_DIRECTION_0), .DELAY_LINE_LOAD(DELAY_LINE_LOAD_0), 
        .RX_CLK(FAB_CLK), .TX_CLK(FAB_CLK), .ODT_EN(ODT_EN_0), 
        .INFF_SL(GND_net), .INFF_EN(GND_net), .OUTFF_SL(GND_net), 
        .OUTFF_EN(GND_net), .AL_N(GND_net), .OEFF_LAT_N(GND_net), 
        .OEFF_SD_N(GND_net), .OEFF_AD_N(), .INFF_LAT_N(GND_net), 
        .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), .OUTFF_LAT_N(GND_net)
        , .OUTFF_SD_N(GND_net), .OUTFF_AD_N(), .RX_P(Y_I_BIBUF_0_net), 
        .RX_N(), .TX_DATA_9(GND_net), .TX_DATA_8(GND_net), .ARST_N(
        ARST_N), .RX_SYNC_RST(RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), 
        .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, GND_net, 
        HS_IO_CLK[0]}), .RX_DQS_90({GND_net, RX_DQS_90[0]}), .TX_DQS(
        TX_DQS), .TX_DQS_270(GND_net), .FIFO_WR_PTR({FIFO_WR_PTR[2], 
        FIFO_WR_PTR[1], FIFO_WR_PTR[0]}), .FIFO_RD_PTR({FIFO_RD_PTR[2], 
        FIFO_RD_PTR[1], FIFO_RD_PTR[0]}), .TX(D_I_BIBUF_0_net), .OE(
        E_I_BIBUF_0_net), .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net), 
        .EYE_MONITOR_LANE_WIDTH({EYE_MONITOR_LANE_WIDTH[2], 
        EYE_MONITOR_LANE_WIDTH[1], EYE_MONITOR_LANE_WIDTH[0]}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc13, nc14, nc15, nc16, 
        nc17, nc18, nc19, nc20, nc21, nc22, nc23}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    VCC vcc_inst (.Y(VCC_net));
    BIBUF I_BIBUF_7 (.D(D_I_BIBUF_7_net), .E(E_I_BIBUF_7_net), .Y(
        Y_I_BIBUF_7_net), .PAD(PAD[7]));
    GND gnd_inst (.Y(GND_net));
    IOD #( .DATA_RATE(1333.332), .FORMAL_NAME("DQ2"), .INTERFACE_NAME("DDR4")
        , .DELAY_LINE_SIMULATION_MODE("ENABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b1)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b11)
        , .RX_MODE(4'b1100), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b1)
        , .FIFO_WR_EN(1'b1), .EYE_MONITOR_EN(1'b1), .TX_MODE(7'b1000100)
        , .TX_CLK_SEL(2'b10), .TX_OE_MODE(3'b010), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b1), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_2 (
        .EYE_MONITOR_EARLY(EYE_MONITOR_EARLY_2), .EYE_MONITOR_LATE(
        EYE_MONITOR_LATE_2), .RX_DATA({RX_DATA_2[7], RX_DATA_2[6], 
        RX_DATA_2[5], RX_DATA_2[4], RX_DATA_2[3], RX_DATA_2[2], 
        RX_DATA_2[1], RX_DATA_2[0], nc24, RX_BYPASS_DATA_2}), 
        .DELAY_LINE_OUT_OF_RANGE(DELAY_LINE_OUT_OF_RANGE_2), .TX_DATA({
        TX_DATA_2[7], TX_DATA_2[6], TX_DATA_2[5], TX_DATA_2[4], 
        TX_DATA_2[3], TX_DATA_2[2], TX_DATA_2[1], TX_DATA_2[0]}), 
        .OE_DATA({OE_DATA_2[3], OE_DATA_2[2], OE_DATA_2[1], 
        OE_DATA_2[0]}), .RX_BIT_SLIP(GND_net), 
        .EYE_MONITOR_CLEAR_FLAGS(EYE_MONITOR_CLEAR_FLAGS_2), 
        .DELAY_LINE_MOVE(DELAY_LINE_MOVE_2), .DELAY_LINE_DIRECTION(
        DELAY_LINE_DIRECTION_2), .DELAY_LINE_LOAD(DELAY_LINE_LOAD_2), 
        .RX_CLK(FAB_CLK), .TX_CLK(FAB_CLK), .ODT_EN(ODT_EN_2), 
        .INFF_SL(GND_net), .INFF_EN(GND_net), .OUTFF_SL(GND_net), 
        .OUTFF_EN(GND_net), .AL_N(GND_net), .OEFF_LAT_N(GND_net), 
        .OEFF_SD_N(GND_net), .OEFF_AD_N(), .INFF_LAT_N(GND_net), 
        .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), .OUTFF_LAT_N(GND_net)
        , .OUTFF_SD_N(GND_net), .OUTFF_AD_N(), .RX_P(Y_I_BIBUF_2_net), 
        .RX_N(), .TX_DATA_9(GND_net), .TX_DATA_8(GND_net), .ARST_N(
        ARST_N), .RX_SYNC_RST(RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), 
        .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, GND_net, 
        HS_IO_CLK[0]}), .RX_DQS_90({GND_net, RX_DQS_90[0]}), .TX_DQS(
        TX_DQS), .TX_DQS_270(GND_net), .FIFO_WR_PTR({FIFO_WR_PTR[2], 
        FIFO_WR_PTR[1], FIFO_WR_PTR[0]}), .FIFO_RD_PTR({FIFO_RD_PTR[2], 
        FIFO_RD_PTR[1], FIFO_RD_PTR[0]}), .TX(D_I_BIBUF_2_net), .OE(
        E_I_BIBUF_2_net), .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net), 
        .EYE_MONITOR_LANE_WIDTH({EYE_MONITOR_LANE_WIDTH[2], 
        EYE_MONITOR_LANE_WIDTH[1], EYE_MONITOR_LANE_WIDTH[0]}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc25, nc26, nc27, nc28, 
        nc29, nc30, nc31, nc32, nc33, nc34, nc35}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    IOD #( .DATA_RATE(1333.332), .FORMAL_NAME("DQ7"), .INTERFACE_NAME("DDR4")
        , .DELAY_LINE_SIMULATION_MODE("ENABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b1)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b11)
        , .RX_MODE(4'b1100), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b1)
        , .FIFO_WR_EN(1'b1), .EYE_MONITOR_EN(1'b1), .TX_MODE(7'b1000100)
        , .TX_CLK_SEL(2'b10), .TX_OE_MODE(3'b010), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b1), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_7 (
        .EYE_MONITOR_EARLY(EYE_MONITOR_EARLY_7), .EYE_MONITOR_LATE(
        EYE_MONITOR_LATE_7), .RX_DATA({RX_DATA_7[7], RX_DATA_7[6], 
        RX_DATA_7[5], RX_DATA_7[4], RX_DATA_7[3], RX_DATA_7[2], 
        RX_DATA_7[1], RX_DATA_7[0], nc36, RX_BYPASS_DATA_7}), 
        .DELAY_LINE_OUT_OF_RANGE(DELAY_LINE_OUT_OF_RANGE_7), .TX_DATA({
        TX_DATA_7[7], TX_DATA_7[6], TX_DATA_7[5], TX_DATA_7[4], 
        TX_DATA_7[3], TX_DATA_7[2], TX_DATA_7[1], TX_DATA_7[0]}), 
        .OE_DATA({OE_DATA_7[3], OE_DATA_7[2], OE_DATA_7[1], 
        OE_DATA_7[0]}), .RX_BIT_SLIP(GND_net), 
        .EYE_MONITOR_CLEAR_FLAGS(EYE_MONITOR_CLEAR_FLAGS_7), 
        .DELAY_LINE_MOVE(DELAY_LINE_MOVE_7), .DELAY_LINE_DIRECTION(
        DELAY_LINE_DIRECTION_7), .DELAY_LINE_LOAD(DELAY_LINE_LOAD_7), 
        .RX_CLK(FAB_CLK), .TX_CLK(FAB_CLK), .ODT_EN(ODT_EN_7), 
        .INFF_SL(GND_net), .INFF_EN(GND_net), .OUTFF_SL(GND_net), 
        .OUTFF_EN(GND_net), .AL_N(GND_net), .OEFF_LAT_N(GND_net), 
        .OEFF_SD_N(GND_net), .OEFF_AD_N(), .INFF_LAT_N(GND_net), 
        .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), .OUTFF_LAT_N(GND_net)
        , .OUTFF_SD_N(GND_net), .OUTFF_AD_N(), .RX_P(Y_I_BIBUF_7_net), 
        .RX_N(), .TX_DATA_9(GND_net), .TX_DATA_8(GND_net), .ARST_N(
        ARST_N), .RX_SYNC_RST(RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), 
        .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, GND_net, 
        HS_IO_CLK[0]}), .RX_DQS_90({GND_net, RX_DQS_90[0]}), .TX_DQS(
        TX_DQS), .TX_DQS_270(GND_net), .FIFO_WR_PTR({FIFO_WR_PTR[2], 
        FIFO_WR_PTR[1], FIFO_WR_PTR[0]}), .FIFO_RD_PTR({FIFO_RD_PTR[2], 
        FIFO_RD_PTR[1], FIFO_RD_PTR[0]}), .TX(D_I_BIBUF_7_net), .OE(
        E_I_BIBUF_7_net), .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net), 
        .EYE_MONITOR_LANE_WIDTH({EYE_MONITOR_LANE_WIDTH[2], 
        EYE_MONITOR_LANE_WIDTH[1], EYE_MONITOR_LANE_WIDTH[0]}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc37, nc38, nc39, nc40, 
        nc41, nc42, nc43, nc44, nc45, nc46, nc47}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    IOD #( .DATA_RATE(1333.332), .FORMAL_NAME("DQ4"), .INTERFACE_NAME("DDR4")
        , .DELAY_LINE_SIMULATION_MODE("ENABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b1)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b11)
        , .RX_MODE(4'b1100), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b1)
        , .FIFO_WR_EN(1'b1), .EYE_MONITOR_EN(1'b1), .TX_MODE(7'b1000100)
        , .TX_CLK_SEL(2'b10), .TX_OE_MODE(3'b010), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b1), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_4 (
        .EYE_MONITOR_EARLY(EYE_MONITOR_EARLY_4), .EYE_MONITOR_LATE(
        EYE_MONITOR_LATE_4), .RX_DATA({RX_DATA_4[7], RX_DATA_4[6], 
        RX_DATA_4[5], RX_DATA_4[4], RX_DATA_4[3], RX_DATA_4[2], 
        RX_DATA_4[1], RX_DATA_4[0], nc48, RX_BYPASS_DATA_4}), 
        .DELAY_LINE_OUT_OF_RANGE(DELAY_LINE_OUT_OF_RANGE_4), .TX_DATA({
        TX_DATA_4[7], TX_DATA_4[6], TX_DATA_4[5], TX_DATA_4[4], 
        TX_DATA_4[3], TX_DATA_4[2], TX_DATA_4[1], TX_DATA_4[0]}), 
        .OE_DATA({OE_DATA_4[3], OE_DATA_4[2], OE_DATA_4[1], 
        OE_DATA_4[0]}), .RX_BIT_SLIP(GND_net), 
        .EYE_MONITOR_CLEAR_FLAGS(EYE_MONITOR_CLEAR_FLAGS_4), 
        .DELAY_LINE_MOVE(DELAY_LINE_MOVE_4), .DELAY_LINE_DIRECTION(
        DELAY_LINE_DIRECTION_4), .DELAY_LINE_LOAD(DELAY_LINE_LOAD_4), 
        .RX_CLK(FAB_CLK), .TX_CLK(FAB_CLK), .ODT_EN(ODT_EN_4), 
        .INFF_SL(GND_net), .INFF_EN(GND_net), .OUTFF_SL(GND_net), 
        .OUTFF_EN(GND_net), .AL_N(GND_net), .OEFF_LAT_N(GND_net), 
        .OEFF_SD_N(GND_net), .OEFF_AD_N(), .INFF_LAT_N(GND_net), 
        .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), .OUTFF_LAT_N(GND_net)
        , .OUTFF_SD_N(GND_net), .OUTFF_AD_N(), .RX_P(Y_I_BIBUF_4_net), 
        .RX_N(), .TX_DATA_9(GND_net), .TX_DATA_8(GND_net), .ARST_N(
        ARST_N), .RX_SYNC_RST(RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), 
        .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, GND_net, 
        HS_IO_CLK[0]}), .RX_DQS_90({GND_net, RX_DQS_90[0]}), .TX_DQS(
        TX_DQS), .TX_DQS_270(GND_net), .FIFO_WR_PTR({FIFO_WR_PTR[2], 
        FIFO_WR_PTR[1], FIFO_WR_PTR[0]}), .FIFO_RD_PTR({FIFO_RD_PTR[2], 
        FIFO_RD_PTR[1], FIFO_RD_PTR[0]}), .TX(D_I_BIBUF_4_net), .OE(
        E_I_BIBUF_4_net), .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net), 
        .EYE_MONITOR_LANE_WIDTH({EYE_MONITOR_LANE_WIDTH[2], 
        EYE_MONITOR_LANE_WIDTH[1], EYE_MONITOR_LANE_WIDTH[0]}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc49, nc50, nc51, nc52, 
        nc53, nc54, nc55, nc56, nc57, nc58, nc59}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    IOD #( .DATA_RATE(1333.332), .FORMAL_NAME("DQ6"), .INTERFACE_NAME("DDR4")
        , .DELAY_LINE_SIMULATION_MODE("ENABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b1)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b11)
        , .RX_MODE(4'b1100), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b1)
        , .FIFO_WR_EN(1'b1), .EYE_MONITOR_EN(1'b1), .TX_MODE(7'b1000100)
        , .TX_CLK_SEL(2'b10), .TX_OE_MODE(3'b010), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b1), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_6 (
        .EYE_MONITOR_EARLY(EYE_MONITOR_EARLY_6), .EYE_MONITOR_LATE(
        EYE_MONITOR_LATE_6), .RX_DATA({RX_DATA_6[7], RX_DATA_6[6], 
        RX_DATA_6[5], RX_DATA_6[4], RX_DATA_6[3], RX_DATA_6[2], 
        RX_DATA_6[1], RX_DATA_6[0], nc60, RX_BYPASS_DATA_6}), 
        .DELAY_LINE_OUT_OF_RANGE(DELAY_LINE_OUT_OF_RANGE_6), .TX_DATA({
        TX_DATA_6[7], TX_DATA_6[6], TX_DATA_6[5], TX_DATA_6[4], 
        TX_DATA_6[3], TX_DATA_6[2], TX_DATA_6[1], TX_DATA_6[0]}), 
        .OE_DATA({OE_DATA_6[3], OE_DATA_6[2], OE_DATA_6[1], 
        OE_DATA_6[0]}), .RX_BIT_SLIP(GND_net), 
        .EYE_MONITOR_CLEAR_FLAGS(EYE_MONITOR_CLEAR_FLAGS_6), 
        .DELAY_LINE_MOVE(DELAY_LINE_MOVE_6), .DELAY_LINE_DIRECTION(
        DELAY_LINE_DIRECTION_6), .DELAY_LINE_LOAD(DELAY_LINE_LOAD_6), 
        .RX_CLK(FAB_CLK), .TX_CLK(FAB_CLK), .ODT_EN(ODT_EN_6), 
        .INFF_SL(GND_net), .INFF_EN(GND_net), .OUTFF_SL(GND_net), 
        .OUTFF_EN(GND_net), .AL_N(GND_net), .OEFF_LAT_N(GND_net), 
        .OEFF_SD_N(GND_net), .OEFF_AD_N(), .INFF_LAT_N(GND_net), 
        .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), .OUTFF_LAT_N(GND_net)
        , .OUTFF_SD_N(GND_net), .OUTFF_AD_N(), .RX_P(Y_I_BIBUF_6_net), 
        .RX_N(), .TX_DATA_9(GND_net), .TX_DATA_8(GND_net), .ARST_N(
        ARST_N), .RX_SYNC_RST(RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), 
        .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, GND_net, 
        HS_IO_CLK[0]}), .RX_DQS_90({GND_net, RX_DQS_90[0]}), .TX_DQS(
        TX_DQS), .TX_DQS_270(GND_net), .FIFO_WR_PTR({FIFO_WR_PTR[2], 
        FIFO_WR_PTR[1], FIFO_WR_PTR[0]}), .FIFO_RD_PTR({FIFO_RD_PTR[2], 
        FIFO_RD_PTR[1], FIFO_RD_PTR[0]}), .TX(D_I_BIBUF_6_net), .OE(
        E_I_BIBUF_6_net), .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net), 
        .EYE_MONITOR_LANE_WIDTH({EYE_MONITOR_LANE_WIDTH[2], 
        EYE_MONITOR_LANE_WIDTH[1], EYE_MONITOR_LANE_WIDTH[0]}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc61, nc62, nc63, nc64, 
        nc65, nc66, nc67, nc68, nc69, nc70, nc71}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    IOD #( .DATA_RATE(1333.332), .FORMAL_NAME("DQ1"), .INTERFACE_NAME("DDR4")
        , .DELAY_LINE_SIMULATION_MODE("ENABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b1)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b11)
        , .RX_MODE(4'b1100), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b1)
        , .FIFO_WR_EN(1'b1), .EYE_MONITOR_EN(1'b1), .TX_MODE(7'b1000100)
        , .TX_CLK_SEL(2'b10), .TX_OE_MODE(3'b010), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b1), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_1 (
        .EYE_MONITOR_EARLY(EYE_MONITOR_EARLY_1), .EYE_MONITOR_LATE(
        EYE_MONITOR_LATE_1), .RX_DATA({RX_DATA_1[7], RX_DATA_1[6], 
        RX_DATA_1[5], RX_DATA_1[4], RX_DATA_1[3], RX_DATA_1[2], 
        RX_DATA_1[1], RX_DATA_1[0], nc72, RX_BYPASS_DATA_1}), 
        .DELAY_LINE_OUT_OF_RANGE(DELAY_LINE_OUT_OF_RANGE_1), .TX_DATA({
        TX_DATA_1[7], TX_DATA_1[6], TX_DATA_1[5], TX_DATA_1[4], 
        TX_DATA_1[3], TX_DATA_1[2], TX_DATA_1[1], TX_DATA_1[0]}), 
        .OE_DATA({OE_DATA_1[3], OE_DATA_1[2], OE_DATA_1[1], 
        OE_DATA_1[0]}), .RX_BIT_SLIP(GND_net), 
        .EYE_MONITOR_CLEAR_FLAGS(EYE_MONITOR_CLEAR_FLAGS_1), 
        .DELAY_LINE_MOVE(DELAY_LINE_MOVE_1), .DELAY_LINE_DIRECTION(
        DELAY_LINE_DIRECTION_1), .DELAY_LINE_LOAD(DELAY_LINE_LOAD_1), 
        .RX_CLK(FAB_CLK), .TX_CLK(FAB_CLK), .ODT_EN(ODT_EN_1), 
        .INFF_SL(GND_net), .INFF_EN(GND_net), .OUTFF_SL(GND_net), 
        .OUTFF_EN(GND_net), .AL_N(GND_net), .OEFF_LAT_N(GND_net), 
        .OEFF_SD_N(GND_net), .OEFF_AD_N(), .INFF_LAT_N(GND_net), 
        .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), .OUTFF_LAT_N(GND_net)
        , .OUTFF_SD_N(GND_net), .OUTFF_AD_N(), .RX_P(Y_I_BIBUF_1_net), 
        .RX_N(), .TX_DATA_9(GND_net), .TX_DATA_8(GND_net), .ARST_N(
        ARST_N), .RX_SYNC_RST(RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), 
        .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, GND_net, 
        HS_IO_CLK[0]}), .RX_DQS_90({GND_net, RX_DQS_90[0]}), .TX_DQS(
        TX_DQS), .TX_DQS_270(GND_net), .FIFO_WR_PTR({FIFO_WR_PTR[2], 
        FIFO_WR_PTR[1], FIFO_WR_PTR[0]}), .FIFO_RD_PTR({FIFO_RD_PTR[2], 
        FIFO_RD_PTR[1], FIFO_RD_PTR[0]}), .TX(D_I_BIBUF_1_net), .OE(
        E_I_BIBUF_1_net), .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net), 
        .EYE_MONITOR_LANE_WIDTH({EYE_MONITOR_LANE_WIDTH[2], 
        EYE_MONITOR_LANE_WIDTH[1], EYE_MONITOR_LANE_WIDTH[0]}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc73, nc74, nc75, nc76, 
        nc77, nc78, nc79, nc80, nc81, nc82, nc83}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    BIBUF I_BIBUF_3 (.D(D_I_BIBUF_3_net), .E(E_I_BIBUF_3_net), .Y(
        Y_I_BIBUF_3_net), .PAD(PAD[3]));
    IOD #( .DATA_RATE(1333.332), .FORMAL_NAME("DQ5"), .INTERFACE_NAME("DDR4")
        , .DELAY_LINE_SIMULATION_MODE("ENABLED"), .RESERVED_0(1'b0), .RX_CLK_EN(1'b1)
        , .RX_CLK_INV(1'b0), .TX_CLK_EN(1'b1), .TX_CLK_INV(1'b0), .HS_IO_CLK_SEL(3'b000)
        , .QDR_EN(1'b0), .EDGE_DETECT_EN(1'b0), .DELAY_LINE_MODE(2'b11)
        , .RX_MODE(4'b1100), .EYE_MONITOR_MODE(1'b0), .DYN_DELAY_LINE_EN(1'b1)
        , .FIFO_WR_EN(1'b1), .EYE_MONITOR_EN(1'b1), .TX_MODE(7'b1000100)
        , .TX_CLK_SEL(2'b10), .TX_OE_MODE(3'b010), .TX_OE_CLK_INV(1'b0)
        , .RX_DELAY_VAL(8'b00000001), .RX_DELAY_VAL_X2(1'b0), .TX_DELAY_VAL(8'b00000001)
        , .EYE_MONITOR_WIDTH(3'b001), .EYE_MONITOR_WIDTH_SRC(1'b1), .RESERVED_1(1'b0)
        , .DISABLE_LANECTRL_RESET(1'b0), .INPUT_DELAY_SEL(2'b00), .OEFF_EN_INV(1'b0)
        , .INFF_EN_INV(1'b0), .OUTFF_EN_INV(1'b0) )  I_IOD_5 (
        .EYE_MONITOR_EARLY(EYE_MONITOR_EARLY_5), .EYE_MONITOR_LATE(
        EYE_MONITOR_LATE_5), .RX_DATA({RX_DATA_5[7], RX_DATA_5[6], 
        RX_DATA_5[5], RX_DATA_5[4], RX_DATA_5[3], RX_DATA_5[2], 
        RX_DATA_5[1], RX_DATA_5[0], nc84, RX_BYPASS_DATA_5}), 
        .DELAY_LINE_OUT_OF_RANGE(DELAY_LINE_OUT_OF_RANGE_5), .TX_DATA({
        TX_DATA_5[7], TX_DATA_5[6], TX_DATA_5[5], TX_DATA_5[4], 
        TX_DATA_5[3], TX_DATA_5[2], TX_DATA_5[1], TX_DATA_5[0]}), 
        .OE_DATA({OE_DATA_5[3], OE_DATA_5[2], OE_DATA_5[1], 
        OE_DATA_5[0]}), .RX_BIT_SLIP(GND_net), 
        .EYE_MONITOR_CLEAR_FLAGS(EYE_MONITOR_CLEAR_FLAGS_5), 
        .DELAY_LINE_MOVE(DELAY_LINE_MOVE_5), .DELAY_LINE_DIRECTION(
        DELAY_LINE_DIRECTION_5), .DELAY_LINE_LOAD(DELAY_LINE_LOAD_5), 
        .RX_CLK(FAB_CLK), .TX_CLK(FAB_CLK), .ODT_EN(ODT_EN_5), 
        .INFF_SL(GND_net), .INFF_EN(GND_net), .OUTFF_SL(GND_net), 
        .OUTFF_EN(GND_net), .AL_N(GND_net), .OEFF_LAT_N(GND_net), 
        .OEFF_SD_N(GND_net), .OEFF_AD_N(), .INFF_LAT_N(GND_net), 
        .INFF_SD_N(GND_net), .INFF_AD_N(GND_net), .OUTFF_LAT_N(GND_net)
        , .OUTFF_SD_N(GND_net), .OUTFF_AD_N(), .RX_P(Y_I_BIBUF_5_net), 
        .RX_N(), .TX_DATA_9(GND_net), .TX_DATA_8(GND_net), .ARST_N(
        ARST_N), .RX_SYNC_RST(RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), 
        .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, GND_net, 
        HS_IO_CLK[0]}), .RX_DQS_90({GND_net, RX_DQS_90[0]}), .TX_DQS(
        TX_DQS), .TX_DQS_270(GND_net), .FIFO_WR_PTR({FIFO_WR_PTR[2], 
        FIFO_WR_PTR[1], FIFO_WR_PTR[0]}), .FIFO_RD_PTR({FIFO_RD_PTR[2], 
        FIFO_RD_PTR[1], FIFO_RD_PTR[0]}), .TX(D_I_BIBUF_5_net), .OE(
        E_I_BIBUF_5_net), .CDR_CLK(GND_net), .CDR_NEXT_CLK(GND_net), 
        .EYE_MONITOR_LANE_WIDTH({EYE_MONITOR_LANE_WIDTH[2], 
        EYE_MONITOR_LANE_WIDTH[1], EYE_MONITOR_LANE_WIDTH[0]}), 
        .DDR_DO_READ(), .CDR_CLK_A_SEL_8(), .CDR_CLK_A_SEL_9(), 
        .CDR_CLK_A_SEL_10(), .CDR_CLK_B_SEL({nc85, nc86, nc87, nc88, 
        nc89, nc90, nc91, nc92, nc93, nc94, nc95}), .SWITCH(), 
        .CDR_CLR_NEXT_CLK_N(), .TX_DATA_OUT_9(), .TX_DATA_OUT_8(), 
        .AL_N_OUT(), .OUTFF_SL_OUT(), .OUTFF_EN_OUT(), .INFF_SL_OUT(), 
        .INFF_EN_OUT(), .RX_CLK_OUT(), .TX_CLK_OUT());
    BIBUF I_BIBUF_6 (.D(D_I_BIBUF_6_net), .E(E_I_BIBUF_6_net), .Y(
        Y_I_BIBUF_6_net), .PAD(PAD[6]));
    BIBUF I_BIBUF_0 (.D(D_I_BIBUF_0_net), .E(E_I_BIBUF_0_net), .Y(
        Y_I_BIBUF_0_net), .PAD(PAD[0]));
    
endmodule
