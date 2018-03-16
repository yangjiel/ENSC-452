-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Thu Mar  1 19:01:50 2018
-- Host        : ensc-pit-09 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/jfa49/vdma_test/vdma_test.srcs/sources_1/bd/dma_design_1/ip/dma_design_1_vga_logic_0_0/dma_design_1_vga_logic_0_0_sim_netlist.vhdl
-- Design      : dma_design_1_vga_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dma_design_1_vga_logic_0_0_vga_logic is
  port (
    b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    active_video : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dma_design_1_vga_logic_0_0_vga_logic : entity is "vga_logic";
end dma_design_1_vga_logic_0_0_vga_logic;

architecture STRUCTURE of dma_design_1_vga_logic_0_0_vga_logic is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \b[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \b[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \b[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \b[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \g[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \r[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \r[3]_INST_0\ : label is "soft_lutpair5";
begin
\b[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(0),
      O => b(0)
    );
\b[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(1),
      O => b(1)
    );
\b[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(2),
      O => b(2)
    );
\b[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(3),
      O => b(3)
    );
\g[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(4),
      O => g(0)
    );
\g[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(5),
      O => g(1)
    );
\g[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(6),
      O => g(2)
    );
\g[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(7),
      O => g(3)
    );
\r[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(8),
      O => r(0)
    );
\r[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(9),
      O => r(1)
    );
\r[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(10),
      O => r(2)
    );
\r[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => active_video,
      I1 => din(11),
      O => r(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dma_design_1_vga_logic_0_0 is
  port (
    din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    active_video : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dma_design_1_vga_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dma_design_1_vga_logic_0_0 : entity is "dma_design_1_vga_logic_0_0,vga_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dma_design_1_vga_logic_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dma_design_1_vga_logic_0_0 : entity is "vga_logic,Vivado 2017.3";
end dma_design_1_vga_logic_0_0;

architecture STRUCTURE of dma_design_1_vga_logic_0_0 is
begin
inst: entity work.dma_design_1_vga_logic_0_0_vga_logic
     port map (
      active_video => active_video,
      b(3 downto 0) => b(3 downto 0),
      din(11 downto 8) => din(23 downto 20),
      din(7 downto 4) => din(15 downto 12),
      din(3 downto 0) => din(7 downto 4),
      g(3 downto 0) => g(3 downto 0),
      r(3 downto 0) => r(3 downto 0)
    );
end STRUCTURE;
