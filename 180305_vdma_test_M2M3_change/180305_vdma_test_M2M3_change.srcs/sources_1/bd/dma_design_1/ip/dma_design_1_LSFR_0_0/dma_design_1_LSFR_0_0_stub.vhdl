-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Thu Mar 15 19:35:42 2018
-- Host        : ensc-pit-13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/yangjiel/Desktop/180305_vdma_test_M2M3_change/180305_vdma_test_M2M3_change.srcs/sources_1/bd/dma_design_1/ip/dma_design_1_LSFR_0_0/dma_design_1_LSFR_0_0_stub.vhdl
-- Design      : dma_design_1_LSFR_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dma_design_1_LSFR_0_0 is
  Port ( 
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    en : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end dma_design_1_LSFR_0_0;

architecture stub of dma_design_1_LSFR_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,reset,en,Q[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "LSFR,Vivado 2017.3";
begin
end;
