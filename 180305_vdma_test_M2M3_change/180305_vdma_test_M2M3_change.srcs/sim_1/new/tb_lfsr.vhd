library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_lfsr is
end tb_lfsr;

--architecture bench of tb_lfsr is

--COMPONENT LSFR
--      Port ( clock : in STD_LOGIC;
--      reset : in STD_LOGIC;
--      en : in STD_LOGIC;
--      Q : out STD_LOGIC_VECTOR (7 downto 0);
--      check: out STD_LOGIC);
--END COMPONENT;

--signal clock1: STD_LOGIC;
--signal reset1: STD_LOGIC;
--signal Q1: STD_LOGIC_VECTOR(7 downto 0);
--signal check1: STD_LOGIC;
--signal en : STD_LOGIC;

--begin

--mapping: LSFR PORT MAP(
--clock => clock1,
--reset => reset1,
--en => en,
--Q => Q1,
--check => check1);

--clock: PROCESS
--BEGIN
--   clock1 <= '0'; wait for 50 ns;
--   clock1 <= '1'; wait for 50 ns;
--END PROCESS;

--reset: PROCESS
--BEGIN
--   reset1 <= '0';
--   en <= '1';
--   wait for 900 ns;
--END PROCESS;

end bench;