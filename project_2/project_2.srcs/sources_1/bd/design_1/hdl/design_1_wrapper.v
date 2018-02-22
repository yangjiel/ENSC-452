//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
//Date        : Fri Feb  9 14:20:54 2018
//Host        : ensc-pit-13 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (AC_ADR0_0,
    AC_ADR1_0,
    AC_GPIO0_0,
    AC_GPIO1_0,
    AC_GPIO2_0,
    AC_GPIO3_0,
    AC_MCLK_0,
    AC_SCK_0,
    AC_SDA_0,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    LD_0,
    SW_0,
    clk_100_0);
  output AC_ADR0_0;
  output AC_ADR1_0;
  output AC_GPIO0_0;
  input AC_GPIO1_0;
  input AC_GPIO2_0;
  input AC_GPIO3_0;
  output AC_MCLK_0;
  output AC_SCK_0;
  inout AC_SDA_0;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [7:0]LD_0;
  input [7:0]SW_0;
  input clk_100_0;

  wire AC_ADR0_0;
  wire AC_ADR1_0;
  wire AC_GPIO0_0;
  wire AC_GPIO1_0;
  wire AC_GPIO2_0;
  wire AC_GPIO3_0;
  wire AC_MCLK_0;
  wire AC_SCK_0;
  wire AC_SDA_0;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [7:0]LD_0;
  wire [7:0]SW_0;
  wire clk_100_0;

  design_1 design_1_i
       (.AC_ADR0_0(AC_ADR0_0),
        .AC_ADR1_0(AC_ADR1_0),
        .AC_GPIO0_0(AC_GPIO0_0),
        .AC_GPIO1_0(AC_GPIO1_0),
        .AC_GPIO2_0(AC_GPIO2_0),
        .AC_GPIO3_0(AC_GPIO3_0),
        .AC_MCLK_0(AC_MCLK_0),
        .AC_SCK_0(AC_SCK_0),
        .AC_SDA_0(AC_SDA_0),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .LD_0(LD_0),
        .SW_0(SW_0),
        .clk_100_0(clk_100_0));
endmodule
