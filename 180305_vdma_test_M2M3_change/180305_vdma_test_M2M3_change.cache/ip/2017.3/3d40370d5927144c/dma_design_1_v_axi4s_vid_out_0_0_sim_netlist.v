// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Mon Mar  5 22:38:00 2018
// Host        : ensc-pit-09 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dma_design_1_v_axi4s_vid_out_0_0_sim_netlist.v
// Design      : dma_design_1_v_axi4s_vid_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dma_design_1_v_axi4s_vid_out_0_0,v_axi4s_vid_out_v4_0_7,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "v_axi4s_vid_out_v4_0_7,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_ce,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    locked,
    overflow,
    underflow,
    status);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF video_in, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN dma_design_1_processing_system7_0_0_FCLK_CLK1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW" *) input aclken;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TDATA" *) input [31:0]s_axis_video_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TVALID" *) input s_axis_video_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TREADY" *) output s_axis_video_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TUSER" *) input s_axis_video_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_in TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_in, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 25000000, PHASE 0.000, CLK_DOMAIN dma_design_1_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef" *) input s_axis_video_tlast;
  input fid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clockenable:1.0 vid_io_out_ce_intf CE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME vid_io_out_ce_intf, POLARITY ACTIVE_LOW" *) input vid_io_out_ce;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out ACTIVE_VIDEO" *) output vid_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VSYNC" *) output vid_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HSYNC" *) output vid_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out VBLANK" *) output vid_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out HBLANK" *) output vid_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out FIELD" *) output vid_field_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_out DATA" *) output [23:0]vid_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VSYNC" *) input vtg_vsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HSYNC" *) input vtg_hsync;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in VBLANK" *) input vtg_vblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in HBLANK" *) input vtg_hblank;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in ACTIVE_VIDEO" *) input vtg_active_video;
  (* X_INTERFACE_INFO = "xilinx.com:interface:video_timing:2.0 vtiming_in FIELD" *) input vtg_field_id;
  output vtg_ce;
  output locked;
  output overflow;
  output underflow;
  output [31:0]status;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire fid;
  wire locked;
  wire overflow;
  wire [31:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [31:0]status;
  wire underflow;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_ce;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vsync;

  (* C_ADDR_WIDTH = "10" *) 
  (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "10" *) 
  (* C_COMPONENTS_PER_PIXEL = "3" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_ASYNC_CLK = "0" *) 
  (* C_HYSTERESIS_LEVEL = "12" *) 
  (* C_INCLUDE_PIXEL_REMAP_420 = "0" *) 
  (* C_INCLUDE_PIXEL_REPEAT = "0" *) 
  (* C_NATIVE_COMPONENT_WIDTH = "8" *) 
  (* C_NATIVE_DATA_WIDTH = "24" *) 
  (* C_PIXELS_PER_CLOCK = "1" *) 
  (* C_SYNC_LOCK_THRESHOLD = "4" *) 
  (* C_S_AXIS_COMPONENT_WIDTH = "10" *) 
  (* C_S_AXIS_TDATA_WIDTH = "32" *) 
  (* C_VTG_MASTER_SLAVE = "1" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7 inst
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .fid(fid),
        .locked(locked),
        .overflow(overflow),
        .remap_420_en(1'b0),
        .repeat_en(1'b0),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .status(status),
        .underflow(underflow),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_io_out_clk(1'b0),
        .vid_io_out_reset(1'b0),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtg_active_video(vtg_active_video),
        .vtg_ce(vtg_ce),
        .vtg_field_id(vtg_field_id),
        .vtg_hblank(vtg_hblank),
        .vtg_hsync(vtg_hsync),
        .vtg_vblank(vtg_vblank),
        .vtg_vsync(vtg_vsync));
endmodule

(* C_ADDR_WIDTH = "10" *) (* C_ADDR_WIDTH_PIXEL_REMAP_420 = "10" *) (* C_COMPONENTS_PER_PIXEL = "3" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_ASYNC_CLK = "0" *) (* C_HYSTERESIS_LEVEL = "12" *) 
(* C_INCLUDE_PIXEL_REMAP_420 = "0" *) (* C_INCLUDE_PIXEL_REPEAT = "0" *) (* C_NATIVE_COMPONENT_WIDTH = "8" *) 
(* C_NATIVE_DATA_WIDTH = "24" *) (* C_PIXELS_PER_CLOCK = "1" *) (* C_SYNC_LOCK_THRESHOLD = "4" *) 
(* C_S_AXIS_COMPONENT_WIDTH = "10" *) (* C_S_AXIS_TDATA_WIDTH = "32" *) (* C_VTG_MASTER_SLAVE = "1" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7
   (aclk,
    aclken,
    aresetn,
    s_axis_video_tdata,
    s_axis_video_tvalid,
    s_axis_video_tready,
    s_axis_video_tuser,
    s_axis_video_tlast,
    fid,
    vid_io_out_clk,
    vid_io_out_ce,
    vid_io_out_reset,
    vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    vid_data,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_active_video,
    vtg_field_id,
    vtg_ce,
    locked,
    overflow,
    underflow,
    status,
    repeat_en,
    remap_420_en);
  input aclk;
  input aclken;
  input aresetn;
  input [31:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  output s_axis_video_tready;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  input fid;
  input vid_io_out_clk;
  input vid_io_out_ce;
  input vid_io_out_reset;
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output [23:0]vid_data;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_vblank;
  input vtg_hblank;
  input vtg_active_video;
  input vtg_field_id;
  output vtg_ce;
  output locked;
  output overflow;
  output underflow;
  output [31:0]status;
  input repeat_en;
  input remap_420_en;

  wire \<const0> ;
  wire COUPLER_INST_n_39;
  wire COUPLER_INST_n_42;
  wire SYNC_INST_n_4;
  wire SYNC_INST_n_5;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire fid;
  wire [23:0]fifo_data;
  wire fifo_empty;
  wire fifo_eol;
  wire fifo_eol_dly;
  wire fifo_fid;
  wire [10:2]fifo_level_rd;
  wire fifo_sof;
  wire fifo_sof_cnt;
  wire fifo_sof_dly;
  wire fivid_reset_full_frame;
  wire locked;
  wire overflow;
  wire rd_en_i;
  wire [31:0]s_axis_video_tdata;
  wire s_axis_video_tlast;
  wire s_axis_video_tready;
  wire s_axis_video_tuser;
  wire s_axis_video_tvalid;
  wire [25:0]\^status ;
  wire underflow;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vsync;

  assign status[31] = \<const0> ;
  assign status[30] = \<const0> ;
  assign status[29] = \<const0> ;
  assign status[28] = \<const0> ;
  assign status[27] = \<const0> ;
  assign status[26] = \<const0> ;
  assign status[25:16] = \^status [25:16];
  assign status[15] = \<const0> ;
  assign status[14:0] = \^status [14:0];
  assign vtg_ce = vid_io_out_ce;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_cdc_single CDC_SINGLE_REMAP_UNDERFLOW_INST
       (.aclk(aclk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_coupler COUPLER_INST
       (.E(fifo_sof_cnt),
        .\FSM_sequential_state_reg[0] (COUPLER_INST_n_39),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .din({fid,s_axis_video_tuser,s_axis_video_tlast,s_axis_video_tdata[29:22],s_axis_video_tdata[19:12],s_axis_video_tdata[9:2]}),
        .dout({fifo_fid,fifo_sof,fifo_eol,fifo_data}),
        .empty(fifo_empty),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re_dly_reg(COUPLER_INST_n_42),
        .fifo_sof_dly(fifo_sof_dly),
        .\grdc.rd_data_count_i_reg[6] (SYNC_INST_n_5),
        .overflow(overflow),
        .rd_data_count(fifo_level_rd),
        .rd_en(rd_en_i),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .underflow(underflow),
        .vid_io_out_ce(vid_io_out_ce));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_formatter FORMATTER_INST
       (.D(fifo_data),
        .\FSM_sequential_state_reg[2] (SYNC_INST_n_4),
        .aclk(aclk),
        .aresetn(aresetn),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .locked(locked),
        .vid_active_video(vid_active_video),
        .vid_data(vid_data),
        .vid_field_id(vid_field_id),
        .vid_hblank(vid_hblank),
        .vid_hsync(vid_hsync),
        .vid_io_out_ce(vid_io_out_ce),
        .vid_vblank(vid_vblank),
        .vid_vsync(vid_vsync),
        .vtg_active_video(vtg_active_video),
        .vtg_field_id(vtg_field_id),
        .vtg_hblank(vtg_hblank),
        .vtg_hsync(vtg_hsync),
        .vtg_vblank(vtg_vblank),
        .vtg_vsync(vtg_vsync));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_sync SYNC_INST
       (.E(fifo_sof_cnt),
        .\FSM_sequential_state_reg[1]_0 (SYNC_INST_n_5),
        .aclk(aclk),
        .aresetn(aresetn),
        .dout({fifo_fid,fifo_sof,fifo_eol}),
        .empty(fifo_empty),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_sof_dly(fifo_sof_dly),
        .fivid_reset_full_frame(fivid_reset_full_frame),
        .\gen_wr_a.gen_word_narrow.mem_reg (COUPLER_INST_n_42),
        .\grdc.rd_data_count_i_reg[9] (COUPLER_INST_n_39),
        .\in_data_mux_reg[0] (SYNC_INST_n_4),
        .locked(locked),
        .rd_data_count(fifo_level_rd),
        .rd_en(rd_en_i),
        .status({\^status [25:16],\^status [14:0]}),
        .vid_io_out_ce(vid_io_out_ce),
        .vtg_active_video(vtg_active_video),
        .vtg_field_id(vtg_field_id),
        .vtg_vsync(vtg_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_cdc_single
   (aclk);
  input aclk;

  wire aclk;
  wire xpm_cdc_single_inst_n_0;

  (* DEST_SYNC_FF = "4" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single xpm_cdc_single_inst
       (.dest_clk(aclk),
        .dest_out(xpm_cdc_single_inst_n_0),
        .src_clk(1'b0),
        .src_in(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_coupler
   (overflow,
    dout,
    empty,
    rd_data_count,
    underflow,
    \FSM_sequential_state_reg[0] ,
    E,
    s_axis_video_tready,
    fifo_eol_re_dly_reg,
    aclk,
    din,
    rd_en,
    \grdc.rd_data_count_i_reg[6] ,
    vid_io_out_ce,
    fifo_sof_dly,
    aresetn,
    aclken,
    s_axis_video_tvalid,
    fifo_eol_dly);
  output overflow;
  output [26:0]dout;
  output empty;
  output [8:0]rd_data_count;
  output underflow;
  output \FSM_sequential_state_reg[0] ;
  output [0:0]E;
  output s_axis_video_tready;
  output fifo_eol_re_dly_reg;
  input aclk;
  input [26:0]din;
  input rd_en;
  input \grdc.rd_data_count_i_reg[6] ;
  input vid_io_out_ce;
  input fifo_sof_dly;
  input aresetn;
  input aclken;
  input s_axis_video_tvalid;
  input fifo_eol_dly;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire fifo_eol_dly;
  wire fifo_eol_re_dly_reg;
  wire fifo_sof_dly;
  wire \grdc.rd_data_count_i_reg[6] ;
  wire overflow;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire s_axis_video_tready;
  wire s_axis_video_tvalid;
  wire underflow;
  wire vid_io_out_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_fifo_sync \generate_sync_fifo.FIFO_INST 
       (.E(E),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .din(din),
        .dout(dout),
        .empty(empty),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re_dly_reg(fifo_eol_re_dly_reg),
        .fifo_sof_dly(fifo_sof_dly),
        .\grdc.rd_data_count_i_reg[6] (\grdc.rd_data_count_i_reg[6] ),
        .overflow(overflow),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .underflow(underflow),
        .vid_io_out_ce(vid_io_out_ce));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_fifo_sync
   (overflow,
    dout,
    empty,
    rd_data_count,
    underflow,
    \FSM_sequential_state_reg[0] ,
    E,
    s_axis_video_tready,
    fifo_eol_re_dly_reg,
    aclk,
    din,
    rd_en,
    \grdc.rd_data_count_i_reg[6] ,
    vid_io_out_ce,
    fifo_sof_dly,
    aresetn,
    aclken,
    s_axis_video_tvalid,
    fifo_eol_dly);
  output overflow;
  output [26:0]dout;
  output empty;
  output [8:0]rd_data_count;
  output underflow;
  output \FSM_sequential_state_reg[0] ;
  output [0:0]E;
  output s_axis_video_tready;
  output fifo_eol_re_dly_reg;
  input aclk;
  input [26:0]din;
  input rd_en;
  input \grdc.rd_data_count_i_reg[6] ;
  input vid_io_out_ce;
  input fifo_sof_dly;
  input aresetn;
  input aclken;
  input s_axis_video_tvalid;
  input fifo_eol_dly;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire fifo_eol_dly;
  wire fifo_eol_re_dly_reg;
  wire fifo_sof_dly;
  wire \grdc.rd_data_count_i_reg[6] ;
  wire overflow;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire s_axis_video_tready;
  wire s_axis_video_tvalid;
  wire underflow;
  wire vid_io_out_ce;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync XPM_FIFO_SYNC_INST
       (.E(E),
        .\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .din(din),
        .dout(dout),
        .empty(empty),
        .fifo_eol_dly(fifo_eol_dly),
        .fifo_eol_re_dly_reg(fifo_eol_re_dly_reg),
        .fifo_sof_dly(fifo_sof_dly),
        .\grdc.rd_data_count_i_reg[6] (\grdc.rd_data_count_i_reg[6] ),
        .overflow(overflow),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tvalid(s_axis_video_tvalid),
        .underflow(underflow),
        .vid_io_out_ce(vid_io_out_ce));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_formatter
   (vid_active_video,
    vid_vsync,
    vid_hsync,
    vid_vblank,
    vid_hblank,
    vid_field_id,
    fivid_reset_full_frame,
    vid_data,
    \FSM_sequential_state_reg[2] ,
    vid_io_out_ce,
    vtg_active_video,
    aclk,
    vtg_vsync,
    vtg_hsync,
    vtg_vblank,
    vtg_hblank,
    vtg_field_id,
    aresetn,
    locked,
    D);
  output vid_active_video;
  output vid_vsync;
  output vid_hsync;
  output vid_vblank;
  output vid_hblank;
  output vid_field_id;
  output fivid_reset_full_frame;
  output [23:0]vid_data;
  input \FSM_sequential_state_reg[2] ;
  input vid_io_out_ce;
  input vtg_active_video;
  input aclk;
  input vtg_vsync;
  input vtg_hsync;
  input vtg_vblank;
  input vtg_hblank;
  input vtg_field_id;
  input aresetn;
  input locked;
  input [23:0]D;

  wire [23:0]D;
  wire \FSM_sequential_state_reg[2] ;
  wire aclk;
  wire aresetn;
  wire fivid_reset_full_frame;
  wire fivid_reset_full_frame_i_1_n_0;
  wire in_data_mux;
  wire locked;
  wire vblank_rising;
  wire vblank_rising_i_1_n_0;
  wire vid_active_video;
  wire [23:0]vid_data;
  wire vid_field_id;
  wire vid_hblank;
  wire vid_hsync;
  wire vid_io_out_ce;
  wire vid_vblank;
  wire vid_vsync;
  wire vtg_active_video;
  wire vtg_field_id;
  wire vtg_hblank;
  wire vtg_hsync;
  wire vtg_vblank;
  wire vtg_vblank_1;
  wire vtg_vblank_1_i_1_n_0;
  wire vtg_vsync;

  LUT5 #(
    .INIT(32'hEA000000)) 
    fivid_reset_full_frame_i_1
       (.I0(fivid_reset_full_frame),
        .I1(vblank_rising),
        .I2(vid_io_out_ce),
        .I3(aresetn),
        .I4(locked),
        .O(fivid_reset_full_frame_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fivid_reset_full_frame_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fivid_reset_full_frame_i_1_n_0),
        .Q(fivid_reset_full_frame),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \in_data_mux[23]_i_1 
       (.I0(vtg_active_video),
        .I1(vid_io_out_ce),
        .O(in_data_mux));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[0] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[0]),
        .Q(vid_data[0]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[10] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[10]),
        .Q(vid_data[10]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[11] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[11]),
        .Q(vid_data[11]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[12] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[12]),
        .Q(vid_data[12]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[13] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[13]),
        .Q(vid_data[13]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[14] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[14]),
        .Q(vid_data[14]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[15] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[15]),
        .Q(vid_data[15]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[16] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[16]),
        .Q(vid_data[16]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[17] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[17]),
        .Q(vid_data[17]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[18] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[18]),
        .Q(vid_data[18]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[19] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[19]),
        .Q(vid_data[19]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[1] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[1]),
        .Q(vid_data[1]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[20] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[20]),
        .Q(vid_data[20]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[21] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[21]),
        .Q(vid_data[21]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[22] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[22]),
        .Q(vid_data[22]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[23] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[23]),
        .Q(vid_data[23]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[2] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[2]),
        .Q(vid_data[2]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[3] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[3]),
        .Q(vid_data[3]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[4] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[4]),
        .Q(vid_data[4]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[5] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[5]),
        .Q(vid_data[5]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[6] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[6]),
        .Q(vid_data[6]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[7] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[7]),
        .Q(vid_data[7]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[8] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[8]),
        .Q(vid_data[8]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \in_data_mux_reg[9] 
       (.C(aclk),
        .CE(in_data_mux),
        .D(D[9]),
        .Q(vid_data[9]),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    in_de_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_active_video),
        .Q(vid_active_video),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    in_field_id_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_field_id),
        .Q(vid_field_id),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    in_hblank_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_hblank),
        .Q(vid_hblank),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    in_hsync_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_hsync),
        .Q(vid_hsync),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    in_vblank_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_vblank),
        .Q(vid_vblank),
        .R(\FSM_sequential_state_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    in_vsync_mux_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_vsync),
        .Q(vid_vsync),
        .R(\FSM_sequential_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    vblank_rising_i_1
       (.I0(vtg_vblank),
        .I1(vtg_vblank_1),
        .I2(vid_io_out_ce),
        .I3(vblank_rising),
        .O(vblank_rising_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vblank_rising_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vblank_rising_i_1_n_0),
        .Q(vblank_rising),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    vtg_vblank_1_i_1
       (.I0(vtg_vblank),
        .I1(vid_io_out_ce),
        .I2(vtg_vblank_1),
        .O(vtg_vblank_1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vblank_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vtg_vblank_1_i_1_n_0),
        .Q(vtg_vblank_1),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_v_axi4s_vid_out_v4_0_7_sync
   (fifo_eol_dly,
    fifo_sof_dly,
    locked,
    rd_en,
    \in_data_mux_reg[0] ,
    \FSM_sequential_state_reg[1]_0 ,
    status,
    vid_io_out_ce,
    vtg_active_video,
    aclk,
    vtg_vsync,
    dout,
    \gen_wr_a.gen_word_narrow.mem_reg ,
    \grdc.rd_data_count_i_reg[9] ,
    vtg_field_id,
    aresetn,
    empty,
    fivid_reset_full_frame,
    rd_data_count,
    E);
  output fifo_eol_dly;
  output fifo_sof_dly;
  output locked;
  output rd_en;
  output \in_data_mux_reg[0] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output [24:0]status;
  input vid_io_out_ce;
  input vtg_active_video;
  input aclk;
  input vtg_vsync;
  input [2:0]dout;
  input \gen_wr_a.gen_word_narrow.mem_reg ;
  input \grdc.rd_data_count_i_reg[9] ;
  input vtg_field_id;
  input aresetn;
  input empty;
  input fivid_reset_full_frame;
  input [8:0]rd_data_count;
  input [0:0]E;

  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire \FSM_sequential_state[1]_i_8_n_0 ;
  wire \FSM_sequential_state[1]_i_9_n_0 ;
  wire \FSM_sequential_state[2]_i_10_n_0 ;
  wire \FSM_sequential_state[2]_i_11_n_0 ;
  wire \FSM_sequential_state[2]_i_12_n_0 ;
  wire \FSM_sequential_state[2]_i_13_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire aclk;
  wire aresetn;
  wire [2:0]dout;
  wire empty;
  wire fifo_eol_cnt;
  wire \fifo_eol_cnt[0]_i_1_n_0 ;
  wire \fifo_eol_cnt[0]_i_4_n_0 ;
  wire [12:0]fifo_eol_cnt_dly;
  wire [12:0]fifo_eol_cnt_reg;
  wire \fifo_eol_cnt_reg[0]_i_3_n_0 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_1 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_2 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_3 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_4 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_5 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_6 ;
  wire \fifo_eol_cnt_reg[0]_i_3_n_7 ;
  wire \fifo_eol_cnt_reg[12]_i_1_n_7 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_1 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_4 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_5 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_6 ;
  wire \fifo_eol_cnt_reg[4]_i_1_n_7 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_0 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_1 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_2 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_3 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_4 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_5 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_6 ;
  wire \fifo_eol_cnt_reg[8]_i_1_n_7 ;
  wire fifo_eol_dly;
  wire fifo_eol_error;
  wire fifo_eol_error1;
  wire fifo_eol_error1_carry__0_i_1_n_0;
  wire fifo_eol_error1_carry_i_1_n_0;
  wire fifo_eol_error1_carry_i_2_n_0;
  wire fifo_eol_error1_carry_i_3_n_0;
  wire fifo_eol_error1_carry_i_4_n_0;
  wire fifo_eol_error1_carry_n_0;
  wire fifo_eol_error1_carry_n_1;
  wire fifo_eol_error1_carry_n_2;
  wire fifo_eol_error1_carry_n_3;
  wire fifo_eol_error_i_1_n_0;
  wire fifo_eol_error_i_2_n_0;
  wire fifo_eol_error_i_3_n_0;
  wire fifo_eol_error_i_4_n_0;
  wire fifo_eol_re_dly;
  wire fifo_force_rd;
  wire \fifo_pix_cnt[0]_i_1_n_0 ;
  wire \fifo_pix_cnt[0]_i_2_n_0 ;
  wire \fifo_pix_cnt[0]_i_4_n_0 ;
  wire [12:0]fifo_pix_cnt_dly;
  wire fifo_pix_cnt_dly1__11;
  wire \fifo_pix_cnt_dly[12]_i_1_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_3_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_5_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_6_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_7_n_0 ;
  wire \fifo_pix_cnt_dly[12]_i_8_n_0 ;
  wire fifo_pix_cnt_dly_1;
  wire [12:0]fifo_pix_cnt_reg;
  wire \fifo_pix_cnt_reg[0]_i_3_n_0 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_1 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_2 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_3 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_4 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_5 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_6 ;
  wire \fifo_pix_cnt_reg[0]_i_3_n_7 ;
  wire \fifo_pix_cnt_reg[12]_i_1_n_7 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_0 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_1 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_2 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_3 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_4 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_5 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_6 ;
  wire \fifo_pix_cnt_reg[4]_i_1_n_7 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_0 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_1 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_2 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_3 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_4 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_5 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_6 ;
  wire \fifo_pix_cnt_reg[8]_i_1_n_7 ;
  wire fifo_pix_error;
  wire fifo_pix_error0;
  wire fifo_pix_error1;
  wire fifo_pix_error1_carry__0_i_1_n_0;
  wire fifo_pix_error1_carry_i_1_n_0;
  wire fifo_pix_error1_carry_i_2_n_0;
  wire fifo_pix_error1_carry_i_3_n_0;
  wire fifo_pix_error1_carry_i_4_n_0;
  wire fifo_pix_error1_carry_n_0;
  wire fifo_pix_error1_carry_n_1;
  wire fifo_pix_error1_carry_n_2;
  wire fifo_pix_error1_carry_n_3;
  wire fifo_pix_error_i_1_n_0;
  wire \fifo_sof_cnt[7]_i_2_n_0 ;
  wire [7:0]fifo_sof_cnt_reg__0;
  wire fifo_sof_dly;
  wire fivid_reset_full_frame;
  wire \gen_wr_a.gen_word_narrow.mem_reg ;
  wire \grdc.rd_data_count_i_reg[9] ;
  wire \in_data_mux_reg[0] ;
  wire locked;
  wire \next_state1_inferred__0/FSM_sequential_state[1]_i_6_n_0 ;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire sof_ignore;
  wire sof_ignore_i_1_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]state;
  wire [3:0]state_dly;
  wire state_dly_0;
  (* RTL_KEEP = "yes" *) wire [3:0]state_reg;
  wire [24:0]status;
  wire [10:0]status_reg;
  wire status_reg1;
  wire \status_reg[0]_i_1_n_0 ;
  wire \status_reg[10]_i_1_n_0 ;
  wire \status_reg[11]_i_1_n_0 ;
  wire \status_reg[11]_i_2_n_0 ;
  wire \status_reg[12]_i_1_n_0 ;
  wire \status_reg[12]_i_3_n_0 ;
  wire \status_reg[1]_i_1_n_0 ;
  wire \status_reg[25]_i_1_n_0 ;
  wire \status_reg[2]_i_1_n_0 ;
  wire \status_reg[3]_i_1_n_0 ;
  wire \status_reg[4]_i_1_n_0 ;
  wire \status_reg[5]_i_1_n_0 ;
  wire \status_reg[6]_i_1_n_0 ;
  wire \status_reg[7]_i_1_n_0 ;
  wire \status_reg[8]_i_1_n_0 ;
  wire \status_reg[9]_i_1_n_0 ;
  wire vid_io_out_ce;
  wire vtg_active_video;
  wire vtg_de_dly;
  wire vtg_field_id;
  wire vtg_lag;
  wire \vtg_lag[0]_i_1_n_0 ;
  wire \vtg_lag[0]_i_4_n_0 ;
  wire [9:0]vtg_lag_reg;
  wire \vtg_lag_reg[0]_i_3_n_0 ;
  wire \vtg_lag_reg[0]_i_3_n_1 ;
  wire \vtg_lag_reg[0]_i_3_n_2 ;
  wire \vtg_lag_reg[0]_i_3_n_3 ;
  wire \vtg_lag_reg[0]_i_3_n_4 ;
  wire \vtg_lag_reg[0]_i_3_n_5 ;
  wire \vtg_lag_reg[0]_i_3_n_6 ;
  wire \vtg_lag_reg[0]_i_3_n_7 ;
  wire \vtg_lag_reg[12]_i_1_n_0 ;
  wire \vtg_lag_reg[12]_i_1_n_1 ;
  wire \vtg_lag_reg[12]_i_1_n_2 ;
  wire \vtg_lag_reg[12]_i_1_n_3 ;
  wire \vtg_lag_reg[12]_i_1_n_4 ;
  wire \vtg_lag_reg[12]_i_1_n_5 ;
  wire \vtg_lag_reg[12]_i_1_n_6 ;
  wire \vtg_lag_reg[12]_i_1_n_7 ;
  wire \vtg_lag_reg[16]_i_1_n_0 ;
  wire \vtg_lag_reg[16]_i_1_n_1 ;
  wire \vtg_lag_reg[16]_i_1_n_2 ;
  wire \vtg_lag_reg[16]_i_1_n_3 ;
  wire \vtg_lag_reg[16]_i_1_n_4 ;
  wire \vtg_lag_reg[16]_i_1_n_5 ;
  wire \vtg_lag_reg[16]_i_1_n_6 ;
  wire \vtg_lag_reg[16]_i_1_n_7 ;
  wire \vtg_lag_reg[20]_i_1_n_0 ;
  wire \vtg_lag_reg[20]_i_1_n_1 ;
  wire \vtg_lag_reg[20]_i_1_n_2 ;
  wire \vtg_lag_reg[20]_i_1_n_3 ;
  wire \vtg_lag_reg[20]_i_1_n_4 ;
  wire \vtg_lag_reg[20]_i_1_n_5 ;
  wire \vtg_lag_reg[20]_i_1_n_6 ;
  wire \vtg_lag_reg[20]_i_1_n_7 ;
  wire \vtg_lag_reg[24]_i_1_n_0 ;
  wire \vtg_lag_reg[24]_i_1_n_1 ;
  wire \vtg_lag_reg[24]_i_1_n_2 ;
  wire \vtg_lag_reg[24]_i_1_n_3 ;
  wire \vtg_lag_reg[24]_i_1_n_4 ;
  wire \vtg_lag_reg[24]_i_1_n_5 ;
  wire \vtg_lag_reg[24]_i_1_n_6 ;
  wire \vtg_lag_reg[24]_i_1_n_7 ;
  wire \vtg_lag_reg[28]_i_1_n_1 ;
  wire \vtg_lag_reg[28]_i_1_n_2 ;
  wire \vtg_lag_reg[28]_i_1_n_3 ;
  wire \vtg_lag_reg[28]_i_1_n_4 ;
  wire \vtg_lag_reg[28]_i_1_n_5 ;
  wire \vtg_lag_reg[28]_i_1_n_6 ;
  wire \vtg_lag_reg[28]_i_1_n_7 ;
  wire \vtg_lag_reg[4]_i_1_n_0 ;
  wire \vtg_lag_reg[4]_i_1_n_1 ;
  wire \vtg_lag_reg[4]_i_1_n_2 ;
  wire \vtg_lag_reg[4]_i_1_n_3 ;
  wire \vtg_lag_reg[4]_i_1_n_4 ;
  wire \vtg_lag_reg[4]_i_1_n_5 ;
  wire \vtg_lag_reg[4]_i_1_n_6 ;
  wire \vtg_lag_reg[4]_i_1_n_7 ;
  wire \vtg_lag_reg[8]_i_1_n_0 ;
  wire \vtg_lag_reg[8]_i_1_n_1 ;
  wire \vtg_lag_reg[8]_i_1_n_2 ;
  wire \vtg_lag_reg[8]_i_1_n_3 ;
  wire \vtg_lag_reg[8]_i_1_n_4 ;
  wire \vtg_lag_reg[8]_i_1_n_5 ;
  wire \vtg_lag_reg[8]_i_1_n_6 ;
  wire \vtg_lag_reg[8]_i_1_n_7 ;
  wire [31:10]vtg_lag_reg__0;
  wire vtg_sof;
  wire vtg_sof_cnt;
  wire \vtg_sof_cnt[7]_i_1_n_0 ;
  wire \vtg_sof_cnt[7]_i_4_n_0 ;
  wire [7:0]vtg_sof_cnt_reg__0;
  wire vtg_sof_dly;
  wire vtg_vsync;
  wire vtg_vsync_bp_i_1_n_0;
  wire vtg_vsync_bp_reg_n_0;
  wire vtg_vsync_dly;
  wire [3:0]\NLW_fifo_eol_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_fifo_eol_cnt_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_fifo_eol_error1_carry_O_UNCONNECTED;
  wire [3:1]NLW_fifo_eol_error1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_fifo_eol_error1_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_fifo_pix_cnt_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_fifo_pix_cnt_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:0]NLW_fifo_pix_error1_carry_O_UNCONNECTED;
  wire [3:1]NLW_fifo_pix_error1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_fifo_pix_error1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_vtg_lag_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[0]_i_2_n_0 ),
        .I2(state_reg[3]),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(state[2]),
        .I5(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000045D0404)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(fifo_eol_re_dly),
        .I1(vtg_de_dly),
        .I2(vtg_active_video),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .I4(vtg_sof_dly),
        .I5(state[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04540404)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\FSM_sequential_state[2]_i_5_n_0 ),
        .I1(fifo_eol_re_dly),
        .I2(state[1]),
        .I3(dout[1]),
        .I4(fifo_sof_dly),
        .I5(state[0]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE4)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[0]_i_5_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_i_6_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(vtg_sof),
        .I1(vtg_field_id),
        .I2(state[1]),
        .I3(dout[1]),
        .I4(dout[2]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAFFBF)) 
    \FSM_sequential_state[0]_i_8 
       (.I0(\FSM_sequential_state[3]_i_6_n_0 ),
        .I1(\FSM_sequential_state[3]_i_5_n_0 ),
        .I2(\FSM_sequential_state[1]_i_9_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(\FSM_sequential_state[3]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBBBBB888888)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(state[2]),
        .I2(\FSM_sequential_state[1]_i_5_n_0 ),
        .I3(\next_state1_inferred__0/FSM_sequential_state[1]_i_6_n_0 ),
        .I4(state[0]),
        .I5(state[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001110)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[3]_i_2_n_0 ),
        .I2(\FSM_sequential_state[1]_i_7_n_0 ),
        .I3(\FSM_sequential_state[1]_i_8_n_0 ),
        .I4(state[1]),
        .I5(state[2]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF54)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\FSM_sequential_state[2]_i_5_n_0 ),
        .I1(state[1]),
        .I2(fifo_eol_re_dly),
        .I3(state[0]),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555515)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\FSM_sequential_state[3]_i_6_n_0 ),
        .I1(\FSM_sequential_state[3]_i_5_n_0 ),
        .I2(\FSM_sequential_state[1]_i_9_n_0 ),
        .I3(\FSM_sequential_state[2]_i_6_n_0 ),
        .I4(\FSM_sequential_state[2]_i_7_n_0 ),
        .I5(\FSM_sequential_state[3]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(fifo_eol_re_dly),
        .I1(vtg_active_video),
        .I2(vtg_de_dly),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \FSM_sequential_state[1]_i_8 
       (.I0(vtg_sof_dly),
        .I1(dout[1]),
        .I2(fifo_sof_dly),
        .O(\FSM_sequential_state[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[1]_i_9 
       (.I0(dout[1]),
        .I1(fifo_sof_dly),
        .I2(vtg_sof_dly),
        .O(\FSM_sequential_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state_reg[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state[2]),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[2]_i_10 
       (.I0(vtg_lag_reg__0[26]),
        .I1(vtg_lag_reg__0[25]),
        .I2(vtg_lag_reg__0[22]),
        .I3(vtg_lag_reg__0[23]),
        .I4(vtg_lag_reg__0[24]),
        .O(\FSM_sequential_state[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[2]_i_11 
       (.I0(vtg_lag_reg__0[30]),
        .I1(vtg_lag_reg__0[31]),
        .I2(vtg_lag_reg__0[27]),
        .I3(vtg_lag_reg__0[28]),
        .I4(vtg_lag_reg__0[29]),
        .O(\FSM_sequential_state[2]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[2]_i_12 
       (.I0(vtg_lag_reg[0]),
        .I1(vtg_lag_reg[1]),
        .I2(vtg_lag_reg[2]),
        .I3(vtg_lag_reg[4]),
        .I4(vtg_lag_reg[3]),
        .O(\FSM_sequential_state[2]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_state[2]_i_13 
       (.I0(vtg_lag_reg[5]),
        .I1(vtg_lag_reg[6]),
        .I2(vtg_lag_reg[7]),
        .I3(vtg_lag_reg[8]),
        .I4(vtg_lag_reg[9]),
        .O(\FSM_sequential_state[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004004044)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(vtg_sof_dly),
        .I1(\FSM_sequential_state[3]_i_4_n_0 ),
        .I2(vtg_active_video),
        .I3(vtg_de_dly),
        .I4(fifo_eol_re_dly),
        .I5(state[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045004555)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[0]),
        .I1(dout[1]),
        .I2(fifo_sof_dly),
        .I3(state[1]),
        .I4(fifo_eol_re_dly),
        .I5(\FSM_sequential_state[2]_i_5_n_0 ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state[1]),
        .I1(\FSM_sequential_state[3]_i_6_n_0 ),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(\FSM_sequential_state[2]_i_7_n_0 ),
        .I4(\FSM_sequential_state[3]_i_2_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFFBFFFBFFF)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\FSM_sequential_state[2]_i_8_n_0 ),
        .I1(\FSM_sequential_state[2]_i_9_n_0 ),
        .I2(\FSM_sequential_state[2]_i_10_n_0 ),
        .I3(\FSM_sequential_state[2]_i_11_n_0 ),
        .I4(\FSM_sequential_state[2]_i_12_n_0 ),
        .I5(\FSM_sequential_state[2]_i_13_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(sof_ignore),
        .I1(dout[1]),
        .I2(fifo_sof_dly),
        .I3(vtg_sof_dly),
        .I4(fifo_force_rd),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(fifo_sof_dly),
        .I1(dout[1]),
        .I2(vtg_sof_dly),
        .I3(sof_ignore),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(vtg_lag_reg__0[12]),
        .I1(vtg_lag_reg__0[10]),
        .I2(vtg_lag_reg__0[11]),
        .I3(vtg_lag_reg__0[15]),
        .I4(vtg_lag_reg__0[13]),
        .I5(vtg_lag_reg__0[14]),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(vtg_lag_reg__0[21]),
        .I1(vtg_lag_reg__0[19]),
        .I2(vtg_lag_reg__0[20]),
        .I3(vtg_lag_reg__0[16]),
        .I4(vtg_lag_reg__0[17]),
        .I5(vtg_lag_reg__0[18]),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004002222)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(state_reg[3]),
        .I1(state[0]),
        .I2(\FSM_sequential_state[3]_i_2_n_0 ),
        .I3(\FSM_sequential_state[3]_i_3_n_0 ),
        .I4(state[1]),
        .I5(state[2]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(vtg_active_video),
        .I1(vtg_de_dly),
        .I2(fifo_eol_re_dly),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\FSM_sequential_state[3]_i_4_n_0 ),
        .I1(vtg_sof_dly),
        .I2(\FSM_sequential_state[3]_i_5_n_0 ),
        .I3(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(fifo_sof_dly),
        .I1(dout[1]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFE0000)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(fifo_sof_cnt_reg__0[7]),
        .I2(fifo_sof_cnt_reg__0[5]),
        .I3(fifo_sof_cnt_reg__0[6]),
        .I4(\FSM_sequential_state[3]_i_8_n_0 ),
        .I5(\FSM_sequential_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(vtg_de_dly),
        .I1(vtg_active_video),
        .I2(fifo_eol_re_dly),
        .I3(fifo_force_rd),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(fifo_sof_cnt_reg__0[3]),
        .I1(fifo_sof_cnt_reg__0[4]),
        .I2(fifo_sof_cnt_reg__0[0]),
        .I3(fifo_sof_cnt_reg__0[1]),
        .I4(fifo_sof_cnt_reg__0[2]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFFEEE)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(vtg_sof_cnt_reg__0[3]),
        .I1(vtg_sof_cnt_reg__0[4]),
        .I2(vtg_sof_cnt_reg__0[0]),
        .I3(vtg_sof_cnt_reg__0[1]),
        .I4(vtg_sof_cnt_reg__0[2]),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(vtg_sof_cnt_reg__0[7]),
        .I1(vtg_sof_cnt_reg__0[5]),
        .I2(vtg_sof_cnt_reg__0[6]),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "C_SYNC_IDLE:0000,C_SYNC_CALN_SOF_FIFO:0001,C_SYNC_CALN_SOF_VTG:0010,C_SYNC_FALN_ACTIVE:0011,C_SYNC_FALN_EOL_LEADING:0100,C_SYNC_FALN_EOL_LAGGING:0101,C_SYNC_FALN_SOF_LEADING:0110,C_SYNC_FALN_SOF_LAGGING:0111,C_SYNC_FALN_LOCK:1000,C_SYNC_LALN_EOL_LEADING:1001,C_SYNC_LALN_EOL_LAGGING:1010,C_SYNC_LALN_SOF_LEADING:1011,C_SYNC_LALN_SOF_LAGGING:1100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(\status_reg[25]_i_1_n_0 ));
  MUXF7 \FSM_sequential_state_reg[0]_i_6 
       (.I0(\grdc.rd_data_count_i_reg[9] ),
        .I1(\FSM_sequential_state[0]_i_8_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_6_n_0 ),
        .S(state[1]));
  (* FSM_ENCODED_STATES = "C_SYNC_IDLE:0000,C_SYNC_CALN_SOF_FIFO:0001,C_SYNC_CALN_SOF_VTG:0010,C_SYNC_FALN_ACTIVE:0011,C_SYNC_FALN_EOL_LEADING:0100,C_SYNC_FALN_EOL_LAGGING:0101,C_SYNC_FALN_SOF_LEADING:0110,C_SYNC_FALN_SOF_LAGGING:0111,C_SYNC_FALN_LOCK:1000,C_SYNC_LALN_EOL_LEADING:1001,C_SYNC_LALN_EOL_LAGGING:1010,C_SYNC_LALN_SOF_LEADING:1011,C_SYNC_LALN_SOF_LAGGING:1100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(\status_reg[25]_i_1_n_0 ));
  MUXF7 \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .S(state_reg[3]));
  (* FSM_ENCODED_STATES = "C_SYNC_IDLE:0000,C_SYNC_CALN_SOF_FIFO:0001,C_SYNC_CALN_SOF_VTG:0010,C_SYNC_FALN_ACTIVE:0011,C_SYNC_FALN_EOL_LEADING:0100,C_SYNC_FALN_EOL_LAGGING:0101,C_SYNC_FALN_SOF_LEADING:0110,C_SYNC_FALN_SOF_LAGGING:0111,C_SYNC_FALN_LOCK:1000,C_SYNC_LALN_EOL_LEADING:1001,C_SYNC_LALN_EOL_LAGGING:1010,C_SYNC_LALN_SOF_LEADING:1011,C_SYNC_LALN_SOF_LAGGING:1100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(\status_reg[25]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "C_SYNC_IDLE:0000,C_SYNC_CALN_SOF_FIFO:0001,C_SYNC_CALN_SOF_VTG:0010,C_SYNC_FALN_ACTIVE:0011,C_SYNC_FALN_EOL_LEADING:0100,C_SYNC_FALN_EOL_LAGGING:0101,C_SYNC_FALN_SOF_LEADING:0110,C_SYNC_FALN_SOF_LAGGING:0111,C_SYNC_FALN_LOCK:1000,C_SYNC_LALN_EOL_LEADING:1001,C_SYNC_LALN_EOL_LAGGING:1010,C_SYNC_LALN_SOF_LEADING:1011,C_SYNC_LALN_SOF_LAGGING:1100" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_state_reg[3] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(\FSM_sequential_state[3]_i_1_n_0 ),
        .Q(state_reg[3]),
        .R(\status_reg[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \fifo_eol_cnt[0]_i_1 
       (.I0(\fifo_pix_cnt_dly[12]_i_1_n_0 ),
        .I1(fifo_sof_dly),
        .I2(dout[1]),
        .I3(vid_io_out_ce),
        .O(\fifo_eol_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_eol_cnt[0]_i_2 
       (.I0(vid_io_out_ce),
        .I1(fifo_eol_re_dly),
        .O(fifo_eol_cnt));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_eol_cnt[0]_i_4 
       (.I0(fifo_eol_cnt_reg[0]),
        .O(\fifo_eol_cnt[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[0]),
        .Q(fifo_eol_cnt_dly[0]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[10]),
        .Q(fifo_eol_cnt_dly[10]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[11]),
        .Q(fifo_eol_cnt_dly[11]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[12]),
        .Q(fifo_eol_cnt_dly[12]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[1]),
        .Q(fifo_eol_cnt_dly[1]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[2]),
        .Q(fifo_eol_cnt_dly[2]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[3]),
        .Q(fifo_eol_cnt_dly[3]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[4]),
        .Q(fifo_eol_cnt_dly[4]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[5]),
        .Q(fifo_eol_cnt_dly[5]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[6]),
        .Q(fifo_eol_cnt_dly[6]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[7]),
        .Q(fifo_eol_cnt_dly[7]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[8]),
        .Q(fifo_eol_cnt_dly[8]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_dly_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(fifo_eol_cnt_reg[9]),
        .Q(fifo_eol_cnt_dly[9]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[0] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_7 ),
        .Q(fifo_eol_cnt_reg[0]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\fifo_eol_cnt_reg[0]_i_3_n_0 ,\fifo_eol_cnt_reg[0]_i_3_n_1 ,\fifo_eol_cnt_reg[0]_i_3_n_2 ,\fifo_eol_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\fifo_eol_cnt_reg[0]_i_3_n_4 ,\fifo_eol_cnt_reg[0]_i_3_n_5 ,\fifo_eol_cnt_reg[0]_i_3_n_6 ,\fifo_eol_cnt_reg[0]_i_3_n_7 }),
        .S({fifo_eol_cnt_reg[3:1],\fifo_eol_cnt[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[10] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_5 ),
        .Q(fifo_eol_cnt_reg[10]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[11] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_4 ),
        .Q(fifo_eol_cnt_reg[11]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[12] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[12]_i_1_n_7 ),
        .Q(fifo_eol_cnt_reg[12]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[12]_i_1 
       (.CI(\fifo_eol_cnt_reg[8]_i_1_n_0 ),
        .CO(\NLW_fifo_eol_cnt_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fifo_eol_cnt_reg[12]_i_1_O_UNCONNECTED [3:1],\fifo_eol_cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,fifo_eol_cnt_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[1] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_6 ),
        .Q(fifo_eol_cnt_reg[1]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[2] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_5 ),
        .Q(fifo_eol_cnt_reg[2]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[3] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[0]_i_3_n_4 ),
        .Q(fifo_eol_cnt_reg[3]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[4] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_7 ),
        .Q(fifo_eol_cnt_reg[4]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[4]_i_1 
       (.CI(\fifo_eol_cnt_reg[0]_i_3_n_0 ),
        .CO({\fifo_eol_cnt_reg[4]_i_1_n_0 ,\fifo_eol_cnt_reg[4]_i_1_n_1 ,\fifo_eol_cnt_reg[4]_i_1_n_2 ,\fifo_eol_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_eol_cnt_reg[4]_i_1_n_4 ,\fifo_eol_cnt_reg[4]_i_1_n_5 ,\fifo_eol_cnt_reg[4]_i_1_n_6 ,\fifo_eol_cnt_reg[4]_i_1_n_7 }),
        .S(fifo_eol_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[5] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_6 ),
        .Q(fifo_eol_cnt_reg[5]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[6] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_5 ),
        .Q(fifo_eol_cnt_reg[6]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[7] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[4]_i_1_n_4 ),
        .Q(fifo_eol_cnt_reg[7]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[8] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_7 ),
        .Q(fifo_eol_cnt_reg[8]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_eol_cnt_reg[8]_i_1 
       (.CI(\fifo_eol_cnt_reg[4]_i_1_n_0 ),
        .CO({\fifo_eol_cnt_reg[8]_i_1_n_0 ,\fifo_eol_cnt_reg[8]_i_1_n_1 ,\fifo_eol_cnt_reg[8]_i_1_n_2 ,\fifo_eol_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_eol_cnt_reg[8]_i_1_n_4 ,\fifo_eol_cnt_reg[8]_i_1_n_5 ,\fifo_eol_cnt_reg[8]_i_1_n_6 ,\fifo_eol_cnt_reg[8]_i_1_n_7 }),
        .S(fifo_eol_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_eol_cnt_reg[9] 
       (.C(aclk),
        .CE(fifo_eol_cnt),
        .D(\fifo_eol_cnt_reg[8]_i_1_n_6 ),
        .Q(fifo_eol_cnt_reg[9]),
        .R(\fifo_eol_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(dout[0]),
        .Q(fifo_eol_dly),
        .R(\status_reg[25]_i_1_n_0 ));
  CARRY4 fifo_eol_error1_carry
       (.CI(1'b0),
        .CO({fifo_eol_error1_carry_n_0,fifo_eol_error1_carry_n_1,fifo_eol_error1_carry_n_2,fifo_eol_error1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_fifo_eol_error1_carry_O_UNCONNECTED[3:0]),
        .S({fifo_eol_error1_carry_i_1_n_0,fifo_eol_error1_carry_i_2_n_0,fifo_eol_error1_carry_i_3_n_0,fifo_eol_error1_carry_i_4_n_0}));
  CARRY4 fifo_eol_error1_carry__0
       (.CI(fifo_eol_error1_carry_n_0),
        .CO({NLW_fifo_eol_error1_carry__0_CO_UNCONNECTED[3:1],fifo_eol_error1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(NLW_fifo_eol_error1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,fifo_eol_error1_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_eol_error1_carry__0_i_1
       (.I0(fifo_eol_cnt_dly[12]),
        .I1(fifo_eol_cnt_reg[12]),
        .O(fifo_eol_error1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_1
       (.I0(fifo_eol_cnt_reg[9]),
        .I1(fifo_eol_cnt_dly[9]),
        .I2(fifo_eol_cnt_dly[11]),
        .I3(fifo_eol_cnt_reg[11]),
        .I4(fifo_eol_cnt_dly[10]),
        .I5(fifo_eol_cnt_reg[10]),
        .O(fifo_eol_error1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_2
       (.I0(fifo_eol_cnt_reg[6]),
        .I1(fifo_eol_cnt_dly[6]),
        .I2(fifo_eol_cnt_dly[8]),
        .I3(fifo_eol_cnt_reg[8]),
        .I4(fifo_eol_cnt_dly[7]),
        .I5(fifo_eol_cnt_reg[7]),
        .O(fifo_eol_error1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_3
       (.I0(fifo_eol_cnt_reg[3]),
        .I1(fifo_eol_cnt_dly[3]),
        .I2(fifo_eol_cnt_dly[5]),
        .I3(fifo_eol_cnt_reg[5]),
        .I4(fifo_eol_cnt_dly[4]),
        .I5(fifo_eol_cnt_reg[4]),
        .O(fifo_eol_error1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_eol_error1_carry_i_4
       (.I0(fifo_eol_cnt_reg[0]),
        .I1(fifo_eol_cnt_dly[0]),
        .I2(fifo_eol_cnt_dly[2]),
        .I3(fifo_eol_cnt_reg[2]),
        .I4(fifo_eol_cnt_dly[1]),
        .I5(fifo_eol_cnt_reg[1]),
        .O(fifo_eol_error1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    fifo_eol_error_i_1
       (.I0(fifo_eol_error_i_2_n_0),
        .I1(fifo_eol_error1),
        .I2(vid_io_out_ce),
        .I3(fifo_sof_dly),
        .I4(dout[1]),
        .I5(fifo_eol_error),
        .O(fifo_eol_error_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fifo_eol_error_i_2
       (.I0(fifo_eol_error_i_3_n_0),
        .I1(fifo_eol_error_i_4_n_0),
        .I2(fifo_eol_cnt_dly[6]),
        .I3(fifo_eol_cnt_dly[7]),
        .I4(fifo_eol_cnt_dly[4]),
        .I5(fifo_eol_cnt_dly[5]),
        .O(fifo_eol_error_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    fifo_eol_error_i_3
       (.I0(fifo_eol_cnt_dly[11]),
        .I1(fifo_eol_cnt_dly[9]),
        .I2(fifo_eol_cnt_dly[8]),
        .I3(fifo_eol_cnt_dly[12]),
        .I4(fifo_eol_cnt_dly[10]),
        .O(fifo_eol_error_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_eol_error_i_4
       (.I0(fifo_eol_cnt_dly[2]),
        .I1(fifo_eol_cnt_dly[3]),
        .I2(fifo_eol_cnt_dly[0]),
        .I3(fifo_eol_cnt_dly[1]),
        .O(fifo_eol_error_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fifo_eol_error_i_1_n_0),
        .Q(fifo_eol_error),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_eol_re_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(\gen_wr_a.gen_word_narrow.mem_reg ),
        .Q(fifo_eol_re_dly),
        .R(\status_reg[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \fifo_pix_cnt[0]_i_1 
       (.I0(\fifo_pix_cnt_dly[12]_i_1_n_0 ),
        .I1(fifo_eol_re_dly),
        .I2(vid_io_out_ce),
        .O(\fifo_pix_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \fifo_pix_cnt[0]_i_2 
       (.I0(rd_en),
        .I1(empty),
        .O(\fifo_pix_cnt[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_pix_cnt[0]_i_4 
       (.I0(fifo_pix_cnt_reg[0]),
        .O(\fifo_pix_cnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h01FF)) 
    \fifo_pix_cnt_dly[12]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state_reg[3]),
        .I3(aresetn),
        .O(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA800)) 
    \fifo_pix_cnt_dly[12]_i_2 
       (.I0(vid_io_out_ce),
        .I1(\fifo_pix_cnt_dly[12]_i_3_n_0 ),
        .I2(fifo_pix_cnt_dly1__11),
        .I3(fifo_eol_re_dly),
        .O(fifo_pix_cnt_dly_1));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \fifo_pix_cnt_dly[12]_i_3 
       (.I0(\fifo_pix_cnt_dly[12]_i_5_n_0 ),
        .I1(fifo_eol_cnt_reg[5]),
        .I2(fifo_eol_cnt_reg[4]),
        .I3(fifo_eol_cnt_reg[6]),
        .I4(\fifo_pix_cnt_dly[12]_i_6_n_0 ),
        .O(\fifo_pix_cnt_dly[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \fifo_pix_cnt_dly[12]_i_4 
       (.I0(\fifo_pix_cnt_dly[12]_i_7_n_0 ),
        .I1(fifo_pix_cnt_dly[5]),
        .I2(fifo_pix_cnt_dly[4]),
        .I3(fifo_pix_cnt_dly[6]),
        .I4(\fifo_pix_cnt_dly[12]_i_8_n_0 ),
        .O(fifo_pix_cnt_dly1__11));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo_pix_cnt_dly[12]_i_5 
       (.I0(fifo_eol_cnt_reg[1]),
        .I1(fifo_eol_cnt_reg[0]),
        .I2(fifo_eol_cnt_reg[3]),
        .I3(fifo_eol_cnt_reg[2]),
        .O(\fifo_pix_cnt_dly[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fifo_pix_cnt_dly[12]_i_6 
       (.I0(fifo_eol_cnt_reg[11]),
        .I1(fifo_eol_cnt_reg[10]),
        .I2(fifo_eol_cnt_reg[12]),
        .I3(fifo_eol_cnt_reg[7]),
        .I4(fifo_eol_cnt_reg[8]),
        .I5(fifo_eol_cnt_reg[9]),
        .O(\fifo_pix_cnt_dly[12]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo_pix_cnt_dly[12]_i_7 
       (.I0(fifo_pix_cnt_dly[1]),
        .I1(fifo_pix_cnt_dly[0]),
        .I2(fifo_pix_cnt_dly[3]),
        .I3(fifo_pix_cnt_dly[2]),
        .O(\fifo_pix_cnt_dly[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \fifo_pix_cnt_dly[12]_i_8 
       (.I0(fifo_pix_cnt_dly[11]),
        .I1(fifo_pix_cnt_dly[10]),
        .I2(fifo_pix_cnt_dly[12]),
        .I3(fifo_pix_cnt_dly[7]),
        .I4(fifo_pix_cnt_dly[8]),
        .I5(fifo_pix_cnt_dly[9]),
        .O(\fifo_pix_cnt_dly[12]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[0] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[0]),
        .Q(fifo_pix_cnt_dly[0]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[10] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[10]),
        .Q(fifo_pix_cnt_dly[10]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[11] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[11]),
        .Q(fifo_pix_cnt_dly[11]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[12] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[12]),
        .Q(fifo_pix_cnt_dly[12]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[1] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[1]),
        .Q(fifo_pix_cnt_dly[1]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[2] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[2]),
        .Q(fifo_pix_cnt_dly[2]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[3] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[3]),
        .Q(fifo_pix_cnt_dly[3]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[4] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[4]),
        .Q(fifo_pix_cnt_dly[4]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[5] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[5]),
        .Q(fifo_pix_cnt_dly[5]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[6] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[6]),
        .Q(fifo_pix_cnt_dly[6]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[7] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[7]),
        .Q(fifo_pix_cnt_dly[7]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[8] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[8]),
        .Q(fifo_pix_cnt_dly[8]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_dly_reg[9] 
       (.C(aclk),
        .CE(fifo_pix_cnt_dly_1),
        .D(fifo_pix_cnt_reg[9]),
        .Q(fifo_pix_cnt_dly[9]),
        .R(\fifo_pix_cnt_dly[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[0] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_7 ),
        .Q(fifo_pix_cnt_reg[0]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\fifo_pix_cnt_reg[0]_i_3_n_0 ,\fifo_pix_cnt_reg[0]_i_3_n_1 ,\fifo_pix_cnt_reg[0]_i_3_n_2 ,\fifo_pix_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\fifo_pix_cnt_reg[0]_i_3_n_4 ,\fifo_pix_cnt_reg[0]_i_3_n_5 ,\fifo_pix_cnt_reg[0]_i_3_n_6 ,\fifo_pix_cnt_reg[0]_i_3_n_7 }),
        .S({fifo_pix_cnt_reg[3:1],\fifo_pix_cnt[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[10] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_5 ),
        .Q(fifo_pix_cnt_reg[10]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[11] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_4 ),
        .Q(fifo_pix_cnt_reg[11]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[12] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[12]_i_1_n_7 ),
        .Q(fifo_pix_cnt_reg[12]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[12]_i_1 
       (.CI(\fifo_pix_cnt_reg[8]_i_1_n_0 ),
        .CO(\NLW_fifo_pix_cnt_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_fifo_pix_cnt_reg[12]_i_1_O_UNCONNECTED [3:1],\fifo_pix_cnt_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,fifo_pix_cnt_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[1] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_6 ),
        .Q(fifo_pix_cnt_reg[1]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[2] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_5 ),
        .Q(fifo_pix_cnt_reg[2]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[3] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[0]_i_3_n_4 ),
        .Q(fifo_pix_cnt_reg[3]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[4] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_7 ),
        .Q(fifo_pix_cnt_reg[4]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[4]_i_1 
       (.CI(\fifo_pix_cnt_reg[0]_i_3_n_0 ),
        .CO({\fifo_pix_cnt_reg[4]_i_1_n_0 ,\fifo_pix_cnt_reg[4]_i_1_n_1 ,\fifo_pix_cnt_reg[4]_i_1_n_2 ,\fifo_pix_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_pix_cnt_reg[4]_i_1_n_4 ,\fifo_pix_cnt_reg[4]_i_1_n_5 ,\fifo_pix_cnt_reg[4]_i_1_n_6 ,\fifo_pix_cnt_reg[4]_i_1_n_7 }),
        .S(fifo_pix_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[5] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_6 ),
        .Q(fifo_pix_cnt_reg[5]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[6] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_5 ),
        .Q(fifo_pix_cnt_reg[6]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[7] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[4]_i_1_n_4 ),
        .Q(fifo_pix_cnt_reg[7]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[8] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_7 ),
        .Q(fifo_pix_cnt_reg[8]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 \fifo_pix_cnt_reg[8]_i_1 
       (.CI(\fifo_pix_cnt_reg[4]_i_1_n_0 ),
        .CO({\fifo_pix_cnt_reg[8]_i_1_n_0 ,\fifo_pix_cnt_reg[8]_i_1_n_1 ,\fifo_pix_cnt_reg[8]_i_1_n_2 ,\fifo_pix_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\fifo_pix_cnt_reg[8]_i_1_n_4 ,\fifo_pix_cnt_reg[8]_i_1_n_5 ,\fifo_pix_cnt_reg[8]_i_1_n_6 ,\fifo_pix_cnt_reg[8]_i_1_n_7 }),
        .S(fifo_pix_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_pix_cnt_reg[9] 
       (.C(aclk),
        .CE(\fifo_pix_cnt[0]_i_2_n_0 ),
        .D(\fifo_pix_cnt_reg[8]_i_1_n_6 ),
        .Q(fifo_pix_cnt_reg[9]),
        .R(\fifo_pix_cnt[0]_i_1_n_0 ));
  CARRY4 fifo_pix_error1_carry
       (.CI(1'b0),
        .CO({fifo_pix_error1_carry_n_0,fifo_pix_error1_carry_n_1,fifo_pix_error1_carry_n_2,fifo_pix_error1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_fifo_pix_error1_carry_O_UNCONNECTED[3:0]),
        .S({fifo_pix_error1_carry_i_1_n_0,fifo_pix_error1_carry_i_2_n_0,fifo_pix_error1_carry_i_3_n_0,fifo_pix_error1_carry_i_4_n_0}));
  CARRY4 fifo_pix_error1_carry__0
       (.CI(fifo_pix_error1_carry_n_0),
        .CO({NLW_fifo_pix_error1_carry__0_CO_UNCONNECTED[3:1],fifo_pix_error1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(NLW_fifo_pix_error1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,fifo_pix_error1_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    fifo_pix_error1_carry__0_i_1
       (.I0(fifo_pix_cnt_dly[12]),
        .I1(fifo_pix_cnt_reg[12]),
        .O(fifo_pix_error1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_1
       (.I0(fifo_pix_cnt_reg[9]),
        .I1(fifo_pix_cnt_dly[9]),
        .I2(fifo_pix_cnt_dly[11]),
        .I3(fifo_pix_cnt_reg[11]),
        .I4(fifo_pix_cnt_dly[10]),
        .I5(fifo_pix_cnt_reg[10]),
        .O(fifo_pix_error1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_2
       (.I0(fifo_pix_cnt_reg[6]),
        .I1(fifo_pix_cnt_dly[6]),
        .I2(fifo_pix_cnt_dly[8]),
        .I3(fifo_pix_cnt_reg[8]),
        .I4(fifo_pix_cnt_dly[7]),
        .I5(fifo_pix_cnt_reg[7]),
        .O(fifo_pix_error1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_3
       (.I0(fifo_pix_cnt_reg[3]),
        .I1(fifo_pix_cnt_dly[3]),
        .I2(fifo_pix_cnt_dly[5]),
        .I3(fifo_pix_cnt_reg[5]),
        .I4(fifo_pix_cnt_dly[4]),
        .I5(fifo_pix_cnt_reg[4]),
        .O(fifo_pix_error1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fifo_pix_error1_carry_i_4
       (.I0(fifo_pix_cnt_reg[0]),
        .I1(fifo_pix_cnt_dly[0]),
        .I2(fifo_pix_cnt_dly[2]),
        .I3(fifo_pix_cnt_reg[2]),
        .I4(fifo_pix_cnt_dly[1]),
        .I5(fifo_pix_cnt_reg[1]),
        .O(fifo_pix_error1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFF7AA00)) 
    fifo_pix_error_i_1
       (.I0(vid_io_out_ce),
        .I1(fifo_sof_dly),
        .I2(dout[1]),
        .I3(fifo_pix_error0),
        .I4(fifo_pix_error),
        .O(fifo_pix_error_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    fifo_pix_error_i_2
       (.I0(fifo_pix_error1),
        .I1(fifo_eol_re_dly),
        .I2(fifo_pix_cnt_dly1__11),
        .O(fifo_pix_error0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_pix_error_reg
       (.C(aclk),
        .CE(1'b1),
        .D(fifo_pix_error_i_1_n_0),
        .Q(fifo_pix_error),
        .R(\status_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_sof_cnt[0]_i_1 
       (.I0(fifo_sof_cnt_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[1]_i_1 
       (.I0(fifo_sof_cnt_reg__0[0]),
        .I1(fifo_sof_cnt_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_sof_cnt[2]_i_1 
       (.I0(fifo_sof_cnt_reg__0[0]),
        .I1(fifo_sof_cnt_reg__0[1]),
        .I2(fifo_sof_cnt_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fifo_sof_cnt[3]_i_1 
       (.I0(fifo_sof_cnt_reg__0[1]),
        .I1(fifo_sof_cnt_reg__0[0]),
        .I2(fifo_sof_cnt_reg__0[2]),
        .I3(fifo_sof_cnt_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \fifo_sof_cnt[4]_i_1 
       (.I0(fifo_sof_cnt_reg__0[2]),
        .I1(fifo_sof_cnt_reg__0[0]),
        .I2(fifo_sof_cnt_reg__0[1]),
        .I3(fifo_sof_cnt_reg__0[3]),
        .I4(fifo_sof_cnt_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \fifo_sof_cnt[5]_i_1 
       (.I0(fifo_sof_cnt_reg__0[3]),
        .I1(fifo_sof_cnt_reg__0[1]),
        .I2(fifo_sof_cnt_reg__0[0]),
        .I3(fifo_sof_cnt_reg__0[2]),
        .I4(fifo_sof_cnt_reg__0[4]),
        .I5(fifo_sof_cnt_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_sof_cnt[6]_i_1 
       (.I0(\fifo_sof_cnt[7]_i_2_n_0 ),
        .I1(fifo_sof_cnt_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_sof_cnt[7]_i_1 
       (.I0(\fifo_sof_cnt[7]_i_2_n_0 ),
        .I1(fifo_sof_cnt_reg__0[6]),
        .I2(fifo_sof_cnt_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo_sof_cnt[7]_i_2 
       (.I0(fifo_sof_cnt_reg__0[5]),
        .I1(fifo_sof_cnt_reg__0[3]),
        .I2(fifo_sof_cnt_reg__0[1]),
        .I3(fifo_sof_cnt_reg__0[0]),
        .I4(fifo_sof_cnt_reg__0[2]),
        .I5(fifo_sof_cnt_reg__0[4]),
        .O(\fifo_sof_cnt[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(p_0_in__0[0]),
        .Q(fifo_sof_cnt_reg__0[0]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(fifo_sof_cnt_reg__0[1]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(fifo_sof_cnt_reg__0[2]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(p_0_in__0[3]),
        .Q(fifo_sof_cnt_reg__0[3]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(p_0_in__0[4]),
        .Q(fifo_sof_cnt_reg__0[4]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(p_0_in__0[5]),
        .Q(fifo_sof_cnt_reg__0[5]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(p_0_in__0[6]),
        .Q(fifo_sof_cnt_reg__0[6]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_sof_cnt_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(p_0_in__0[7]),
        .Q(fifo_sof_cnt_reg__0[7]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    fifo_sof_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(dout[1]),
        .Q(fifo_sof_dly),
        .R(\status_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    in_de_mux_i_1
       (.I0(aresetn),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state_reg[3]),
        .I5(fivid_reset_full_frame),
        .O(\in_data_mux_reg[0] ));
  LUT4 #(
    .INIT(16'h0100)) 
    locked_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state_reg[3]),
        .O(locked));
  LUT5 #(
    .INIT(32'h00000111)) 
    \next_state1_inferred__0/FSM_sequential_state[1]_i_10 
       (.I0(rd_data_count[4]),
        .I1(rd_data_count[3]),
        .I2(rd_data_count[1]),
        .I3(rd_data_count[0]),
        .I4(rd_data_count[2]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \next_state1_inferred__0/FSM_sequential_state[1]_i_6 
       (.I0(\FSM_sequential_state_reg[1]_0 ),
        .I1(rd_data_count[5]),
        .I2(rd_data_count[6]),
        .I3(rd_data_count[8]),
        .I4(rd_data_count[7]),
        .O(\next_state1_inferred__0/FSM_sequential_state[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDF00)) 
    sof_ignore_i_1
       (.I0(\fifo_pix_cnt_dly[12]_i_3_n_0 ),
        .I1(dout[2]),
        .I2(vid_io_out_ce),
        .I3(sof_ignore),
        .I4(\vtg_lag[0]_i_1_n_0 ),
        .O(sof_ignore_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    sof_ignore_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sof_ignore_i_1_n_0),
        .Q(sof_ignore),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1D18)) 
    \state_dly[0]_i_1 
       (.I0(state_reg[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(state_reg[0]));
  LUT4 #(
    .INIT(16'h4D18)) 
    \state_dly[1]_i_1 
       (.I0(state_reg[3]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(state_reg[1]));
  LUT4 #(
    .INIT(16'hDCC8)) 
    \state_dly[2]_i_1 
       (.I0(state_reg[3]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(state_reg[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \state_dly[3]_i_1 
       (.I0(aresetn),
        .I1(vid_io_out_ce),
        .O(state_dly_0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[0] 
       (.C(aclk),
        .CE(state_dly_0),
        .D(state_reg[0]),
        .Q(state_dly[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[1] 
       (.C(aclk),
        .CE(state_dly_0),
        .D(state_reg[1]),
        .Q(state_dly[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[2] 
       (.C(aclk),
        .CE(state_dly_0),
        .D(state_reg[2]),
        .Q(state_dly[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_dly_reg[3] 
       (.C(aclk),
        .CE(state_dly_0),
        .D(state_reg[3]),
        .Q(state_dly[3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[0]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg[0]),
        .I2(status_reg1),
        .I3(status[0]),
        .O(\status_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \status_reg[0]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state_reg[3]),
        .O(status_reg[0]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[10]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg[10]),
        .I2(status_reg1),
        .I3(status[10]),
        .O(\status_reg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \status_reg[10]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state_reg[3]),
        .O(status_reg[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \status_reg[11]_i_1 
       (.I0(vid_io_out_ce),
        .I1(state[2]),
        .I2(\status_reg[11]_i_2_n_0 ),
        .I3(state_reg[3]),
        .I4(status_reg1),
        .I5(status[11]),
        .O(\status_reg[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \status_reg[11]_i_2 
       (.I0(state[1]),
        .I1(state[0]),
        .O(\status_reg[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \status_reg[12]_i_1 
       (.I0(vid_io_out_ce),
        .I1(state[2]),
        .I2(state_reg[3]),
        .I3(status_reg1),
        .I4(status[12]),
        .O(\status_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    \status_reg[12]_i_2 
       (.I0(state_dly[3]),
        .I1(state_reg[3]),
        .I2(\status_reg[12]_i_3_n_0 ),
        .I3(state_reg[0]),
        .I4(state_dly[0]),
        .O(status_reg1));
  LUT6 #(
    .INIT(64'hB7D7BBEDBBDEBDEE)) 
    \status_reg[12]_i_3 
       (.I0(state_dly[1]),
        .I1(state_dly[2]),
        .I2(state_reg[3]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(state[0]),
        .O(\status_reg[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[1]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg[1]),
        .I2(status_reg1),
        .I3(status[1]),
        .O(\status_reg[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \status_reg[1]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state_reg[3]),
        .O(status_reg[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \status_reg[25]_i_1 
       (.I0(aresetn),
        .O(\status_reg[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[2]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg[2]),
        .I2(status_reg1),
        .I3(status[2]),
        .O(\status_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \status_reg[2]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state_reg[3]),
        .O(status_reg[2]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[3]_i_1 
       (.I0(vid_io_out_ce),
        .I1(fifo_force_rd),
        .I2(status_reg1),
        .I3(status[3]),
        .O(\status_reg[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \status_reg[3]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state_reg[3]),
        .O(fifo_force_rd));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[4]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg[4]),
        .I2(status_reg1),
        .I3(status[4]),
        .O(\status_reg[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \status_reg[4]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state_reg[3]),
        .O(status_reg[4]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[5]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg[5]),
        .I2(status_reg1),
        .I3(status[5]),
        .O(\status_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \status_reg[5]_i_2 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state_reg[3]),
        .O(status_reg[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \status_reg[6]_i_1 
       (.I0(vid_io_out_ce),
        .I1(state[2]),
        .I2(\status_reg[11]_i_2_n_0 ),
        .I3(state_reg[3]),
        .I4(status_reg1),
        .I5(status[6]),
        .O(\status_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \status_reg[7]_i_1 
       (.I0(vid_io_out_ce),
        .I1(state[2]),
        .I2(\status_reg[11]_i_2_n_0 ),
        .I3(state_reg[3]),
        .I4(status_reg1),
        .I5(status[7]),
        .O(\status_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[8]_i_1 
       (.I0(vid_io_out_ce),
        .I1(locked),
        .I2(status_reg1),
        .I3(status[8]),
        .O(\status_reg[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \status_reg[9]_i_1 
       (.I0(vid_io_out_ce),
        .I1(status_reg[9]),
        .I2(status_reg1),
        .I3(status[9]),
        .O(\status_reg[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \status_reg[9]_i_2 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state_reg[3]),
        .O(status_reg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[0]_i_1_n_0 ),
        .Q(status[0]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[10]_i_1_n_0 ),
        .Q(status[10]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[11]_i_1_n_0 ),
        .Q(status[11]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[12]_i_1_n_0 ),
        .Q(status[12]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[13] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(fifo_pix_error),
        .Q(status[13]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[14] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(fifo_eol_error),
        .Q(status[14]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[16] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[0]),
        .Q(status[15]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[17] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[1]),
        .Q(status[16]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[18] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[2]),
        .Q(status[17]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[19] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[3]),
        .Q(status[18]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[1]_i_1_n_0 ),
        .Q(status[1]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[20] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[4]),
        .Q(status[19]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[21] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[5]),
        .Q(status[20]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[22] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[6]),
        .Q(status[21]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[23] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[7]),
        .Q(status[22]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[24] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[8]),
        .Q(status[23]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[25] 
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_lag_reg[9]),
        .Q(status[24]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[2]_i_1_n_0 ),
        .Q(status[2]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[3]_i_1_n_0 ),
        .Q(status[3]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[4]_i_1_n_0 ),
        .Q(status[4]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[5]_i_1_n_0 ),
        .Q(status[5]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[6]_i_1_n_0 ),
        .Q(status[6]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[7]_i_1_n_0 ),
        .Q(status[7]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[8]_i_1_n_0 ),
        .Q(status[8]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\status_reg[9]_i_1_n_0 ),
        .Q(status[9]),
        .R(\status_reg[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    vtg_de_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_active_video),
        .Q(vtg_de_dly),
        .R(\status_reg[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFF)) 
    \vtg_lag[0]_i_1 
       (.I0(state_reg[3]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(aresetn),
        .O(\vtg_lag[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \vtg_lag[0]_i_2 
       (.I0(vid_io_out_ce),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state_reg[3]),
        .O(vtg_lag));
  LUT1 #(
    .INIT(2'h1)) 
    \vtg_lag[0]_i_4 
       (.I0(vtg_lag_reg[0]),
        .O(\vtg_lag[0]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[0] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_7 ),
        .Q(vtg_lag_reg[0]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\vtg_lag_reg[0]_i_3_n_0 ,\vtg_lag_reg[0]_i_3_n_1 ,\vtg_lag_reg[0]_i_3_n_2 ,\vtg_lag_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\vtg_lag_reg[0]_i_3_n_4 ,\vtg_lag_reg[0]_i_3_n_5 ,\vtg_lag_reg[0]_i_3_n_6 ,\vtg_lag_reg[0]_i_3_n_7 }),
        .S({vtg_lag_reg[3:1],\vtg_lag[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[10] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[10]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[11] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[11]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[12] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[12]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[12]_i_1 
       (.CI(\vtg_lag_reg[8]_i_1_n_0 ),
        .CO({\vtg_lag_reg[12]_i_1_n_0 ,\vtg_lag_reg[12]_i_1_n_1 ,\vtg_lag_reg[12]_i_1_n_2 ,\vtg_lag_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[12]_i_1_n_4 ,\vtg_lag_reg[12]_i_1_n_5 ,\vtg_lag_reg[12]_i_1_n_6 ,\vtg_lag_reg[12]_i_1_n_7 }),
        .S(vtg_lag_reg__0[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[13] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[13]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[14] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[14]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[15] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[12]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[15]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[16] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[16]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[16]_i_1 
       (.CI(\vtg_lag_reg[12]_i_1_n_0 ),
        .CO({\vtg_lag_reg[16]_i_1_n_0 ,\vtg_lag_reg[16]_i_1_n_1 ,\vtg_lag_reg[16]_i_1_n_2 ,\vtg_lag_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[16]_i_1_n_4 ,\vtg_lag_reg[16]_i_1_n_5 ,\vtg_lag_reg[16]_i_1_n_6 ,\vtg_lag_reg[16]_i_1_n_7 }),
        .S(vtg_lag_reg__0[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[17] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[17]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[18] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[18]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[19] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[16]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[19]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[1] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_6 ),
        .Q(vtg_lag_reg[1]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[20] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[20]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[20]_i_1 
       (.CI(\vtg_lag_reg[16]_i_1_n_0 ),
        .CO({\vtg_lag_reg[20]_i_1_n_0 ,\vtg_lag_reg[20]_i_1_n_1 ,\vtg_lag_reg[20]_i_1_n_2 ,\vtg_lag_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[20]_i_1_n_4 ,\vtg_lag_reg[20]_i_1_n_5 ,\vtg_lag_reg[20]_i_1_n_6 ,\vtg_lag_reg[20]_i_1_n_7 }),
        .S(vtg_lag_reg__0[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[21] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[21]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[22] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[22]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[23] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[20]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[23]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[24] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[24]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[24]_i_1 
       (.CI(\vtg_lag_reg[20]_i_1_n_0 ),
        .CO({\vtg_lag_reg[24]_i_1_n_0 ,\vtg_lag_reg[24]_i_1_n_1 ,\vtg_lag_reg[24]_i_1_n_2 ,\vtg_lag_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[24]_i_1_n_4 ,\vtg_lag_reg[24]_i_1_n_5 ,\vtg_lag_reg[24]_i_1_n_6 ,\vtg_lag_reg[24]_i_1_n_7 }),
        .S(vtg_lag_reg__0[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[25] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[25]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[26] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[26]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[27] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[24]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[27]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[28] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_7 ),
        .Q(vtg_lag_reg__0[28]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[28]_i_1 
       (.CI(\vtg_lag_reg[24]_i_1_n_0 ),
        .CO({\NLW_vtg_lag_reg[28]_i_1_CO_UNCONNECTED [3],\vtg_lag_reg[28]_i_1_n_1 ,\vtg_lag_reg[28]_i_1_n_2 ,\vtg_lag_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[28]_i_1_n_4 ,\vtg_lag_reg[28]_i_1_n_5 ,\vtg_lag_reg[28]_i_1_n_6 ,\vtg_lag_reg[28]_i_1_n_7 }),
        .S(vtg_lag_reg__0[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[29] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_6 ),
        .Q(vtg_lag_reg__0[29]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[2] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_5 ),
        .Q(vtg_lag_reg[2]),
        .S(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[30] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_5 ),
        .Q(vtg_lag_reg__0[30]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[31] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[28]_i_1_n_4 ),
        .Q(vtg_lag_reg__0[31]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[3] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[0]_i_3_n_4 ),
        .Q(vtg_lag_reg[3]),
        .S(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[4] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_7 ),
        .Q(vtg_lag_reg[4]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[4]_i_1 
       (.CI(\vtg_lag_reg[0]_i_3_n_0 ),
        .CO({\vtg_lag_reg[4]_i_1_n_0 ,\vtg_lag_reg[4]_i_1_n_1 ,\vtg_lag_reg[4]_i_1_n_2 ,\vtg_lag_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[4]_i_1_n_4 ,\vtg_lag_reg[4]_i_1_n_5 ,\vtg_lag_reg[4]_i_1_n_6 ,\vtg_lag_reg[4]_i_1_n_7 }),
        .S(vtg_lag_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[5] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_6 ),
        .Q(vtg_lag_reg[5]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[6] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_5 ),
        .Q(vtg_lag_reg[6]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[7] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[4]_i_1_n_4 ),
        .Q(vtg_lag_reg[7]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[8] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_7 ),
        .Q(vtg_lag_reg[8]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  CARRY4 \vtg_lag_reg[8]_i_1 
       (.CI(\vtg_lag_reg[4]_i_1_n_0 ),
        .CO({\vtg_lag_reg[8]_i_1_n_0 ,\vtg_lag_reg[8]_i_1_n_1 ,\vtg_lag_reg[8]_i_1_n_2 ,\vtg_lag_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\vtg_lag_reg[8]_i_1_n_4 ,\vtg_lag_reg[8]_i_1_n_5 ,\vtg_lag_reg[8]_i_1_n_6 ,\vtg_lag_reg[8]_i_1_n_7 }),
        .S({vtg_lag_reg__0[11:10],vtg_lag_reg[9:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_lag_reg[9] 
       (.C(aclk),
        .CE(vtg_lag),
        .D(\vtg_lag_reg[8]_i_1_n_6 ),
        .Q(vtg_lag_reg[9]),
        .R(\vtg_lag[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vtg_sof_cnt[0]_i_1 
       (.I0(vtg_sof_cnt_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[1]_i_1 
       (.I0(vtg_sof_cnt_reg__0[0]),
        .I1(vtg_sof_cnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vtg_sof_cnt[2]_i_1 
       (.I0(vtg_sof_cnt_reg__0[0]),
        .I1(vtg_sof_cnt_reg__0[1]),
        .I2(vtg_sof_cnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vtg_sof_cnt[3]_i_1 
       (.I0(vtg_sof_cnt_reg__0[1]),
        .I1(vtg_sof_cnt_reg__0[0]),
        .I2(vtg_sof_cnt_reg__0[2]),
        .I3(vtg_sof_cnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vtg_sof_cnt[4]_i_1 
       (.I0(vtg_sof_cnt_reg__0[2]),
        .I1(vtg_sof_cnt_reg__0[0]),
        .I2(vtg_sof_cnt_reg__0[1]),
        .I3(vtg_sof_cnt_reg__0[3]),
        .I4(vtg_sof_cnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vtg_sof_cnt[5]_i_1 
       (.I0(vtg_sof_cnt_reg__0[3]),
        .I1(vtg_sof_cnt_reg__0[1]),
        .I2(vtg_sof_cnt_reg__0[0]),
        .I3(vtg_sof_cnt_reg__0[2]),
        .I4(vtg_sof_cnt_reg__0[4]),
        .I5(vtg_sof_cnt_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vtg_sof_cnt[6]_i_1 
       (.I0(\vtg_sof_cnt[7]_i_4_n_0 ),
        .I1(vtg_sof_cnt_reg__0[6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h5155FFFF)) 
    \vtg_sof_cnt[7]_i_1 
       (.I0(state_reg[3]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(aresetn),
        .O(\vtg_sof_cnt[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vtg_sof_cnt[7]_i_2 
       (.I0(vid_io_out_ce),
        .I1(vtg_sof_dly),
        .O(vtg_sof_cnt));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vtg_sof_cnt[7]_i_3 
       (.I0(\vtg_sof_cnt[7]_i_4_n_0 ),
        .I1(vtg_sof_cnt_reg__0[6]),
        .I2(vtg_sof_cnt_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vtg_sof_cnt[7]_i_4 
       (.I0(vtg_sof_cnt_reg__0[5]),
        .I1(vtg_sof_cnt_reg__0[3]),
        .I2(vtg_sof_cnt_reg__0[1]),
        .I3(vtg_sof_cnt_reg__0[0]),
        .I4(vtg_sof_cnt_reg__0[2]),
        .I5(vtg_sof_cnt_reg__0[4]),
        .O(\vtg_sof_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[0] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[0]),
        .Q(vtg_sof_cnt_reg__0[0]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[1] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[1]),
        .Q(vtg_sof_cnt_reg__0[1]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[2] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[2]),
        .Q(vtg_sof_cnt_reg__0[2]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[3] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[3]),
        .Q(vtg_sof_cnt_reg__0[3]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[4] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[4]),
        .Q(vtg_sof_cnt_reg__0[4]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[5] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[5]),
        .Q(vtg_sof_cnt_reg__0[5]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[6] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[6]),
        .Q(vtg_sof_cnt_reg__0[6]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vtg_sof_cnt_reg[7] 
       (.C(aclk),
        .CE(vtg_sof_cnt),
        .D(p_0_in[7]),
        .Q(vtg_sof_cnt_reg__0[7]),
        .R(\vtg_sof_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    vtg_sof_dly_i_1
       (.I0(vtg_de_dly),
        .I1(vtg_active_video),
        .I2(vtg_vsync_bp_reg_n_0),
        .O(vtg_sof));
  FDRE #(
    .INIT(1'b0)) 
    vtg_sof_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_sof),
        .Q(vtg_sof_dly),
        .R(\status_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BAAA0000)) 
    vtg_vsync_bp_i_1
       (.I0(vtg_vsync_bp_reg_n_0),
        .I1(vtg_vsync),
        .I2(vid_io_out_ce),
        .I3(vtg_vsync_dly),
        .I4(aresetn),
        .I5(vtg_de_dly),
        .O(vtg_vsync_bp_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_bp_reg
       (.C(aclk),
        .CE(1'b1),
        .D(vtg_vsync_bp_i_1_n_0),
        .Q(vtg_vsync_bp_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    vtg_vsync_dly_reg
       (.C(aclk),
        .CE(vid_io_out_ce),
        .D(vtg_vsync),
        .Q(vtg_vsync_dly),
        .R(\status_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AA8B00000000)) 
    xpm_fifo_base_inst_i_3
       (.I0(vtg_active_video),
        .I1(state_reg[3]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(vid_io_out_ce),
        .O(rd_en));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn
   (S,
    DI,
    \count_value_i_reg[1]_0 ,
    Q,
    \count_value_i_reg[1]_1 ,
    \gen_fwft.curr_fwft_state_reg[1] ,
    ram_empty_i,
    rd_en,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    rd_clk);
  output [1:0]S;
  output [0:0]DI;
  output [0:0]\count_value_i_reg[1]_0 ;
  input [1:0]Q;
  input [1:0]\count_value_i_reg[1]_1 ;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input ram_empty_i;
  input rd_en;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input rd_clk;

  wire [0:0]DI;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]count_value_i;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[1]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [1:0]\count_value_i_reg[1]_1 ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT6 #(
    .INIT(64'h000000005AA98585)) 
    \count_value_i[0]_i_1 
       (.I0(count_value_i),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(ram_empty_i),
        .I3(rd_en),
        .I4(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I5(\gen_rst_cc.fifo_wr_rst_i_reg ),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000AA8A)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i[1]_i_2_n_0 ),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(ram_empty_i),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I4(\gen_rst_cc.fifo_wr_rst_i_reg ),
        .O(\count_value_i[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFFDF5F550020A0A)) 
    \count_value_i[1]_i_2 
       (.I0(count_value_i),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(ram_empty_i),
        .I3(rd_en),
        .I4(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I5(\count_value_i_reg[1]_0 ),
        .O(\count_value_i[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(count_value_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[1]_0 ),
        .R(1'b0));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gwdc.wr_data_count_i[3]_i_4 
       (.I0(count_value_i),
        .I1(Q[0]),
        .O(DI));
  LUT4 #(
    .INIT(16'h9669)) 
    \gwdc.wr_data_count_i[3]_i_7 
       (.I0(DI),
        .I1(Q[1]),
        .I2(\count_value_i_reg[1]_0 ),
        .I3(\count_value_i_reg[1]_1 [1]),
        .O(S[1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gwdc.wr_data_count_i[3]_i_8 
       (.I0(count_value_i),
        .I1(Q[0]),
        .I2(\count_value_i_reg[1]_1 [0]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (Q,
    DI,
    ram_empty_i0,
    CO,
    S,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \grdc.rd_data_count_i_reg[3] ,
    \grdc.rd_data_count_i_reg[7] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] ,
    \count_value_i_reg[10]_0 ,
    \count_value_i_reg[8]_0 ,
    \count_value_i_reg[1]_0 ,
    ram_empty_i,
    \gen_fwft.curr_fwft_state_reg[0] ,
    \count_value_i_reg[9]_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \count_value_i_reg[9]_1 ,
    \count_value_i_reg[9]_2 ,
    rd_en,
    \gen_fwft.curr_fwft_state_reg[1] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    clr_full,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    rd_clk);
  output [9:0]Q;
  output [0:0]DI;
  output ram_empty_i0;
  output [0:0]CO;
  output [2:0]S;
  output [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output [0:0]\grdc.rd_data_count_i_reg[3] ;
  output [3:0]\grdc.rd_data_count_i_reg[7] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  output [2:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  output [3:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  output [1:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] ;
  input [10:0]\count_value_i_reg[10]_0 ;
  input [8:0]\count_value_i_reg[8]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input ram_empty_i;
  input \gen_fwft.curr_fwft_state_reg[0] ;
  input [0:0]\count_value_i_reg[9]_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input [0:0]\count_value_i_reg[9]_1 ;
  input [0:0]\count_value_i_reg[9]_2 ;
  input rd_en;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input clr_full;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input rd_clk;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [9:0]Q;
  wire [2:0]S;
  wire clr_full;
  wire \count_value_i[3]_i_2__0_n_0 ;
  wire [10:0]\count_value_i_reg[10]_0 ;
  wire \count_value_i_reg[10]_i_1__0_n_2 ;
  wire \count_value_i_reg[10]_i_1__0_n_3 ;
  wire \count_value_i_reg[10]_i_1__0_n_5 ;
  wire \count_value_i_reg[10]_i_1__0_n_6 ;
  wire \count_value_i_reg[10]_i_1__0_n_7 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_0 ;
  wire \count_value_i_reg[3]_i_1__0_n_1 ;
  wire \count_value_i_reg[3]_i_1__0_n_2 ;
  wire \count_value_i_reg[3]_i_1__0_n_3 ;
  wire \count_value_i_reg[3]_i_1__0_n_4 ;
  wire \count_value_i_reg[3]_i_1__0_n_5 ;
  wire \count_value_i_reg[3]_i_1__0_n_6 ;
  wire \count_value_i_reg[3]_i_1__0_n_7 ;
  wire \count_value_i_reg[7]_i_1__0_n_0 ;
  wire \count_value_i_reg[7]_i_1__0_n_1 ;
  wire \count_value_i_reg[7]_i_1__0_n_2 ;
  wire \count_value_i_reg[7]_i_1__0_n_3 ;
  wire \count_value_i_reg[7]_i_1__0_n_4 ;
  wire \count_value_i_reg[7]_i_1__0_n_5 ;
  wire \count_value_i_reg[7]_i_1__0_n_6 ;
  wire \count_value_i_reg[7]_i_1__0_n_7 ;
  wire [8:0]\count_value_i_reg[8]_0 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire [0:0]\count_value_i_reg[9]_1 ;
  wire [0:0]\count_value_i_reg[9]_2 ;
  wire \count_value_i_reg_n_0_[10] ;
  wire \gen_fwft.curr_fwft_state_reg[0] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_3 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_3 ;
  wire [2:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  wire [3:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ;
  wire [1:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire [0:0]\grdc.rd_data_count_i_reg[3] ;
  wire [3:0]\grdc.rd_data_count_i_reg[7] ;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hBAAA4555)) 
    \count_value_i[3]_i_2__0 
       (.I0(ram_empty_i),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I3(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I4(Q[0]),
        .O(\count_value_i[3]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[3]_i_1__0_n_7 ),
        .Q(Q[0]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[10]_i_1__0_n_5 ),
        .Q(\count_value_i_reg_n_0_[10] ),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  CARRY4 \count_value_i_reg[10]_i_1__0 
       (.CI(\count_value_i_reg[7]_i_1__0_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1__0_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1__0_n_2 ,\count_value_i_reg[10]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1__0_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1__0_n_5 ,\count_value_i_reg[10]_i_1__0_n_6 ,\count_value_i_reg[10]_i_1__0_n_7 }),
        .S({1'b0,\count_value_i_reg_n_0_[10] ,Q[9:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[3]_i_1__0_n_6 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[3]_i_1__0_n_5 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[3]_i_1__0_n_4 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  CARRY4 \count_value_i_reg[3]_i_1__0 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1__0_n_0 ,\count_value_i_reg[3]_i_1__0_n_1 ,\count_value_i_reg[3]_i_1__0_n_2 ,\count_value_i_reg[3]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1__0_n_4 ,\count_value_i_reg[3]_i_1__0_n_5 ,\count_value_i_reg[3]_i_1__0_n_6 ,\count_value_i_reg[3]_i_1__0_n_7 }),
        .S({Q[3:1],\count_value_i[3]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[7]_i_1__0_n_7 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[7]_i_1__0_n_6 ),
        .Q(Q[5]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[7]_i_1__0_n_5 ),
        .Q(Q[6]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[7]_i_1__0_n_4 ),
        .Q(Q[7]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  CARRY4 \count_value_i_reg[7]_i_1__0 
       (.CI(\count_value_i_reg[3]_i_1__0_n_0 ),
        .CO({\count_value_i_reg[7]_i_1__0_n_0 ,\count_value_i_reg[7]_i_1__0_n_1 ,\count_value_i_reg[7]_i_1__0_n_2 ,\count_value_i_reg[7]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1__0_n_4 ,\count_value_i_reg[7]_i_1__0_n_5 ,\count_value_i_reg[7]_i_1__0_n_6 ,\count_value_i_reg[7]_i_1__0_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[10]_i_1__0_n_7 ),
        .Q(Q[8]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(\gen_fwft.curr_fwft_state_reg[0] ),
        .D(\count_value_i_reg[10]_i_1__0_n_6 ),
        .Q(Q[9]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  LUT6 #(
    .INIT(64'h000000005540FF40)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(\gen_fwft.curr_fwft_state_reg[0] ),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I4(CO),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[10]_0 [6]),
        .I2(\count_value_i_reg[10]_0 [8]),
        .I3(Q[8]),
        .I4(\count_value_i_reg[10]_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[10]_0 [3]),
        .I2(\count_value_i_reg[10]_0 [5]),
        .I3(Q[5]),
        .I4(\count_value_i_reg[10]_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[10]_0 [0]),
        .I2(\count_value_i_reg[10]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[10]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[8]_0 [6]),
        .I2(\count_value_i_reg[8]_0 [8]),
        .I3(Q[8]),
        .I4(\count_value_i_reg[8]_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[8]_0 [3]),
        .I2(\count_value_i_reg[8]_0 [5]),
        .I3(Q[5]),
        .I4(\count_value_i_reg[8]_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[8]_0 [0]),
        .I2(\count_value_i_reg[8]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[8]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 ));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2 
       (.CI(1'b0),
        .CO({\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\count_value_i_reg[9]_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_7_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_8_n_0 }));
  CARRY4 \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3 
       (.CI(1'b0),
        .CO({CO,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_2 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_i_3_O_UNCONNECTED [3:0]),
        .S({\count_value_i_reg[9]_1 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_10_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_11_n_0 ,\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_12_n_0 }));
  LUT5 #(
    .INIT(32'h4444FCCC)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(CO),
        .I1(ram_empty_i),
        .I2(\gen_fwft.curr_fwft_state_reg[0] ),
        .I3(\count_value_i_reg[9]_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .O(ram_empty_i0));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_3 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[10]_0 [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_4 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[10]_0 [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_5 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[10]_0 [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_2 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[10]_0 [7]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_3 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[10]_0 [6]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_4 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[10]_0 [5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[7]_i_5 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[10]_0 [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_2 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[10]_0 [9]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[9]_i_3 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[10]_0 [8]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[10]_i_4 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[10]_0 [9]),
        .I2(\count_value_i_reg_n_0_[10] ),
        .I3(\count_value_i_reg[10]_0 [10]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[10]_i_5 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[10]_0 [8]),
        .I2(Q[9]),
        .I3(\count_value_i_reg[10]_0 [9]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[10]_i_6 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[10]_0 [7]),
        .I2(Q[8]),
        .I3(\count_value_i_reg[10]_0 [8]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \gwdc.wr_data_count_i[3]_i_3 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(\count_value_i_reg[10]_0 [1]),
        .O(DI));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[3]_i_5 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[10]_0 [2]),
        .I2(Q[3]),
        .I3(\count_value_i_reg[10]_0 [3]),
        .O(\grdc.rd_data_count_i_reg[3] ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_6 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[10]_0 [6]),
        .I2(Q[7]),
        .I3(\count_value_i_reg[10]_0 [7]),
        .O(\grdc.rd_data_count_i_reg[7] [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_7 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[10]_0 [5]),
        .I2(Q[6]),
        .I3(\count_value_i_reg[10]_0 [6]),
        .O(\grdc.rd_data_count_i_reg[7] [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_8 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[10]_0 [4]),
        .I2(Q[5]),
        .I3(\count_value_i_reg[10]_0 [5]),
        .O(\grdc.rd_data_count_i_reg[7] [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \gwdc.wr_data_count_i[7]_i_9 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[10]_0 [3]),
        .I2(Q[4]),
        .I3(\count_value_i_reg[10]_0 [4]),
        .O(\grdc.rd_data_count_i_reg[7] [0]));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0
   (Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    D,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[8]_0 ,
    S,
    \count_value_i_reg[9]_0 ,
    DI,
    \count_value_i_reg[2]_0 ,
    \count_value_i_reg[6]_0 ,
    \count_value_i_reg[9]_1 ,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[7]_0 ,
    \count_value_i_reg[9]_2 ,
    \count_value_i_reg[1]_0 ,
    \count_value_i_reg[9]_3 ,
    \gen_rst_cc.fifo_wr_rst_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    wr_clk);
  output [10:0]Q;
  output [0:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  output [10:0]D;
  output [9:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] ;
  output [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input [8:0]\count_value_i_reg[8]_0 ;
  input [0:0]S;
  input [0:0]\count_value_i_reg[9]_0 ;
  input [1:0]DI;
  input [2:0]\count_value_i_reg[2]_0 ;
  input [3:0]\count_value_i_reg[6]_0 ;
  input [2:0]\count_value_i_reg[9]_1 ;
  input [0:0]\gen_rst_cc.fifo_wr_rst_i_reg ;
  input [3:0]\count_value_i_reg[3]_0 ;
  input [3:0]\count_value_i_reg[7]_0 ;
  input [1:0]\count_value_i_reg[9]_2 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input [8:0]\count_value_i_reg[9]_3 ;
  input \gen_rst_cc.fifo_wr_rst_i_reg_0 ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input wr_clk;

  wire [10:0]D;
  wire [1:0]DI;
  wire [10:0]Q;
  wire [0:0]S;
  wire \count_value_i_reg[10]_i_1_n_2 ;
  wire \count_value_i_reg[10]_i_1_n_3 ;
  wire \count_value_i_reg[10]_i_1_n_5 ;
  wire \count_value_i_reg[10]_i_1_n_6 ;
  wire \count_value_i_reg[10]_i_1_n_7 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire [2:0]\count_value_i_reg[2]_0 ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire \count_value_i_reg[3]_i_1_n_0 ;
  wire \count_value_i_reg[3]_i_1_n_1 ;
  wire \count_value_i_reg[3]_i_1_n_2 ;
  wire \count_value_i_reg[3]_i_1_n_3 ;
  wire \count_value_i_reg[3]_i_1_n_4 ;
  wire \count_value_i_reg[3]_i_1_n_5 ;
  wire \count_value_i_reg[3]_i_1_n_6 ;
  wire \count_value_i_reg[3]_i_1_n_7 ;
  wire [3:0]\count_value_i_reg[6]_0 ;
  wire [3:0]\count_value_i_reg[7]_0 ;
  wire \count_value_i_reg[7]_i_1_n_0 ;
  wire \count_value_i_reg[7]_i_1_n_1 ;
  wire \count_value_i_reg[7]_i_1_n_2 ;
  wire \count_value_i_reg[7]_i_1_n_3 ;
  wire \count_value_i_reg[7]_i_1_n_4 ;
  wire \count_value_i_reg[7]_i_1_n_5 ;
  wire \count_value_i_reg[7]_i_1_n_6 ;
  wire \count_value_i_reg[7]_i_1_n_7 ;
  wire [8:0]\count_value_i_reg[8]_0 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire [2:0]\count_value_i_reg[9]_1 ;
  wire [1:0]\count_value_i_reg[9]_2 ;
  wire [8:0]\count_value_i_reg[9]_3 ;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire [0:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3 ;
  wire [9:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_n_3 ;
  wire [0:0]\gen_rst_cc.fifo_wr_rst_i_reg ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg_0 ;
  wire \gwdc.wr_data_count_i[10]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[10]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[3]_i_6_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_2_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_3_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_4_n_0 ;
  wire \gwdc.wr_data_count_i[7]_i_5_n_0 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[10]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[3]_i_1_n_3 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_0 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_1 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_2 ;
  wire \gwdc.wr_data_count_i_reg[7]_i_1_n_3 ;
  wire wr_clk;
  wire [3:2]\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_gwdc.wr_data_count_i_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_gwdc.wr_data_count_i_reg[10]_i_1_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[3]_i_1_n_7 ),
        .Q(Q[0]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[10]_i_1_n_5 ),
        .Q(Q[10]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  CARRY4 \count_value_i_reg[10]_i_1 
       (.CI(\count_value_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_count_value_i_reg[10]_i_1_CO_UNCONNECTED [3:2],\count_value_i_reg[10]_i_1_n_2 ,\count_value_i_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_value_i_reg[10]_i_1_O_UNCONNECTED [3],\count_value_i_reg[10]_i_1_n_5 ,\count_value_i_reg[10]_i_1_n_6 ,\count_value_i_reg[10]_i_1_n_7 }),
        .S({1'b0,Q[10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[3]_i_1_n_6 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[3]_i_1_n_5 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[3]_i_1_n_4 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  CARRY4 \count_value_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_value_i_reg[3]_i_1_n_0 ,\count_value_i_reg[3]_i_1_n_1 ,\count_value_i_reg[3]_i_1_n_2 ,\count_value_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[0]}),
        .O({\count_value_i_reg[3]_i_1_n_4 ,\count_value_i_reg[3]_i_1_n_5 ,\count_value_i_reg[3]_i_1_n_6 ,\count_value_i_reg[3]_i_1_n_7 }),
        .S({Q[3:1],S}));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[7]_i_1_n_7 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[7]_i_1_n_6 ),
        .Q(Q[5]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[7]_i_1_n_5 ),
        .Q(Q[6]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[7]_i_1_n_4 ),
        .Q(Q[7]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  CARRY4 \count_value_i_reg[7]_i_1 
       (.CI(\count_value_i_reg[3]_i_1_n_0 ),
        .CO({\count_value_i_reg[7]_i_1_n_0 ,\count_value_i_reg[7]_i_1_n_1 ,\count_value_i_reg[7]_i_1_n_2 ,\count_value_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_value_i_reg[7]_i_1_n_4 ,\count_value_i_reg[7]_i_1_n_5 ,\count_value_i_reg[7]_i_1_n_6 ,\count_value_i_reg[7]_i_1_n_7 }),
        .S(Q[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[10]_i_1_n_7 ),
        .Q(Q[8]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i_reg[10]_i_1_n_6 ),
        .Q(Q[9]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[9]),
        .I1(\count_value_i_reg[9]_3 [8]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[8]_0 [6]),
        .I2(\count_value_i_reg[8]_0 [8]),
        .I3(Q[8]),
        .I4(\count_value_i_reg[8]_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[8]_0 [3]),
        .I2(\count_value_i_reg[8]_0 [5]),
        .I3(Q[5]),
        .I4(\count_value_i_reg[8]_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[8]_0 [0]),
        .I2(\count_value_i_reg[8]_0 [2]),
        .I3(Q[2]),
        .I4(\count_value_i_reg[8]_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
  CARRY4 \gen_pntr_flags_cc.ram_empty_i_reg_i_2 
       (.CI(1'b0),
        .CO({\gen_pntr_flags_cc.ram_empty_i_reg ,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_1 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_2 ,\gen_pntr_flags_cc.ram_empty_i_reg_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gen_pntr_flags_cc.ram_empty_i_reg_i_2_O_UNCONNECTED [3:0]),
        .S({\count_value_i_reg[9]_0 ,\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ,\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_3 }),
        .CYINIT(Q[0]),
        .DI({Q[3:1],\gen_rst_cc.fifo_wr_rst_i_reg }),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] [3:0]),
        .S(\count_value_i_reg[3]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_i_1_n_0 ),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] [7:4]),
        .S(\count_value_i_reg[7]_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7]_i_1_n_0 ),
        .CO({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_CO_UNCONNECTED [3:1],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9]_i_1_O_UNCONNECTED [3:2],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] [9:8]}),
        .S({1'b0,1'b0,\count_value_i_reg[9]_2 }));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[10]_i_2 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[9]_3 [7]),
        .O(\gwdc.wr_data_count_i[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[10]_i_3 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[9]_3 [6]),
        .O(\gwdc.wr_data_count_i[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[3]_i_2 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[9]_3 [1]),
        .O(\gwdc.wr_data_count_i[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h718E8E71)) 
    \gwdc.wr_data_count_i[3]_i_6 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 ),
        .I2(\count_value_i_reg[9]_3 [0]),
        .I3(\count_value_i_reg[9]_3 [1]),
        .I4(Q[2]),
        .O(\gwdc.wr_data_count_i[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_2 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[9]_3 [5]),
        .O(\gwdc.wr_data_count_i[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_3 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[9]_3 [4]),
        .O(\gwdc.wr_data_count_i[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_4 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[9]_3 [3]),
        .O(\gwdc.wr_data_count_i[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gwdc.wr_data_count_i[7]_i_5 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[9]_3 [2]),
        .O(\gwdc.wr_data_count_i[7]_i_5_n_0 ));
  CARRY4 \gwdc.wr_data_count_i_reg[10]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ),
        .CO({\NLW_gwdc.wr_data_count_i_reg[10]_i_1_CO_UNCONNECTED [3:2],\gwdc.wr_data_count_i_reg[10]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\gwdc.wr_data_count_i[10]_i_2_n_0 ,\gwdc.wr_data_count_i[10]_i_3_n_0 }),
        .O({\NLW_gwdc.wr_data_count_i_reg[10]_i_1_O_UNCONNECTED [3],D[10:8]}),
        .S({1'b0,\count_value_i_reg[9]_1 }));
  CARRY4 \gwdc.wr_data_count_i_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[3]_i_2_n_0 ,DI,Q[0]}),
        .O(D[3:0]),
        .S({\count_value_i_reg[2]_0 [2],\gwdc.wr_data_count_i[3]_i_6_n_0 ,\count_value_i_reg[2]_0 [1:0]}));
  CARRY4 \gwdc.wr_data_count_i_reg[7]_i_1 
       (.CI(\gwdc.wr_data_count_i_reg[3]_i_1_n_0 ),
        .CO({\gwdc.wr_data_count_i_reg[7]_i_1_n_0 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_1 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_2 ,\gwdc.wr_data_count_i_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\gwdc.wr_data_count_i[7]_i_2_n_0 ,\gwdc.wr_data_count_i[7]_i_3_n_0 ,\gwdc.wr_data_count_i[7]_i_4_n_0 ,\gwdc.wr_data_count_i[7]_i_5_n_0 }),
        .O(D[7:4]),
        .S(\count_value_i_reg[6]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (Q,
    \count_value_i_reg[0]_0 ,
    S,
    \gen_fwft.curr_fwft_state_reg[1] ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[9]_0 ,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    rd_clk);
  output [8:0]Q;
  output \count_value_i_reg[0]_0 ;
  output [0:0]S;
  input [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[9]_0 ;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input rd_clk;

  wire [8:0]Q;
  wire [0:0]S;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[9]_0 ;
  wire \count_value_i_reg_n_0_[9] ;
  wire [1:0]\gen_fwft.curr_fwft_state_reg[1] ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h40BF)) 
    \count_value_i[0]_i_1__0 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h08FFF700)) 
    \count_value_i[1]_i_1__0 
       (.I0(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA2A00000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I2(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\count_value_i_reg_n_0_[9] ),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(rd_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(\count_value_i_reg_n_0_[9] ),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .I1(\count_value_i_reg[9]_0 ),
        .O(S));
  LUT4 #(
    .INIT(16'h00F7)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\gen_fwft.curr_fwft_state_reg[1] [0]),
        .I1(\gen_fwft.curr_fwft_state_reg[1] [1]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1
   (Q,
    D,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    wr_en,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_rst_cc.fifo_wr_rst_i_reg_0 ,
    \count_value_i_reg[9]_0 ,
    wr_clk);
  output [8:0]Q;
  output [9:0]D;
  output [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input wr_en;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input \gen_rst_cc.fifo_wr_rst_i_reg_0 ;
  input [9:0]\count_value_i_reg[9]_0 ;
  input wr_clk;

  wire [9:0]D;
  wire [8:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [9:0]\count_value_i_reg[9]_0 ;
  wire \count_value_i_reg_n_0_[9] ;
  wire [0:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_3 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg_0 ;
  wire wr_clk;
  wire wr_en;
  wire [3:1]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\count_value_i[7]_i_2_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\gen_rst_cc.fifo_wr_rst_i_reg ),
        .I3(wr_en),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ),
        .I5(Q[1]),
        .O(\count_value_i[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(\count_value_i_reg_n_0_[9] ),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(\count_value_i_reg_n_0_[9] ),
        .R(\gen_rst_cc.fifo_wr_rst_i_reg ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .I1(\count_value_i_reg[9]_0 [9]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2 
       (.I0(\count_value_i_reg_n_0_[9] ),
        .I1(\count_value_i_reg[9]_0 [9]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_3 
       (.I0(Q[8]),
        .I1(\count_value_i_reg[9]_0 [8]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3 
       (.I0(Q[3]),
        .I1(\count_value_i_reg[9]_0 [3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4 
       (.I0(Q[2]),
        .I1(\count_value_i_reg[9]_0 [2]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[9]_0 [1]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[9]_0 [0]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2 
       (.I0(Q[7]),
        .I1(\count_value_i_reg[9]_0 [7]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3 
       (.I0(Q[6]),
        .I1(\count_value_i_reg[9]_0 [6]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4 
       (.I0(Q[5]),
        .I1(\count_value_i_reg[9]_0 [5]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5 
       (.I0(Q[4]),
        .I1(\count_value_i_reg[9]_0 [4]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 ));
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ),
        .CO({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_CO_UNCONNECTED [3:1],\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[8]}),
        .O({\NLW_gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10]_i_1_O_UNCONNECTED [3:2],D[9:8]}),
        .S({1'b0,1'b0,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_2_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[10]_i_3_n_0 }));
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_3 }),
        .CYINIT(\gen_rst_cc.fifo_wr_rst_i_reg_0 ),
        .DI(Q[3:0]),
        .O(D[3:0]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_5_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_6_n_0 }));
  CARRY4 \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1 
       (.CI(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4]_i_1_n_0 ),
        .CO({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_1 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_2 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(D[7:4]),
        .S({\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_2_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_3_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_4_n_0 ,\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[8]_i_5_n_0 }));
endmodule

(* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) (* DOUT_RESET_VALUE = "0" *) 
(* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
(* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) (* EN_DVLD = "1'b0" *) 
(* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) (* EN_PF = "1'b1" *) 
(* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) (* EN_WACK = "1'b0" *) 
(* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "0" *) 
(* FIFO_MEM_TYPE = "0" *) (* FIFO_READ_DEPTH = "1024" *) (* FIFO_READ_LATENCY = "0" *) 
(* FIFO_SIZE = "27648" *) (* FIFO_WRITE_DEPTH = "1024" *) (* FULL_RESET_VALUE = "1" *) 
(* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "1019" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "1019" *) 
(* PF_THRESH_MIN = "7" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "11" *) (* RD_DC_WIDTH_EXT = "11" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "10" *) (* READ_DATA_WIDTH = "27" *) 
(* READ_MODE = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "27" *) (* WR_DATA_COUNT_WIDTH = "11" *) 
(* WR_DC_WIDTH_EXT = "11" *) (* WR_PNTR_WIDTH = "10" *) (* WR_RD_RATIO = "0" *) 
(* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [26:0]din;
  output full;
  output full_n;
  output prog_full;
  output [10:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [26:0]dout;
  output empty;
  output prog_empty;
  output [10:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:1]count_value_i;
  wire [9:0]diff_pntr_pe;
  wire [10:1]diff_pntr_pf_q;
  wire [10:1]diff_pntr_pf_q0;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire full;
  wire full_n;
  wire [1:0]\gen_fwft.curr_fwft_state ;
  wire \gen_fwft.empty_fwft_i_reg0 ;
  wire [1:0]\gen_fwft.next_fwft_state ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_fwft.rdpp1_inst_n_0 ;
  wire \gen_fwft.rdpp1_inst_n_1 ;
  wire \gen_fwft.rdpp1_inst_n_2 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9] ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1_n_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ;
  wire going_empty1;
  wire going_full1;
  wire [10:0]\grdc.diff_wr_rd_pntr_rdc ;
  wire \grdc.rd_data_count_i0 ;
  wire leaving_empty0;
  wire overflow;
  wire overflow_i0;
  wire prog_empty;
  wire prog_empty_i1;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf_q;
  wire rd_clk;
  wire [10:0]rd_data_count;
  wire rd_en;
  wire [9:0]rd_pntr_ext;
  wire rd_rst_busy;
  wire rdp_inst_n_10;
  wire rdp_inst_n_13;
  wire rdp_inst_n_14;
  wire rdp_inst_n_15;
  wire rdp_inst_n_17;
  wire rdp_inst_n_18;
  wire rdp_inst_n_19;
  wire rdp_inst_n_20;
  wire rdp_inst_n_21;
  wire rdp_inst_n_22;
  wire rdp_inst_n_23;
  wire rdp_inst_n_24;
  wire rdp_inst_n_25;
  wire rdp_inst_n_26;
  wire rdp_inst_n_27;
  wire rdp_inst_n_28;
  wire rdp_inst_n_29;
  wire rdp_inst_n_30;
  wire rdp_inst_n_31;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire read_only_q;
  wire rst;
  wire rst_d1;
  wire rst_d1_inst_n_2;
  wire sleep;
  wire underflow;
  wire underflow_i0;
  wire wr_clk;
  wire [10:0]wr_data_count;
  wire wr_en;
  wire [9:0]wr_pntr_ext;
  wire write_only_q;
  wire wrp_inst_n_0;
  wire wrp_inst_n_33;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_19;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire xpm_fifo_rst_inst_n_1;
  wire xpm_fifo_rst_inst_n_10;
  wire xpm_fifo_rst_inst_n_3;
  wire xpm_fifo_rst_inst_n_6;
  wire xpm_fifo_rst_inst_n_7;
  wire xpm_fifo_rst_inst_n_8;
  wire xpm_fifo_rst_inst_n_9;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [26:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_rst_busy = rd_rst_busy;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(\gen_fwft.curr_fwft_state [1]),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .O(\gen_fwft.next_fwft_state [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(\gen_fwft.curr_fwft_state [1]),
        .I1(rd_en),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .I3(ram_empty_i),
        .O(\gen_fwft.next_fwft_state [1]));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.next_fwft_state [0]),
        .Q(\gen_fwft.curr_fwft_state [0]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.next_fwft_state [1]),
        .Q(\gen_fwft.curr_fwft_state [1]),
        .R(rd_rst_busy));
  LUT4 #(
    .INIT(16'hF320)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.curr_fwft_state [1]),
        .I2(\gen_fwft.curr_fwft_state [0]),
        .I3(empty),
        .O(\gen_fwft.empty_fwft_i_reg0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.empty_fwft_i_reg0 ),
        .Q(empty),
        .S(rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn \gen_fwft.rdpp1_inst 
       (.DI(\gen_fwft.rdpp1_inst_n_2 ),
        .Q(rd_pntr_ext[1:0]),
        .S({\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\count_value_i_reg[1]_1 (wr_pntr_ext[1:0]),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state ),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_22),
        .Q(full),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_7),
        .Q(full_n),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[0]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[1]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[2]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[3]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[4]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[5]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[6]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[7]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[8]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(diff_pntr_pe[9]),
        .Q(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9] ),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[7] ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[6] ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[5] ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[9] ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[8] ),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ),
        .O(prog_empty_i1));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3 
       (.I0(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[1] ),
        .I1(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[3] ),
        .I2(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[0] ),
        .I3(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[4] ),
        .I4(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg_n_0_[2] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_1),
        .Q(prog_empty),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1 
       (.I0(empty),
        .I1(rdpp1_inst_n_9),
        .I2(full),
        .I3(wr_en),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1_n_0 ));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.read_only_q_i_1_n_0 ),
        .Q(read_only_q),
        .R(rd_rst_busy));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h4044)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1 
       (.I0(full),
        .I1(wr_en),
        .I2(empty),
        .I3(rdpp1_inst_n_9),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1_n_0 ));
  FDRE \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.write_only_q_i_1_n_0 ),
        .Q(write_only_q),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[10]),
        .Q(diff_pntr_pf_q[10]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[1]),
        .Q(diff_pntr_pf_q[1]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[2]),
        .Q(diff_pntr_pf_q[2]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[3]),
        .Q(diff_pntr_pf_q[3]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[4]),
        .Q(diff_pntr_pf_q[4]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[5]),
        .Q(diff_pntr_pf_q[5]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[6]),
        .Q(diff_pntr_pf_q[6]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[7]),
        .Q(diff_pntr_pf_q[7]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[8]),
        .Q(diff_pntr_pf_q[8]),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(diff_pntr_pf_q0[9]),
        .Q(diff_pntr_pf_q[9]),
        .R(rd_rst_busy));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_2 
       (.I0(diff_pntr_pf_q[8]),
        .I1(diff_pntr_pf_q[7]),
        .I2(diff_pntr_pf_q[6]),
        .I3(diff_pntr_pf_q[10]),
        .I4(diff_pntr_pf_q[9]),
        .I5(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ),
        .O(prog_full_i217_in));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3 
       (.I0(diff_pntr_pf_q[2]),
        .I1(diff_pntr_pf_q[4]),
        .I2(diff_pntr_pf_q[1]),
        .I3(diff_pntr_pf_q[5]),
        .I4(diff_pntr_pf_q[3]),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1_inst_n_2),
        .Q(prog_full),
        .S(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_rd_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdpp1_inst_n_9),
        .Q(ram_rd_en_pf_q),
        .R(rd_rst_busy));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.ram_wr_en_pf_q_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(xpm_fifo_rst_inst_n_8),
        .Q(ram_wr_en_pf_q),
        .R(rd_rst_busy));
  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "27" *) 
  (* BYTE_WRITE_WIDTH_B = "27" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "26" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "27" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "0" *) 
  (* MEMORY_SIZE = "27648" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "auto" *) 
  (* P_MIN_WIDTH_DATA = "27" *) 
  (* P_MIN_WIDTH_DATA_A = "27" *) 
  (* P_MIN_WIDTH_DATA_B = "27" *) 
  (* P_MIN_WIDTH_DATA_ECC = "27" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "27" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "27" *) 
  (* P_WIDTH_COL_WRITE_B = "27" *) 
  (* READ_DATA_WIDTH_A = "27" *) 
  (* READ_DATA_WIDTH_B = "27" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "27" *) 
  (* WRITE_DATA_WIDTH_B = "27" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [26:0]),
        .doutb(dout),
        .ena(xpm_fifo_rst_inst_n_8),
        .enb(rdpp1_inst_n_9),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(rd_rst_busy),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(\gen_fwft.curr_fwft_state [1]),
        .I1(\gen_fwft.curr_fwft_state [0]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  FDRE #(
    .INIT(1'b0)) 
    \gof.overflow_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(overflow_i0),
        .Q(overflow),
        .R(1'b0));
  FDRE \grdc.rd_data_count_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(rd_data_count[0]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(rd_data_count[10]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(rd_data_count[1]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(rd_data_count[2]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(rd_data_count[3]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(rd_data_count[4]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(rd_data_count[5]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(rd_data_count[6]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(rd_data_count[7]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(rd_data_count[8]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE \grdc.rd_data_count_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(rd_data_count[9]),
        .R(\grdc.rd_data_count_i0 ));
  FDRE #(
    .INIT(1'b0)) 
    \guf.underflow_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(underflow_i0),
        .Q(underflow),
        .R(1'b0));
  FDRE \gwdc.wr_data_count_i_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [0]),
        .Q(wr_data_count[0]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [10]),
        .Q(wr_data_count[10]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [1]),
        .Q(wr_data_count[1]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [2]),
        .Q(wr_data_count[2]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [3]),
        .Q(wr_data_count[3]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [4]),
        .Q(wr_data_count[4]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [5]),
        .Q(wr_data_count[5]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [6]),
        .Q(wr_data_count[6]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [7]),
        .Q(wr_data_count[7]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [8]),
        .Q(wr_data_count[8]),
        .R(rd_rst_busy));
  FDRE \gwdc.wr_data_count_i_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\grdc.diff_wr_rd_pntr_rdc [9]),
        .Q(wr_data_count[9]),
        .R(rd_rst_busy));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 rdp_inst
       (.CO(leaving_empty0),
        .DI(rdp_inst_n_10),
        .Q(rd_pntr_ext),
        .S({rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15}),
        .clr_full(clr_full),
        .\count_value_i_reg[10]_0 ({wrp_inst_n_0,wr_pntr_ext}),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\count_value_i_reg[8]_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8}),
        .\count_value_i_reg[9]_0 (going_empty1),
        .\count_value_i_reg[9]_1 (wrp_inst_n_33),
        .\count_value_i_reg[9]_2 (wrpp1_inst_n_19),
        .\gen_fwft.curr_fwft_state_reg[0] (rdpp1_inst_n_9),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (going_full1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_22),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (xpm_fifo_rst_inst_n_8),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ({rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[7] ({rdp_inst_n_26,rdp_inst_n_27,rdp_inst_n_28,rdp_inst_n_29}),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] ({rdp_inst_n_30,rdp_inst_n_31}),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .\grdc.rd_data_count_i_reg[3] (rdp_inst_n_17),
        .\grdc.rd_data_count_i_reg[7] ({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdpp1_inst
       (.Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .S(rdpp1_inst_n_10),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_9),
        .\count_value_i_reg[9]_0 (wr_pntr_ext[9]),
        .\gen_fwft.curr_fwft_state_reg[1] (\gen_fwft.curr_fwft_state ),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.clr_full(clr_full),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg (rst_d1_inst_n_2),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .prog_full(prog_full),
        .prog_full_i217_in(prog_full_i217_in),
        .ram_rd_en_pf_q(ram_rd_en_pf_q),
        .ram_wr_en_pf_q(ram_wr_en_pf_q),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_0 wrp_inst
       (.D(\grdc.diff_wr_rd_pntr_rdc ),
        .DI({rdp_inst_n_10,\gen_fwft.rdpp1_inst_n_2 }),
        .Q({wrp_inst_n_0,wr_pntr_ext}),
        .S(xpm_fifo_rst_inst_n_6),
        .\count_value_i_reg[1]_0 (count_value_i),
        .\count_value_i_reg[2]_0 ({rdp_inst_n_17,\gen_fwft.rdpp1_inst_n_0 ,\gen_fwft.rdpp1_inst_n_1 }),
        .\count_value_i_reg[3]_0 ({rdp_inst_n_23,rdp_inst_n_24,rdp_inst_n_25,xpm_fifo_rst_inst_n_9}),
        .\count_value_i_reg[6]_0 ({rdp_inst_n_18,rdp_inst_n_19,rdp_inst_n_20,rdp_inst_n_21}),
        .\count_value_i_reg[7]_0 ({rdp_inst_n_26,rdp_inst_n_27,rdp_inst_n_28,rdp_inst_n_29}),
        .\count_value_i_reg[8]_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8}),
        .\count_value_i_reg[9]_0 (rdpp1_inst_n_10),
        .\count_value_i_reg[9]_1 ({rdp_inst_n_13,rdp_inst_n_14,rdp_inst_n_15}),
        .\count_value_i_reg[9]_2 ({rdp_inst_n_30,rdp_inst_n_31}),
        .\count_value_i_reg[9]_3 (rd_pntr_ext[9:1]),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (wrp_inst_n_33),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (xpm_fifo_rst_inst_n_8),
        .\gen_pntr_flags_cc.ram_empty_i_reg (going_empty1),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[9] (diff_pntr_pe),
        .\gen_rst_cc.fifo_wr_rst_i_reg (xpm_fifo_rst_inst_n_3),
        .\gen_rst_cc.fifo_wr_rst_i_reg_0 (rd_rst_busy),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_1 wrpp1_inst
       (.D(diff_pntr_pf_q0),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8}),
        .\count_value_i_reg[9]_0 (rd_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (wrpp1_inst_n_19),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (xpm_fifo_rst_inst_n_8),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (full),
        .\gen_rst_cc.fifo_wr_rst_i_reg (rd_rst_busy),
        .\gen_rst_cc.fifo_wr_rst_i_reg_0 (xpm_fifo_rst_inst_n_10),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.CO(leaving_empty0),
        .Q(\gen_fwft.curr_fwft_state ),
        .S(xpm_fifo_rst_inst_n_6),
        .SR(\grdc.rd_data_count_i0 ),
        .\count_value_i_reg[0] (xpm_fifo_rst_inst_n_8),
        .\count_value_i_reg[0]_0 (wr_pntr_ext[0]),
        .\count_value_i_reg[0]_1 (rd_pntr_ext[0]),
        .\count_value_i_reg[1] (rd_rst_busy),
        .\count_value_i_reg[9] (going_full1),
        .\gen_fwft.curr_fwft_state_reg[0] (rdpp1_inst_n_9),
        .\gen_fwft.empty_fwft_i_reg (empty),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (full),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (xpm_fifo_rst_inst_n_7),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] (xpm_fifo_rst_inst_n_3),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_0 (xpm_fifo_rst_inst_n_9),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] (xpm_fifo_rst_inst_n_10),
        .overflow_i0(overflow_i0),
        .prog_empty(prog_empty),
        .prog_empty_i1(prog_empty_i1),
        .rd_en(rd_en),
        .read_only_q(read_only_q),
        .rst(rst),
        .rst_d1(rst_d1),
        .underflow_i0(underflow_i0),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .write_only_q(write_only_q));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ,
    \gen_rst_cc.fifo_wr_rst_i_reg ,
    wr_clk,
    rst,
    ram_wr_en_pf_q,
    prog_full_i217_in,
    ram_rd_en_pf_q,
    prog_full);
  output rst_d1;
  output clr_full;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  input \gen_rst_cc.fifo_wr_rst_i_reg ;
  input wr_clk;
  input rst;
  input ram_wr_en_pf_q;
  input prog_full_i217_in;
  input ram_rd_en_pf_q;
  input prog_full;

  wire clr_full;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ;
  wire \gen_rst_cc.fifo_wr_rst_i_reg ;
  wire prog_full;
  wire prog_full_i217_in;
  wire ram_rd_en_pf_q;
  wire ram_wr_en_pf_q;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_i_reg ),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(\gen_rst_cc.fifo_wr_rst_i_reg ),
        .O(clr_full));
  LUT5 #(
    .INIT(32'h45550040)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_i_1 
       (.I0(clr_full),
        .I1(ram_wr_en_pf_q),
        .I2(prog_full_i217_in),
        .I3(ram_rd_en_pf_q),
        .I4(prog_full),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.prog_full_i_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (\count_value_i_reg[1] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ,
    SR,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ,
    overflow_i0,
    underflow_i0,
    S,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[0] ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_0 ,
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] ,
    wr_clk,
    rst,
    rst_d1,
    write_only_q,
    prog_empty,
    prog_empty_i1,
    read_only_q,
    Q,
    wr_en,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_fwft.curr_fwft_state_reg[0] ,
    \gen_fwft.empty_fwft_i_reg ,
    rd_en,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[9] ,
    CO,
    \count_value_i_reg[0]_1 );
  output \count_value_i_reg[1] ;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  output [0:0]SR;
  output [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  output overflow_i0;
  output underflow_i0;
  output [0:0]S;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  output \count_value_i_reg[0] ;
  output [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_0 ;
  output \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] ;
  input wr_clk;
  input rst;
  input rst_d1;
  input write_only_q;
  input prog_empty;
  input prog_empty_i1;
  input read_only_q;
  input [1:0]Q;
  input wr_en;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  input \gen_fwft.curr_fwft_state_reg[0] ;
  input \gen_fwft.empty_fwft_i_reg ;
  input rd_en;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]\count_value_i_reg[9] ;
  input [0:0]CO;
  input [0:0]\count_value_i_reg[0]_1 ;

  wire [0:0]CO;
  wire [1:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire \count_value_i_reg[0] ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \count_value_i_reg[1] ;
  wire [0:0]\count_value_i_reg[9] ;
  wire \gen_fwft.curr_fwft_state_reg[0] ;
  wire \gen_fwft.empty_fwft_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ;
  wire [0:0]\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_0 ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ;
  wire \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] ;
  wire overflow_i0;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire prog_empty;
  wire prog_empty_i1;
  wire rd_en;
  wire read_only_q;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire underflow_i0;
  wire wr_clk;
  wire wr_en;
  wire write_only_q;

  LUT4 #(
    .INIT(16'hFB04)) 
    \count_value_i[3]_i_2 
       (.I0(\count_value_i_reg[1] ),
        .I1(wr_en),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(\count_value_i_reg[0]_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h4444455500004555)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2_n_0 ),
        .I1(\gen_fwft.curr_fwft_state_reg[0] ),
        .I2(\count_value_i_reg[9] ),
        .I3(\count_value_i_reg[0] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I5(CO),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(\count_value_i_reg[1] ),
        .I1(rst_d1),
        .I2(rst),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF04FF)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_2 
       (.I0(\count_value_i_reg[1] ),
        .I1(wr_en),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(\gen_fwft.curr_fwft_state_reg[0] ),
        .I4(\gen_fwft.empty_fwft_i_reg ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFF04FF0000FB00)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe[3]_i_6 
       (.I0(\count_value_i_reg[1] ),
        .I1(wr_en),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(\gen_fwft.curr_fwft_state_reg[0] ),
        .I4(\gen_fwft.empty_fwft_i_reg ),
        .I5(\count_value_i_reg[0]_1 ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.diff_pntr_pe_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hFFFFFC4C)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_i_1 
       (.I0(write_only_q),
        .I1(prog_empty),
        .I2(prog_empty_i1),
        .I3(read_only_q),
        .I4(\count_value_i_reg[1] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpe_cc_sym.prog_empty_i_reg ));
  LUT4 #(
    .INIT(16'h0004)) 
    \gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q[4]_i_2 
       (.I0(\count_value_i_reg[1] ),
        .I1(wr_en),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I3(\gen_fwft.curr_fwft_state_reg[0] ),
        .O(\gen_pntr_flags_cc.wrp_eq_rdp_pf_cc.gpf_cc_sym.diff_pntr_pf_q_reg[4] ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_i_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_i),
        .Q(\count_value_i_reg[1] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I1(wr_en),
        .I2(\count_value_i_reg[1] ),
        .O(\count_value_i_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \gof.overflow_i_i_1 
       (.I0(wr_en),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ),
        .I2(\count_value_i_reg[1] ),
        .O(overflow_i0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \grdc.rd_data_count_i[10]_i_1 
       (.I0(\count_value_i_reg[1] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \guf.underflow_i_i_1 
       (.I0(rd_en),
        .I1(\gen_fwft.empty_fwft_i_reg ),
        .I2(\count_value_i_reg[1] ),
        .O(underflow_i0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
   (overflow,
    dout,
    empty,
    rd_data_count,
    underflow,
    \FSM_sequential_state_reg[0] ,
    E,
    s_axis_video_tready,
    fifo_eol_re_dly_reg,
    aclk,
    din,
    rd_en,
    \grdc.rd_data_count_i_reg[6] ,
    vid_io_out_ce,
    fifo_sof_dly,
    aresetn,
    aclken,
    s_axis_video_tvalid,
    fifo_eol_dly);
  output overflow;
  output [26:0]dout;
  output empty;
  output [8:0]rd_data_count;
  output underflow;
  output \FSM_sequential_state_reg[0] ;
  output [0:0]E;
  output s_axis_video_tready;
  output fifo_eol_re_dly_reg;
  input aclk;
  input [26:0]din;
  input rd_en;
  input \grdc.rd_data_count_i_reg[6] ;
  input vid_io_out_ce;
  input fifo_sof_dly;
  input aresetn;
  input aclken;
  input s_axis_video_tvalid;
  input fifo_eol_dly;

  wire [0:0]E;
  wire \FSM_sequential_state_reg[0] ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire [26:0]din;
  wire [26:0]dout;
  wire empty;
  wire fifo_eol_dly;
  wire fifo_eol_re_dly_reg;
  wire [1:0]fifo_level_rd;
  wire fifo_sof_dly;
  wire full_i;
  wire \grdc.rd_data_count_i_reg[6] ;
  wire overflow;
  wire [8:0]rd_data_count;
  wire rd_en;
  wire s_axis_video_tready;
  wire s_axis_video_tvalid;
  wire underflow;
  wire vid_io_out_ce;
  wire vid_reset;
  wire wr_en_i;
  wire wr_rst_busy_i;
  wire xpm_fifo_base_inst_n_10;
  wire xpm_fifo_base_inst_n_11;
  wire xpm_fifo_base_inst_n_12;
  wire xpm_fifo_base_inst_n_13;
  wire xpm_fifo_base_inst_n_16;
  wire xpm_fifo_base_inst_n_17;
  wire xpm_fifo_base_inst_n_2;
  wire xpm_fifo_base_inst_n_3;
  wire xpm_fifo_base_inst_n_4;
  wire xpm_fifo_base_inst_n_46;
  wire xpm_fifo_base_inst_n_5;
  wire xpm_fifo_base_inst_n_6;
  wire xpm_fifo_base_inst_n_60;
  wire xpm_fifo_base_inst_n_61;
  wire xpm_fifo_base_inst_n_62;
  wire xpm_fifo_base_inst_n_63;
  wire xpm_fifo_base_inst_n_7;
  wire xpm_fifo_base_inst_n_8;
  wire xpm_fifo_base_inst_n_9;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00010000)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(rd_data_count[7]),
        .I1(rd_data_count[8]),
        .I2(rd_data_count[6]),
        .I3(rd_data_count[5]),
        .I4(\grdc.rd_data_count_i_reg[6] ),
        .O(\FSM_sequential_state_reg[0] ));
  LUT3 #(
    .INIT(8'h20)) 
    \fifo_eol_cnt_dly[12]_i_1 
       (.I0(vid_io_out_ce),
        .I1(dout[25]),
        .I2(fifo_sof_dly),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    fifo_eol_re_dly_i_1
       (.I0(dout[24]),
        .I1(fifo_eol_dly),
        .O(fifo_eol_re_dly_reg));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    s_axis_video_tready_INST_0
       (.I0(aresetn),
        .I1(full_i),
        .I2(wr_rst_busy_i),
        .O(s_axis_video_tready));
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_MEM_TYPE = "0" *) 
  (* FIFO_READ_DEPTH = "1024" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "27648" *) 
  (* FIFO_WRITE_DEPTH = "1024" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "1019" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "1019" *) 
  (* PF_THRESH_MIN = "7" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "11" *) 
  (* RD_DC_WIDTH_EXT = "11" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "10" *) 
  (* READ_DATA_WIDTH = "27" *) 
  (* READ_MODE = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "27" *) 
  (* WR_DATA_COUNT_WIDTH = "11" *) 
  (* WR_DC_WIDTH_EXT = "11" *) 
  (* WR_PNTR_WIDTH = "10" *) 
  (* WR_RD_RATIO = "0" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(xpm_fifo_base_inst_n_60),
        .almost_full(xpm_fifo_base_inst_n_16),
        .data_valid(xpm_fifo_base_inst_n_61),
        .dbiterr(xpm_fifo_base_inst_n_63),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full_i),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(overflow),
        .prog_empty(xpm_fifo_base_inst_n_46),
        .prog_full(xpm_fifo_base_inst_n_2),
        .rd_clk(aclk),
        .rd_data_count({rd_data_count,fifo_level_rd}),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(vid_reset),
        .sbiterr(xpm_fifo_base_inst_n_62),
        .sleep(1'b0),
        .underflow(underflow),
        .wr_ack(xpm_fifo_base_inst_n_17),
        .wr_clk(aclk),
        .wr_data_count({xpm_fifo_base_inst_n_3,xpm_fifo_base_inst_n_4,xpm_fifo_base_inst_n_5,xpm_fifo_base_inst_n_6,xpm_fifo_base_inst_n_7,xpm_fifo_base_inst_n_8,xpm_fifo_base_inst_n_9,xpm_fifo_base_inst_n_10,xpm_fifo_base_inst_n_11,xpm_fifo_base_inst_n_12,xpm_fifo_base_inst_n_13}),
        .wr_en(wr_en_i),
        .wr_rst_busy(wr_rst_busy_i));
  LUT1 #(
    .INIT(2'h1)) 
    xpm_fifo_base_inst_i_1
       (.I0(aresetn),
        .O(vid_reset));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    xpm_fifo_base_inst_i_2
       (.I0(full_i),
        .I1(wr_rst_busy_i),
        .I2(aclken),
        .I3(s_axis_video_tvalid),
        .I4(aresetn),
        .O(wr_en_i));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "27" *) (* BYTE_WRITE_WIDTH_B = "27" *) (* CLOCKING_MODE = "0" *) 
(* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "0" *) 
(* MEMORY_SIZE = "27648" *) (* MEMORY_TYPE = "1" *) (* MESSAGE_CONTROL = "0" *) 
(* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) 
(* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "1024" *) (* P_MEMORY_OPT = "yes" *) 
(* P_MEMORY_PRIMITIVE = "auto" *) (* P_MIN_WIDTH_DATA = "27" *) (* P_MIN_WIDTH_DATA_A = "27" *) 
(* P_MIN_WIDTH_DATA_B = "27" *) (* P_MIN_WIDTH_DATA_ECC = "27" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) 
(* P_MIN_WIDTH_DATA_SHFT = "27" *) (* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
(* P_WIDTH_ADDR_READ_A = "10" *) (* P_WIDTH_ADDR_READ_B = "10" *) (* P_WIDTH_ADDR_WRITE_A = "10" *) 
(* P_WIDTH_ADDR_WRITE_B = "10" *) (* P_WIDTH_COL_WRITE_A = "27" *) (* P_WIDTH_COL_WRITE_B = "27" *) 
(* READ_DATA_WIDTH_A = "27" *) (* READ_DATA_WIDTH_B = "27" *) (* READ_LATENCY_A = "2" *) 
(* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "1" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "27" *) (* WRITE_DATA_WIDTH_B = "27" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [9:0]addra;
  input [26:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [26:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [26:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [26:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [26:0]dina;
  wire [26:0]doutb;
  wire ena;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED ;
  wire [31:27]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d27" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "26" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d27" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "26" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "27648" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,addrb,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOBDO_UNCONNECTED [31:27],doutb}),
        .DOPADOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(enb),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(regceb),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(rstb),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_SBITERR_UNCONNECTED ),
        .WEA({ena,ena,ena,ena}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
