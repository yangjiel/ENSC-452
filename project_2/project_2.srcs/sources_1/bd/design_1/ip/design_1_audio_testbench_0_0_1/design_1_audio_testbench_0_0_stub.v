// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Feb  9 14:21:54 2018
// Host        : ensc-pit-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/yangjiel/Desktop/VGA_mem_mapped-master/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_audio_testbench_0_0_1/design_1_audio_testbench_0_0_stub.v
// Design      : design_1_audio_testbench_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "audio_testbench,Vivado 2017.3" *)
module design_1_audio_testbench_0_0(clk_100, AC_ADR0, AC_ADR1, AC_GPIO0, AC_GPIO1, 
  AC_GPIO2, AC_GPIO3, AC_MCLK, AC_SCK, AC_SDA, LD, SW)
/* synthesis syn_black_box black_box_pad_pin="clk_100,AC_ADR0,AC_ADR1,AC_GPIO0,AC_GPIO1,AC_GPIO2,AC_GPIO3,AC_MCLK,AC_SCK,AC_SDA,LD[7:0],SW[7:0]" */;
  input clk_100;
  output AC_ADR0;
  output AC_ADR1;
  output AC_GPIO0;
  input AC_GPIO1;
  input AC_GPIO2;
  input AC_GPIO3;
  output AC_MCLK;
  output AC_SCK;
  inout AC_SDA;
  output [7:0]LD;
  input [7:0]SW;
endmodule
