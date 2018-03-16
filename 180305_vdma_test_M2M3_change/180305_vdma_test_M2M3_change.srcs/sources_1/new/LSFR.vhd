library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LSFR is
Port ( clock : in STD_LOGIC;
       reset : in STD_LOGIC;
       en : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (7 downto 0)
       );

--       constant seed: STD_LOGIC_VECTOR(7 downto 0) := "00000001";
end LSFR;

architecture Behavioral of LSFR is

--signal temp: STD_LOGIC;
signal Qt: STD_LOGIC_VECTOR(7 downto 0) := x"01";

begin

PROCESS(clock)
variable tmp : STD_LOGIC := '0';
BEGIN

IF rising_edge(clock) THEN
   IF (reset='0') THEN
   -- credit to QuantumRipple for pointing out that this should not
   -- be reset to all 0's, as you will enter an invalid state
      Qt <= x"01"; 
   --ELSE Qt <= seed;
   ELSIF en = '1' THEN
      tmp := Qt(4) XOR Qt(3) XOR Qt(2) XOR Qt(0);
      Qt <= tmp & Qt(7 downto 1);
   END IF;

END IF;
END PROCESS;
-- check <= temp;
Q <= Qt;

end Behavioral;