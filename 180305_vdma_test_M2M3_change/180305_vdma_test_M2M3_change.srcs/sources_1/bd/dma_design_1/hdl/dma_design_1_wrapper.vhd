--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
--Date        : Thu Mar 15 19:34:35 2018
--Host        : ensc-pit-13 running 64-bit major release  (build 9200)
--Command     : generate_target dma_design_1_wrapper.bd
--Design      : dma_design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dma_design_1_wrapper is
  port (
    AC_ADR0_0 : out STD_LOGIC;
    AC_ADR1_0 : out STD_LOGIC;
    AC_GPIO0_0 : out STD_LOGIC;
    AC_GPIO1_0 : in STD_LOGIC;
    AC_GPIO2_0 : in STD_LOGIC;
    AC_GPIO3_0 : in STD_LOGIC;
    AC_MCLK_0 : out STD_LOGIC;
    AC_SCK_0 : out STD_LOGIC;
    AC_SDA_0 : inout STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LD_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SW_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btns_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_100_0 : in STD_LOGIC;
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_vsync : out STD_LOGIC
  );
end dma_design_1_wrapper;

architecture STRUCTURE of dma_design_1_wrapper is
  component dma_design_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    btns_5bits_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    AC_ADR0_0 : out STD_LOGIC;
    AC_ADR1_0 : out STD_LOGIC;
    AC_GPIO0_0 : out STD_LOGIC;
    AC_GPIO1_0 : in STD_LOGIC;
    AC_GPIO2_0 : in STD_LOGIC;
    AC_GPIO3_0 : in STD_LOGIC;
    AC_MCLK_0 : out STD_LOGIC;
    AC_SCK_0 : out STD_LOGIC;
    AC_SDA_0 : inout STD_LOGIC;
    LD_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SW_0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_100_0 : in STD_LOGIC
  );
  end component dma_design_1;
begin
dma_design_1_i: component dma_design_1
     port map (
      AC_ADR0_0 => AC_ADR0_0,
      AC_ADR1_0 => AC_ADR1_0,
      AC_GPIO0_0 => AC_GPIO0_0,
      AC_GPIO1_0 => AC_GPIO1_0,
      AC_GPIO2_0 => AC_GPIO2_0,
      AC_GPIO3_0 => AC_GPIO3_0,
      AC_MCLK_0 => AC_MCLK_0,
      AC_SCK_0 => AC_SCK_0,
      AC_SDA_0 => AC_SDA_0,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LD_0(7 downto 0) => LD_0(7 downto 0),
      SW_0(7 downto 0) => SW_0(7 downto 0),
      btns_5bits_tri_i(4 downto 0) => btns_5bits_tri_i(4 downto 0),
      clk_100_0 => clk_100_0,
      vga_blue(3 downto 0) => vga_blue(3 downto 0),
      vga_green(3 downto 0) => vga_green(3 downto 0),
      vga_hsync => vga_hsync,
      vga_red(3 downto 0) => vga_red(3 downto 0),
      vga_vsync => vga_vsync
    );
end STRUCTURE;
