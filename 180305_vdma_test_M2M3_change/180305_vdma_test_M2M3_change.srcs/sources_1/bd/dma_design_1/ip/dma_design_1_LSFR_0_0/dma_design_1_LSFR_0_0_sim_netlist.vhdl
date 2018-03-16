-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Thu Mar 15 19:35:42 2018
-- Host        : ensc-pit-13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/yangjiel/Desktop/180305_vdma_test_M2M3_change/180305_vdma_test_M2M3_change.srcs/sources_1/bd/dma_design_1/ip/dma_design_1_LSFR_0_0/dma_design_1_LSFR_0_0_sim_netlist.vhdl
-- Design      : dma_design_1_LSFR_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dma_design_1_LSFR_0_0_LSFR is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    en : in STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dma_design_1_LSFR_0_0_LSFR : entity is "LSFR";
end dma_design_1_LSFR_0_0_LSFR;

architecture STRUCTURE of dma_design_1_LSFR_0_0_LSFR is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\Qt[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => p_0_in
    );
\Qt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => en,
      D => \^q\(1),
      Q => \^q\(0),
      S => p_0_in
    );
\Qt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => en,
      D => \^q\(2),
      Q => \^q\(1),
      R => p_0_in
    );
\Qt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => en,
      D => \^q\(3),
      Q => \^q\(2),
      R => p_0_in
    );
\Qt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => en,
      D => \^q\(4),
      Q => \^q\(3),
      R => p_0_in
    );
\Qt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => en,
      D => \^q\(5),
      Q => \^q\(4),
      R => p_0_in
    );
\Qt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => en,
      D => \^q\(6),
      Q => \^q\(5),
      R => p_0_in
    );
\Qt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => en,
      D => \^q\(7),
      Q => \^q\(6),
      R => p_0_in
    );
\Qt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => en,
      D => \p_0_out__0\(7),
      Q => \^q\(7),
      R => p_0_in
    );
p_0_out: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \p_0_out__0\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dma_design_1_LSFR_0_0 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    en : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dma_design_1_LSFR_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dma_design_1_LSFR_0_0 : entity is "dma_design_1_LSFR_0_0,LSFR,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dma_design_1_LSFR_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of dma_design_1_LSFR_0_0 : entity is "LSFR,Vivado 2017.3";
end dma_design_1_LSFR_0_0;

architecture STRUCTURE of dma_design_1_LSFR_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clock : signal is "XIL_INTERFACENAME clock, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN dma_design_1_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
U0: entity work.dma_design_1_LSFR_0_0_LSFR
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      clock => clock,
      en => en,
      reset => reset
    );
end STRUCTURE;
