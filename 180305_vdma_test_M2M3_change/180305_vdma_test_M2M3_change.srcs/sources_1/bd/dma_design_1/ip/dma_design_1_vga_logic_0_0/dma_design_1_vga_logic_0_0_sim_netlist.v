// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Thu Mar  1 19:01:50 2018
// Host        : ensc-pit-09 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/jfa49/vdma_test/vdma_test.srcs/sources_1/bd/dma_design_1/ip/dma_design_1_vga_logic_0_0/dma_design_1_vga_logic_0_0_sim_netlist.v
// Design      : dma_design_1_vga_logic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dma_design_1_vga_logic_0_0,vga_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "vga_logic,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module dma_design_1_vga_logic_0_0
   (din,
    active_video,
    r,
    g,
    b);
  input [23:0]din;
  input active_video;
  output [3:0]r;
  output [3:0]g;
  output [3:0]b;

  wire active_video;
  wire [3:0]b;
  wire [23:0]din;
  wire [3:0]g;
  wire [3:0]r;

  dma_design_1_vga_logic_0_0_vga_logic inst
       (.active_video(active_video),
        .b(b),
        .din({din[23:20],din[15:12],din[7:4]}),
        .g(g),
        .r(r));
endmodule

(* ORIG_REF_NAME = "vga_logic" *) 
module dma_design_1_vga_logic_0_0_vga_logic
   (b,
    g,
    r,
    active_video,
    din);
  output [3:0]b;
  output [3:0]g;
  output [3:0]r;
  input active_video;
  input [11:0]din;

  wire active_video;
  wire [3:0]b;
  wire [11:0]din;
  wire [3:0]g;
  wire [3:0]r;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[0]_INST_0 
       (.I0(active_video),
        .I1(din[0]),
        .O(b[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[1]_INST_0 
       (.I0(active_video),
        .I1(din[1]),
        .O(b[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[2]_INST_0 
       (.I0(active_video),
        .I1(din[2]),
        .O(b[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \b[3]_INST_0 
       (.I0(active_video),
        .I1(din[3]),
        .O(b[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g[0]_INST_0 
       (.I0(active_video),
        .I1(din[4]),
        .O(g[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g[1]_INST_0 
       (.I0(active_video),
        .I1(din[5]),
        .O(g[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g[2]_INST_0 
       (.I0(active_video),
        .I1(din[6]),
        .O(g[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g[3]_INST_0 
       (.I0(active_video),
        .I1(din[7]),
        .O(g[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[0]_INST_0 
       (.I0(active_video),
        .I1(din[8]),
        .O(r[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[1]_INST_0 
       (.I0(active_video),
        .I1(din[9]),
        .O(r[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[2]_INST_0 
       (.I0(active_video),
        .I1(din[10]),
        .O(r[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[3]_INST_0 
       (.I0(active_video),
        .I1(din[11]),
        .O(r[3]));
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
