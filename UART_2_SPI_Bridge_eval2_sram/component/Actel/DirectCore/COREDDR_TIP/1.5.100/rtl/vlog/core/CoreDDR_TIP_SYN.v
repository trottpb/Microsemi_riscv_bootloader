module COREDDR_TIP #(
    // parameters
    parameter FAMILY              =  26,
    parameter FIFO_ADDRESS_WIDTH  =  64,
    parameter FIFO_DEPTH          =   2,
    parameter IOG_DQS_LANES       =   2,
    parameter NUM_BCLKS           =   1,
    parameter IOG_DQ_WIDTH_L0     =   8,
    parameter IOG_DQ_WIDTH_L1     =   8,
    parameter IOG_DQ_WIDTH_L2     =   8,
    parameter IOG_DQ_WIDTH_L3     =   8,
    parameter IOG_DQ_WIDTH_L4     =   8,
    parameter IOG_DQ_WIDTH_L5     =   8,
    parameter IOG_DQ_WIDTH_L6     =   8,
    parameter IOG_DQ_WIDTH_L7     =   8,
    parameter IOG_DQ_WIDTH_L8     =   8,
    parameter SIM_TRAINING        =   0
    //parameter [6:0] VREF_MR6_VALUE  = 0
    ) (
        
    input SCLK,
    input RESET_N,

    // Not used in current solution 
    // => Tie-off APB interface [DONE by packaging]
    input  [15:0] PADDR,
    input         PENABLE,
    output [7:0]  PRDATA,
    output        PREADY,
    input         PSEL,
    input  [7:0]  PWDATA,
    input         PWRITE,

    // Not used by TIP for now (no use model at this time)
    // => Promote to top [DONE]
    // => tieoff DLL_DLY_DIFF to 'GND' at next level [DONE]
    output                     CODE_UPDATE,
    input                      DLL_DLY_DIFF,

    // PLL/TIP 
    // => Promote to top [DONE]
    // => Connect to PLL [DONE]
    input                  PLL_LOCK,
    output [NUM_BCLKS-1:0] LOADPHS_B,
    output [NUM_BCLKS-1:0] VCO_PHSEL_BCLK_SEL,
    output [NUM_BCLKS-1:0] VCO_PHSEL_BCLK90_SEL,
    output                 VCO_PHSEL_REFCLK_SEL,
    output [NUM_BCLKS-1:0] VCO_PHSEL_ROTATE,

    // Connected to LANECTRL ODT_EN port [DONE]
    output [IOG_DQS_LANES-1:0] ODT_DYN_LANE,

    // Tie-off to '10101010' (0xAA) [DONE]
    input  [7:0]               TRAINING_PATTERN,

    // Unused [DONE] => Debug/User signal?
    output [IOG_DQS_LANES-1:0] RD_TRAINING_ERROR,

    //   TWO_RANKS = '0' if 1 rank, 1 is 2 ranks [DONE]
    //   SWITCH output of READ_TRAINING IOD goes to SWITCH in of LANECTRL [DONE]
    input TWO_RANKS,

    output [IOG_DQS_LANES*3-1:0] CLK_SEL,

    output [IOG_DQS_LANES-1:0] INIT_PAUSE,
    output                     INIT_RESET,

    input  [IOG_DQS_LANES-1:0] BURST_DETECT,

    output REFCLK_EYE_MONITOR_CLR_FLAGS,
    input  REFCLK_EYE_MONITOR_EARLY,
    input  REFCLK_EYE_MONITOR_LATE,
    output REFCLK_DELAY_LINE_MOVE,
    output REFCLK_DELAY_LINE_DIRECTION,
    output REFCLK_DELAY_LINE_LOAD,
    input  REFCLK_IGEAR_RX8,

    output [NUM_BCLKS-1:0] BCLK_EYE_MONITOR_CLR_FLAGS,
    input  [NUM_BCLKS-1:0] BCLK_EYE_MONITOR_EARLY,
    input  [NUM_BCLKS-1:0] BCLK_EYE_MONITOR_LATE,

    output CMD_EYE_MONITOR_CLR_FLAGS,
    input  CMD_EYE_MONITOR_EARLY,
    input  CMD_EYE_MONITOR_LATE,
    output CMD_DELAY_LINE_MOVE,
    output CMD_DELAY_LINE_MOVE_TRN,
    output CMD_DELAY_LINE_DIRECTION,
    output CMD_DELAY_LINE_LOAD,

    // Goes to A13 OE_DATA[3:0] [DONE]
    output CMD_OE,

    // LOCAL VREF training not needed in current solution for DDR3 [DONE]
    // REMOTE VREF training MUST for FFR4. Not in TIP yet.
    output VREF_MOVE,
    output VREF_DIRECTION,
    output VREF_RELOAD,
    input  VREF_OUT_OF_RANGE,

    // DQSW training [DONE]
    output [IOG_DQS_LANES-1:0]   DQSW_EYE_MONITOR_CLR_FLAGS,
    input  [IOG_DQS_LANES-1:0]   DQSW_EYE_MONITOR_EARLY,
    input  [IOG_DQS_LANES-1:0]   DQSW_EYE_MONITOR_LATE,
    output [IOG_DQS_LANES-1:0]   DQSW_DELAY_LINE_MOVE,
    output [IOG_DQS_LANES-1:0]   DQSW_DELAY_LINE_DIRECTION,
    output [IOG_DQS_LANES-1:0]   DQSW_DELAY_LINE_LOAD,
    input  [IOG_DQS_LANES-1:0]   DQSW_DELAY_LINE_OOR,
    output [IOG_DQS_LANES*8-1:0] DQSW_SELA,

    // DQSW270 training [DONE]
    output [IOG_DQS_LANES-1:0] DQSW270_EYE_MONITOR_CLR_FLAGS,
    input  [IOG_DQS_LANES-1:0] DQSW270_EYE_MONITOR_EARLY,
    input  [IOG_DQS_LANES-1:0] DQSW270_EYE_MONITOR_LATE,
    output [IOG_DQS_LANES-1:0] DQSW270_DELAY_LINE_MOVE,
    output [IOG_DQS_LANES-1:0] DQSW270_DELAY_LINE_DIRECTION,
    output [IOG_DQS_LANES-1:0] DQSW270_DELAY_LINE_LOAD,
    input  [IOG_DQS_LANES-1:0] DQSW270_DELAY_LINE_OOR,
    input  [IOG_DQS_LANES-1:0] DQSW270_IGEAR_RX8,

    input  [IOG_DQS_LANES*9-1:0] RX_OUT_OF_RANGE,
    input  [IOG_DQS_LANES*9-1:0] TX_OUT_OF_RANGE,
    output [IOG_DQS_LANES*9-1:0] MOVE,
    output [IOG_DQS_LANES*9-1:0] DIRECTION,
    output [IOG_DQS_LANES*9-1:0] LOAD,
    output [IOG_DQS_LANES-1:0]   DELAY_LINE_SEL_RD,

    // RDATA Training
    input  [IOG_DQS_LANES*8-1:0]   PAD_RDDATA,
    input  [IOG_DQS_LANES*8*8-1:0] IOG_RDDATA,
    input  [IOG_DQS_LANES-1:0]     IOG_RDDATA_VALID,
    output [IOG_DQS_LANES*8*2-1:0] DFI_RDDATA_W0,
    output [IOG_DQS_LANES*8*2-1:0] DFI_RDDATA_W1,
    output [IOG_DQS_LANES*8*2-1:0] DFI_RDDATA_W2,
    output [IOG_DQS_LANES*8*2-1:0] DFI_RDDATA_W3,
    output                         DFI_RDDATA_VALID_W0,
    output                         DFI_RDDATA_VALID_W1,
    output                         DFI_RDDATA_VALID_W2,
    output                         DFI_RDDATA_VALID_W3,

    input [IOG_DQS_LANES*2-1:0]    DFI_WRDATA_MASK_P0,
    input [IOG_DQS_LANES*2-1:0]    DFI_WRDATA_MASK_P1,
    input [IOG_DQS_LANES*2-1:0]    DFI_WRDATA_MASK_P2,
    input [IOG_DQS_LANES*2-1:0]    DFI_WRDATA_MASK_P3,
    input                          DFI_ADDRESS_P0,
    input                          DFI_ADDRESS_P1,
    input                          DFI_ADDRESS_P2,
    input                          DFI_ADDRESS_P3,
    output [IOG_DQS_LANES*2-1:0]   IOG_WRDATA_MASK_P0,
    output [IOG_DQS_LANES*2-1:0]   IOG_WRDATA_MASK_P1,
    output [IOG_DQS_LANES*2-1:0]   IOG_WRDATA_MASK_P2,
    output [IOG_DQS_LANES*2-1:0]   IOG_WRDATA_MASK_P3,
    output                         IOG_ADDRESS_P0,
    output                         IOG_ADDRESS_P1,
    output                         IOG_ADDRESS_P2,
    output                         IOG_ADDRESS_P3,

    input  DFI_RDLVL_EN,
    input  DFI_RDLVL_GATE_EN,
    input  DFI_WRLVL_EN,
    input  DFI_WRLVL_STROBE,

    input  DFI_INIT_START,
    output DFI_INIT_COMPLETE,
    output DFI_TRAINING_COMPLETE,

    input  DFI_RDLVL_CS_0_N,
    input  DFI_RDLVL_CS_1_N,
    input  DFI_WRLVL_CS_0_N,
    input  DFI_WRLVL_CS_1_N,

    // TIP to NWL [DONE] - DEBUG -
    output [IOG_DQS_LANES-1:0] DFI_RDLVL_RESP,
    output [IOG_DQS_LANES-1:0] DFI_WRLVL_RESP,

    input  DFI_CTRLUPD_REQ,

    input  DFI_RDDATA_CS_0_N_P0,
    input  DFI_RDDATA_CS_1_N_P0,
    input  DFI_RDDATA_CS_0_N_P1,
    input  DFI_RDDATA_CS_1_N_P1,
    input  DFI_RDDATA_CS_0_N_P2,
    input  DFI_RDDATA_CS_1_N_P2,
    input  DFI_RDDATA_CS_0_N_P3,
    input  DFI_RDDATA_CS_1_N_P3,

    input  DFI_WRDATA_CS_0_N_P0,
    input  DFI_WRDATA_CS_1_N_P0,
    input  DFI_WRDATA_CS_0_N_P1,
    input  DFI_WRDATA_CS_1_N_P1,
    input  DFI_WRDATA_CS_0_N_P2,
    input  DFI_WRDATA_CS_1_N_P2,
    input  DFI_WRDATA_CS_0_N_P3,
    input  DFI_WRDATA_CS_1_N_P3,

    // Map to PHY:DFI_RDDATA_EN_P0[0] [DONE]
    input  DFI_RDDATA_EN_P0,
    input  DFI_RDDATA_EN_P1,
    input  DFI_RDDATA_EN_P2,
    input  DFI_RDDATA_EN_P3,

    // Map to PHY:DFI_WRDATA_EN_P0[0] [DONE]
    input  DFI_WRDATA_EN_P0,
    input  DFI_WRDATA_EN_P1,
    input  DFI_WRDATA_EN_P2,
    input  DFI_WRDATA_EN_P3,

    // Goes to READ_TRAINING TX_DATA[7:0] [DONE]
    output [IOG_DQS_LANES-1:0] IOG_RDDATA_EN_P0_P,
    output [IOG_DQS_LANES-1:0] IOG_RDDATA_EN_P0_N,
    output [IOG_DQS_LANES-1:0] IOG_RDDATA_EN_P1_P,
    output [IOG_DQS_LANES-1:0] IOG_RDDATA_EN_P1_N,
    output [IOG_DQS_LANES-1:0] IOG_RDDATA_EN_P2_P,
    output [IOG_DQS_LANES-1:0] IOG_RDDATA_EN_P2_N,
    output [IOG_DQS_LANES-1:0] IOG_RDDATA_EN_P3_P,
    output [IOG_DQS_LANES-1:0] IOG_RDDATA_EN_P3_N,

    // Goes to all DQ OE_DATA[3:0] in a lane [DONE]
    output [IOG_DQS_LANES-1:0] IOG_OE_P0,
    output [IOG_DQS_LANES-1:0] IOG_OE_P1,
    output [IOG_DQS_LANES-1:0] IOG_OE_P2,
    output [IOG_DQS_LANES-1:0] IOG_OE_P3,

    // Goes to DQS OE_DATA[3:0] in a lane [DONE]
    output [IOG_DQS_LANES-1:0] DQS_OE_P0,
    output [IOG_DQS_LANES-1:0] DQS_OE_P1,
    output [IOG_DQS_LANES-1:0] DQS_OE_P2,
    output [IOG_DQS_LANES-1:0] DQS_OE_P3,

    // Goes to DM OE_DATA[3:0] in a lane [DONE]
    output [IOG_DQS_LANES-1:0] DM_OE_P0,
    output [IOG_DQS_LANES-1:0] DM_OE_P1,
    output [IOG_DQS_LANES-1:0] DM_OE_P2,
    output [IOG_DQS_LANES-1:0] DM_OE_P3,
    
    // AS: ADDED NEW PORTS FOR SAR http://bugzilla/show_bug.cgi?id=85957
    // IN ORDER TO OBVIATE THE USE OF EYE MONITOR FLAGS
    // EYE MONITOR FLAGS REMAIN FOR LEGACY PURPOSES / IN CASE
    // SILICON FIX COMES IN FOR REV D
    input [4*NUM_BCLKS-1:0]         BCLK_IGEAR_RX,
    input                           CMD_IGEAR_RX8,
    input [IOG_DQS_LANES*2-1:0]     DQSW270_IGEAR_RX,
    input [IOG_DQS_LANES*2-1:0]     DQSW_IGEAR_RX,
    output                          CMD_RESET_LANE,
    
    // AS: ADDED SKIP_* SIGNALS
    input                           SKIP_DQSW_TRN,
    input                           SKIP_BCLK_TRN,
    input                           SKIP_CA_TRN,
    input                           SKIP_WRLVL_TRN,
    input                           SKIP_RDLVL_TRN,
    
    // AS: added configuration ports
    input [2:0]                     ADDR_VCOPHS_OFFSET,
    input [2:0]                     BCLK_VCOPHS_OFFSET,
    input [6:0]                     WRLVL_TAP_OFFSET,
    
    // AS: added VREF training signals
    output                          CAL_INIT_MR_W_REQ,
    output [ 7:0]                   CAL_INIT_MR_ADDR,
    output [17:0]                   CAL_INIT_MR_WR_DATA,
    output [17:0]                   CAL_INIT_MR_WR_MASK,
    input                           CAL_INIT_ACK,
    output [1:0]                    CAL_INIT_CS,
    input                           SKIP_VREF_TRAINING,
    input                           PCLK,
    input  [6:0]                    VREF_MR6_VALUE,
    input                           CTRLR_READY_IN,
    output                          CTRLR_READY_OUT,
    
    // AS: added 6/8 for write callibration
    input  [IOG_DQS_LANES*64-1:0]    IOG_DQ_TXDATA_IN,
    output [IOG_DQS_LANES*64-1:0]    IOG_DQ_TXDATA_OUT,
    input  [IOG_DQS_LANES*8-1:0]     IOG_DM_TXDATA_IN,
    output [IOG_DQS_LANES*8-1:0]     IOG_DM_TXDATA_OUT,
    
    output                                CAL_L_R_REQ,                // to NWL CTRLR
    output                                CAL_L_W_REQ,                // to NWL CTRLR
    output [IOG_DQS_LANES*64-1:0]         CAL_L_DATAIN,               // to NWL CTRLR
    output [IOG_DQS_LANES*8-1:0]          CAL_L_DM_IN,                // to NWL CTRLR
    input                                 CAL_L_BUSY,                 // to NWL CTRLR
    input                                 CAL_L_D_REQ,                // to NWL CTRLR
    input  [IOG_DQS_LANES*64-1:0]         CAL_L_DATAOUT,              // to NWL CTRLR
    input                                 CAL_L_R_VALID,              // to NWL CTRLR  
    output                                CAL_SELECT,                 // to NWL CTRLR
    input [9:0]                           ADDR_WAIT_COUNT,
    input [7:0]                           WRCAL_WRITE_COUNTER_VALUE,
    input [9:0]                           RDGATE_MIN_READS_THRESHOLD,
    output [3:0]                          ITER_COUNT

    );
    
    COREDDR_TIP_INT # (
      .FAMILY            (FAMILY            ),
      .IOG_DQS_LANES     (IOG_DQS_LANES     ),
      .FIFO_DEPTH        (FIFO_DEPTH        ),
      .FIFO_ADDRESS_WIDTH(FIFO_ADDRESS_WIDTH),
      .NUM_BCLKS         (NUM_BCLKS         ),
      .IOG_DQ_WIDTH_L0   (IOG_DQ_WIDTH_L0   ),
      .IOG_DQ_WIDTH_L1   (IOG_DQ_WIDTH_L1   ),
      .IOG_DQ_WIDTH_L2   (IOG_DQ_WIDTH_L2   ),
      .IOG_DQ_WIDTH_L3   (IOG_DQ_WIDTH_L3   ),
      .IOG_DQ_WIDTH_L4   (IOG_DQ_WIDTH_L4   ),
      .IOG_DQ_WIDTH_L5   (IOG_DQ_WIDTH_L5   ),
      .IOG_DQ_WIDTH_L6   (IOG_DQ_WIDTH_L6   ),
      .IOG_DQ_WIDTH_L7   (IOG_DQ_WIDTH_L7   ),
      .IOG_DQ_WIDTH_L8   (IOG_DQ_WIDTH_L8   )
      //.VREF_MR6_VALUE    (VREF_MR6_VALUE    )
    
    ) COREDDR_TIP_INT_U (
    /*autoinst*/
                                       // Outputs
                                       .DFI_INIT_COMPLETE(DFI_INIT_COMPLETE),
                                       .DFI_RDLVL_RESP  (DFI_RDLVL_RESP[IOG_DQS_LANES-1:0]),
                                       .DFI_TRAINING_COMPLETE(DFI_TRAINING_COMPLETE),
                                       .DFI_WRLVL_RESP  (DFI_WRLVL_RESP[IOG_DQS_LANES-1:0]),
                                       .RD_TRAINING_ERROR(RD_TRAINING_ERROR[IOG_DQS_LANES-1:0]),
                                       .BCLK_EYE_MONITOR_CLR_FLAGS(BCLK_EYE_MONITOR_CLR_FLAGS[NUM_BCLKS-1:0]),
                                       .CLK_SEL         (CLK_SEL[IOG_DQS_LANES*3-1:0]),
                                       .DELAY_LINE_SEL_RD(DELAY_LINE_SEL_RD[IOG_DQS_LANES-1:0]),
                                       .DIRECTION       (DIRECTION[IOG_DQS_LANES*9-1:0]),
                                       .IOG_OE_P0       (IOG_OE_P0[IOG_DQS_LANES-1:0]),
                                       .IOG_OE_P1       (IOG_OE_P1[IOG_DQS_LANES-1:0]),
                                       .IOG_OE_P2       (IOG_OE_P2[IOG_DQS_LANES-1:0]),
                                       .IOG_OE_P3       (IOG_OE_P3[IOG_DQS_LANES-1:0]),
                                       .DQS_OE_P0       (DQS_OE_P0[IOG_DQS_LANES-1:0]),
                                       .DQS_OE_P1       (DQS_OE_P1[IOG_DQS_LANES-1:0]),
                                       .DQS_OE_P2       (DQS_OE_P2[IOG_DQS_LANES-1:0]),
                                       .DQS_OE_P3       (DQS_OE_P3[IOG_DQS_LANES-1:0]),
                                       .DM_OE_P0        (DM_OE_P0[IOG_DQS_LANES-1:0]),
                                       .DM_OE_P1        (DM_OE_P1[IOG_DQS_LANES-1:0]),
                                       .DM_OE_P2        (DM_OE_P2[IOG_DQS_LANES-1:0]),
                                       .DM_OE_P3        (DM_OE_P3[IOG_DQS_LANES-1:0]),
                                       .LOAD            (LOAD[IOG_DQS_LANES*9-1:0]),
                                       .MOVE            (MOVE[IOG_DQS_LANES*9-1:0]),
                                       .REFCLK_EYE_MONITOR_CLR_FLAGS(REFCLK_EYE_MONITOR_CLR_FLAGS),
                                       .IOG_RDDATA_EN_P0_P(IOG_RDDATA_EN_P0_P[IOG_DQS_LANES-1:0]),
                                       .IOG_RDDATA_EN_P0_N(IOG_RDDATA_EN_P0_N[IOG_DQS_LANES-1:0]),
                                       .IOG_RDDATA_EN_P1_P(IOG_RDDATA_EN_P1_P[IOG_DQS_LANES-1:0]),
                                       .IOG_RDDATA_EN_P1_N(IOG_RDDATA_EN_P1_N[IOG_DQS_LANES-1:0]),
                                       .IOG_RDDATA_EN_P2_P(IOG_RDDATA_EN_P2_P[IOG_DQS_LANES-1:0]),
                                       .IOG_RDDATA_EN_P2_N(IOG_RDDATA_EN_P2_N[IOG_DQS_LANES-1:0]),
                                       .IOG_RDDATA_EN_P3_P(IOG_RDDATA_EN_P3_P[IOG_DQS_LANES-1:0]),
                                       .IOG_RDDATA_EN_P3_N(IOG_RDDATA_EN_P3_N[IOG_DQS_LANES-1:0]),
                                       .PRDATA          (PRDATA[7:0]),
                                       .PREADY          (PREADY),
                                       .ODT_DYN_LANE    (ODT_DYN_LANE[IOG_DQS_LANES-1:0]),
                                       .CODE_UPDATE     (CODE_UPDATE),
                                       .LOADPHS_B       (LOADPHS_B[NUM_BCLKS-1:0]),
                                       .VCO_PHSEL_BCLK_SEL(VCO_PHSEL_BCLK_SEL[NUM_BCLKS-1:0]),
                                       .VCO_PHSEL_REFCLK_SEL(VCO_PHSEL_REFCLK_SEL),
                                       .VCO_PHSEL_ROTATE(VCO_PHSEL_ROTATE[NUM_BCLKS-1:0]),
                                       .VREF_DIRECTION  (VREF_DIRECTION),
                                       .VREF_MOVE       (VREF_MOVE),
                                       .VREF_RELOAD     (VREF_RELOAD),
                                       .DFI_RDDATA_W0   (DFI_RDDATA_W0[IOG_DQS_LANES*16-1:0]),
                                       .DFI_RDDATA_W1   (DFI_RDDATA_W1[IOG_DQS_LANES*16-1:0]),
                                       .DFI_RDDATA_W2   (DFI_RDDATA_W2[IOG_DQS_LANES*16-1:0]),
                                       .DFI_RDDATA_W3   (DFI_RDDATA_W3[IOG_DQS_LANES*16-1:0]),
                                       .DFI_RDDATA_VALID_W0(DFI_RDDATA_VALID_W0),
                                       .DFI_RDDATA_VALID_W1(DFI_RDDATA_VALID_W1),
                                       .DFI_RDDATA_VALID_W2(DFI_RDDATA_VALID_W2),
                                       .DFI_RDDATA_VALID_W3(DFI_RDDATA_VALID_W3),
                                       .VCO_PHSEL_BCLK90_SEL(VCO_PHSEL_BCLK90_SEL[NUM_BCLKS-1:0]),
                                       .DQSW_EYE_MONITOR_CLR_FLAGS(DQSW_EYE_MONITOR_CLR_FLAGS[IOG_DQS_LANES-1:0]),
                                       .DQSW270_EYE_MONITOR_CLR_FLAGS(DQSW270_EYE_MONITOR_CLR_FLAGS[IOG_DQS_LANES-1:0]),
                                       .DQSW_DELAY_LINE_LOAD(DQSW_DELAY_LINE_LOAD[IOG_DQS_LANES-1:0]),
                                       .DQSW_DELAY_LINE_MOVE(DQSW_DELAY_LINE_MOVE[IOG_DQS_LANES-1:0]),
                                       .DQSW_DELAY_LINE_DIRECTION(DQSW_DELAY_LINE_DIRECTION[IOG_DQS_LANES-1:0]),
                                       .DQSW270_DELAY_LINE_LOAD(DQSW270_DELAY_LINE_LOAD[IOG_DQS_LANES-1:0]),
                                       .DQSW270_DELAY_LINE_MOVE(DQSW270_DELAY_LINE_MOVE[IOG_DQS_LANES-1:0]),
                                       .DQSW270_DELAY_LINE_DIRECTION(DQSW270_DELAY_LINE_DIRECTION[IOG_DQS_LANES-1:0]),
                                       .REFCLK_DELAY_LINE_LOAD(REFCLK_DELAY_LINE_LOAD),
                                       .REFCLK_DELAY_LINE_MOVE(REFCLK_DELAY_LINE_MOVE),
                                       .REFCLK_DELAY_LINE_DIRECTION(REFCLK_DELAY_LINE_DIRECTION),
                                       .CMD_EYE_MONITOR_CLR_FLAGS(CMD_EYE_MONITOR_CLR_FLAGS),
                                       .CMD_DELAY_LINE_LOAD(CMD_DELAY_LINE_LOAD),
                                       .CMD_DELAY_LINE_MOVE(CMD_DELAY_LINE_MOVE),
                                       .CMD_DELAY_LINE_DIRECTION(CMD_DELAY_LINE_DIRECTION),
                                       .DQSW_SELA       (DQSW_SELA[IOG_DQS_LANES*8-1:0]),
                                       .CMD_OE          (CMD_OE),
                                       .CMD_DELAY_LINE_MOVE_TRN(CMD_DELAY_LINE_MOVE_TRN),
                                       .INIT_PAUSE      (INIT_PAUSE[IOG_DQS_LANES-1:0]),
                                       .INIT_RESET      (INIT_RESET),
                                       .IOG_WRDATA_MASK_P0(IOG_WRDATA_MASK_P0[IOG_DQS_LANES*2-1:0]),
                                       .IOG_WRDATA_MASK_P1(IOG_WRDATA_MASK_P1[IOG_DQS_LANES*2-1:0]),
                                       .IOG_WRDATA_MASK_P2(IOG_WRDATA_MASK_P2[IOG_DQS_LANES*2-1:0]),
                                       .IOG_WRDATA_MASK_P3(IOG_WRDATA_MASK_P3[IOG_DQS_LANES*2-1:0]),
                                       .IOG_ADDRESS_P0  (IOG_ADDRESS_P0),
                                       .IOG_ADDRESS_P1  (IOG_ADDRESS_P1),
                                       .IOG_ADDRESS_P2  (IOG_ADDRESS_P2),
                                       .IOG_ADDRESS_P3  (IOG_ADDRESS_P3),
                                       // Inputs
                                       .SCLK            (SCLK),
                                       .RESET_N         (RESET_N),
                                       .DFI_INIT_START  (DFI_INIT_START),
                                       .DFI_RDLVL_CS_0_N(DFI_RDLVL_CS_0_N),
                                       .DFI_RDLVL_CS_1_N(DFI_RDLVL_CS_1_N),
                                       .DFI_WRLVL_CS_0_N(DFI_WRLVL_CS_0_N),
                                       .DFI_WRLVL_CS_1_N(DFI_WRLVL_CS_1_N),
                                       .DFI_RDDATA_CS_0_N_P0(DFI_RDDATA_CS_0_N_P0),
                                       .DFI_RDDATA_CS_0_N_P1(DFI_RDDATA_CS_0_N_P1),
                                       .DFI_RDDATA_CS_0_N_P2(DFI_RDDATA_CS_0_N_P2),
                                       .DFI_RDDATA_CS_0_N_P3(DFI_RDDATA_CS_0_N_P3),
                                       .DFI_RDDATA_CS_1_N_P0(DFI_RDDATA_CS_1_N_P0),
                                       .DFI_RDDATA_CS_1_N_P1(DFI_RDDATA_CS_1_N_P1),
                                       .DFI_RDDATA_CS_1_N_P2(DFI_RDDATA_CS_1_N_P2),
                                       .DFI_RDDATA_CS_1_N_P3(DFI_RDDATA_CS_1_N_P3),
                                       .DFI_WRDATA_CS_0_N_P0(DFI_WRDATA_CS_0_N_P0),
                                       .DFI_WRDATA_CS_0_N_P1(DFI_WRDATA_CS_0_N_P1),
                                       .DFI_WRDATA_CS_0_N_P2(DFI_WRDATA_CS_0_N_P2),
                                       .DFI_WRDATA_CS_0_N_P3(DFI_WRDATA_CS_0_N_P3),
                                       .DFI_WRDATA_CS_1_N_P0(DFI_WRDATA_CS_1_N_P0),
                                       .DFI_WRDATA_CS_1_N_P1(DFI_WRDATA_CS_1_N_P1),
                                       .DFI_WRDATA_CS_1_N_P2(DFI_WRDATA_CS_1_N_P2),
                                       .DFI_WRDATA_CS_1_N_P3(DFI_WRDATA_CS_1_N_P3),
                                       .DFI_RDLVL_EN    (DFI_RDLVL_EN),
                                       .DFI_RDLVL_GATE_EN(DFI_RDLVL_GATE_EN),
                                       .DFI_WRDATA_EN_P0(DFI_WRDATA_EN_P0),
                                       .DFI_WRDATA_EN_P1(DFI_WRDATA_EN_P1),
                                       .DFI_WRDATA_EN_P2(DFI_WRDATA_EN_P2),
                                       .DFI_WRDATA_EN_P3(DFI_WRDATA_EN_P3),
                                       .DFI_WRLVL_EN    (DFI_WRLVL_EN),
                                       .DFI_WRLVL_STROBE(DFI_WRLVL_STROBE),
                                       .BCLK_EYE_MONITOR_EARLY(BCLK_EYE_MONITOR_EARLY[NUM_BCLKS-1:0]),
                                       .BCLK_EYE_MONITOR_LATE(BCLK_EYE_MONITOR_LATE[NUM_BCLKS-1:0]),
                                       .BURST_DETECT    (BURST_DETECT[IOG_DQS_LANES-1:0]),
                                       .REFCLK_EYE_MONITOR_EARLY(REFCLK_EYE_MONITOR_EARLY),
                                       .REFCLK_EYE_MONITOR_LATE(REFCLK_EYE_MONITOR_LATE),
                                       .RX_OUT_OF_RANGE (RX_OUT_OF_RANGE[IOG_DQS_LANES*9-1:0]),
                                       .TWO_RANKS       (TWO_RANKS),
                                       .TX_OUT_OF_RANGE (TX_OUT_OF_RANGE[IOG_DQS_LANES*9-1:0]),
                                       .PADDR           (PADDR[15:0]),
                                       .PENABLE         (PENABLE),
                                       .PSEL            (PSEL),
                                       .PWDATA          (PWDATA[7:0]),
                                       .PWRITE          (PWRITE),
                                       .TRAINING_PATTERN(TRAINING_PATTERN[7:0]),
                                       .DLL_DLY_DIFF    (DLL_DLY_DIFF),
                                       .VREF_OUT_OF_RANGE(VREF_OUT_OF_RANGE),
                                       .DFI_CTRLUPD_REQ (DFI_CTRLUPD_REQ),
                                       .DFI_RDDATA_EN_P0(DFI_RDDATA_EN_P0),
                                       .DFI_RDDATA_EN_P1(DFI_RDDATA_EN_P1),
                                       .DFI_RDDATA_EN_P2(DFI_RDDATA_EN_P2),
                                       .DFI_RDDATA_EN_P3(DFI_RDDATA_EN_P3),
                                       .IOG_RDDATA      (IOG_RDDATA[IOG_DQS_LANES*64-1:0]),
                                       .IOG_RDDATA_VALID(IOG_RDDATA_VALID[IOG_DQS_LANES-1:0]),
                                       .PAD_RDDATA      (PAD_RDDATA[IOG_DQS_LANES*8-1:0]),
                                       .DQSW_EYE_MONITOR_EARLY(DQSW_EYE_MONITOR_EARLY[IOG_DQS_LANES-1:0]),
                                       .DQSW_EYE_MONITOR_LATE(DQSW_EYE_MONITOR_LATE[IOG_DQS_LANES-1:0]),
                                       .DQSW270_EYE_MONITOR_EARLY(DQSW270_EYE_MONITOR_EARLY[IOG_DQS_LANES-1:0]),
                                       .DQSW270_EYE_MONITOR_LATE(DQSW270_EYE_MONITOR_LATE[IOG_DQS_LANES-1:0]),
                                       .DQSW270_DELAY_LINE_OOR(DQSW270_DELAY_LINE_OOR[IOG_DQS_LANES-1:0]),
                                       .DQSW_DELAY_LINE_OOR(DQSW_DELAY_LINE_OOR[IOG_DQS_LANES-1:0]),
                                       .CMD_EYE_MONITOR_EARLY(CMD_EYE_MONITOR_EARLY),
                                       .CMD_EYE_MONITOR_LATE(CMD_EYE_MONITOR_LATE),
                                       .REFCLK_IGEAR_RX8(REFCLK_IGEAR_RX8),
                                       .DQSW270_IGEAR_RX8(DQSW270_IGEAR_RX8[IOG_DQS_LANES-1:0]),
                                       .PLL_LOCK        (PLL_LOCK),
                                       .DFI_WRDATA_MASK_P0(DFI_WRDATA_MASK_P0[IOG_DQS_LANES*2-1:0]),
                                       .DFI_WRDATA_MASK_P1(DFI_WRDATA_MASK_P1[IOG_DQS_LANES*2-1:0]),
                                       .DFI_WRDATA_MASK_P2(DFI_WRDATA_MASK_P2[IOG_DQS_LANES*2-1:0]),
                                       .DFI_WRDATA_MASK_P3(DFI_WRDATA_MASK_P3[IOG_DQS_LANES*2-1:0]),
                                       .DFI_ADDRESS_P0  (DFI_ADDRESS_P0),
                                       .DFI_ADDRESS_P1  (DFI_ADDRESS_P1),
                                       .DFI_ADDRESS_P2  (DFI_ADDRESS_P2),
                                       .DFI_ADDRESS_P3  (DFI_ADDRESS_P3),
                                       // AS: ADDED NEW PORTS FOR SAR http://bugzilla/show_bug.cgi?id=85957
                                       // IN ORDER TO OBVIATE THE USE OF EYE MONITOR FLAGS
                                       // EYE MONITOR FLAGS REMAIN FOR LEGACY PURPOSES / IN CASE
                                       // SILICON FIX COMES IN FOR REV D
                                       .BCLK_IGEAR_RX(BCLK_IGEAR_RX),
                                       .CMD_IGEAR_RX8(CMD_IGEAR_RX8),
                                       .DQSW270_IGEAR_RX(DQSW270_IGEAR_RX),
                                       .DQSW_IGEAR_RX(DQSW_IGEAR_RX),
                                       .CMD_RESET_LANE(CMD_RESET_LANE),
                                       // AS: ADDED SKIP SIGNALS
                                       .SKIP_DQSW_TRN(SKIP_DQSW_TRN),
                                       .SKIP_BCLK_TRN(SKIP_BCLK_TRN),
                                       .SKIP_CA_TRN(SKIP_CA_TRN),
                                       .SKIP_WRLVL_TRN(SKIP_WRLVL_TRN),
                                       .SKIP_RDLVL_TRN(SKIP_RDLVL_TRN),
                                       // AS: ADDED CONFIGURATION PORTS
                                      .ADDR_VCOPHS_OFFSET(ADDR_VCOPHS_OFFSET),
                                      .BCLK_VCOPHS_OFFSET(BCLK_VCOPHS_OFFSET),
                                      .WRLVL_TAP_OFFSET(WRLVL_TAP_OFFSET),
                                      .CAL_INIT_MR_W_REQ(CAL_INIT_MR_W_REQ),
                                      .CAL_INIT_MR_ADDR(CAL_INIT_MR_ADDR),
                                      .CAL_INIT_MR_WR_DATA(CAL_INIT_MR_WR_DATA),
                                      .CAL_INIT_MR_WR_MASK(CAL_INIT_MR_WR_MASK),
                                      .CAL_INIT_ACK(CAL_INIT_ACK),
                                      .SKIP_VREF_TRAINING(SKIP_VREF_TRAINING),
                                      .PCLK(PCLK),
                                      .VREF_MR6_VALUE(VREF_MR6_VALUE),
                                      .CAL_INIT_CS(CAL_INIT_CS),
                                      .CTRLR_READY_IN(CTRLR_READY_IN),
                                      .CTRLR_READY_OUT(CTRLR_READY_OUT),
                                      .IOG_DQ_TXDATA_IN(IOG_DQ_TXDATA_IN),
                                      .IOG_DQ_TXDATA_OUT(IOG_DQ_TXDATA_OUT),
                                      .IOG_DM_TXDATA_IN(IOG_DM_TXDATA_IN),
                                      .IOG_DM_TXDATA_OUT(IOG_DM_TXDATA_OUT),
                                      .CAL_L_R_REQ(CAL_L_R_REQ),  
                                      .CAL_L_W_REQ(CAL_L_W_REQ),  
                                      .CAL_L_DATAIN(CAL_L_DATAIN), 
                                      .CAL_L_DM_IN(CAL_L_DM_IN),  
                                      .CAL_L_BUSY(CAL_L_BUSY),   
                                      .CAL_L_D_REQ(CAL_L_D_REQ),  
                                      .CAL_L_DATAOUT(CAL_L_DATAOUT),
                                      .CAL_L_R_VALID(CAL_L_R_VALID),
                                      .CAL_SELECT(CAL_SELECT),
                                      .ADDR_WAIT_COUNT(ADDR_WAIT_COUNT),
                                      .WRCAL_WRITE_COUNTER_VALUE(WRCAL_WRITE_COUNTER_VALUE),
                                      .RDGATE_MIN_READS_THRESHOLD(RDGATE_MIN_READS_THRESHOLD),
                                      .ITER_COUNT(ITER_COUNT)
                                       );
    
    
endmodule

// Local Variables:
// verilog-library-files:( "./CoreDDR_TIP_INT.v")
// End: