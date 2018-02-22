----------------------------------------------------------------------------------
-- Testbench for Audiointerface for Zedboard
--
-- Stefan Scholl, DC9ST
-- Microelectronic Systems Design Research Group
-- TU Kaiserslautern
-- 2014
----------------------------------------------------------------------------------
-- This testbench can operate in two different modes:
--
-- 1: sawtooth mode: outputs a simple sawtool signal on l and right headphone output (discards input signals)
-- 2: loopback mode: line in signals are routed to the headphone output 
--
-- choose between the two mode by commenting the code blocks below
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity audio_testbench is
Port ( clk_100  : in    STD_LOGIC; -- 100 mhz master takt 
       AC_ADR0  : out   STD_LOGIC;  -- control signals to ADAU chip
       AC_ADR1  : out   STD_LOGIC;
       AC_GPIO0 : out   STD_LOGIC;  -- I2S MISO
       AC_GPIO1 : in    STD_LOGIC;  -- I2S MOSI
       AC_GPIO2 : in    STD_LOGIC;  -- I2S_bclk
       AC_GPIO3 : in    STD_LOGIC;  -- I2S_LR
       AC_MCLK  : out   STD_LOGIC;
       AC_SCK   : out   STD_LOGIC;
       AC_SDA   : inout STD_LOGIC;
       LD : out STD_LOGIC_VECTOR(7 downto 0)
       );
end audio_testbench;



architecture Behavioral of audio_testbench is


COMPONENT audio_top
Port ( clk_100  : in    STD_LOGIC; -- 100 mhz input clock 
       AC_ADR0  : out   STD_LOGIC; -- contol signals to audio chip
       AC_ADR1  : out   STD_LOGIC;
       AC_GPIO0 : out   STD_LOGIC;  -- I2S MISO
       AC_GPIO1 : in    STD_LOGIC;  -- I2S MOSI
       AC_GPIO2 : in    STD_LOGIC;  -- I2S_bclk
       AC_GPIO3 : in    STD_LOGIC;  -- I2S_LR
       AC_MCLK  : out   STD_LOGIC;
       AC_SCK   : out   STD_LOGIC;
       AC_SDA   : inout STD_LOGIC;

       hphone_l  : in STD_LOGIC_VECTOR(23 downto 0);
       hphone_l_valid : in std_logic;
       hphone_r  : in STD_LOGIC_VECTOR(23 downto 0);
       hphone_r_valid_dummy : in std_logic;
       
       line_in_l    : out STD_LOGIC_VECTOR(23 downto 0);
       line_in_r    : out STD_LOGIC_VECTOR(23 downto 0);
       
       new_sample : out STD_LOGIC;     -- goes up for 1 clk cycle if new sample is transmitted received
       sample_clk_48k : out std_logic  -- sample clock 
       );
END COMPONENT;
    type SOUND_ARRAY is array (31 downto 0) of unsigned(2 downto 0);
    signal sound : SOUND_ARRAY := ("001", "000", "001", "000",
                                   "101", "000", "101", "000",
                                   "110", "000", "110", "000",
                                   "101", "101", "101", "000",
                                   "100", "000", "100", "000",
                                   "011", "000", "011", "000",
                                   "010", "000", "010", "000",
                                   "010", "010", "000", "000");
    signal index : integer;
    signal clk_100_buffered: std_logic;
    signal slow5hz : unsigned (24 downto 0);
    signal frequency : unsigned (18 downto 0);
    signal counter : unsigned (18 downto 0);
    signal hphone_l, hphone_r : std_logic_vector (23 downto 0);
    signal hphone_valid: std_logic;
    signal new_sample : std_logic;
    signal sample_clk_48k: std_logic;
    signal line_in_l, line_in_r : std_logic_vector (23 downto 0);

    -- keep signals for tracking them with the Logic Analyzer
    attribute keep : string;
    attribute keep of sample_clk_48k : signal is "true";
    attribute keep of hphone_l : signal is "true";
    attribute keep of hphone_r : signal is "true";
    
    attribute keep of line_in_l : signal is "true";
    attribute keep of line_in_r : signal is "true";

begin

i_audio : audio_top port map (
      clk_100  => clk_100_buffered, 
      AC_ADR0  => AC_ADR0,
      AC_ADR1  => AC_ADR1,
      AC_GPIO0 => AC_GPIO0,
      AC_GPIO1 => AC_GPIO1,
      AC_GPIO2 => AC_GPIO2,
      AC_GPIO3 => AC_GPIO3,
      AC_MCLK  => AC_MCLK,
      AC_SCK   => AC_SCK,
      AC_SDA   => AC_SDA,
      
      hphone_l  => hphone_l,
      hphone_l_valid => hphone_valid,
      hphone_r  => hphone_r,
      hphone_r_valid_dummy => hphone_valid,   --  this valid will be discarded later
      
      line_in_l => line_in_l,  
      line_in_r => line_in_r,

      new_sample => new_sample,
      sample_clk_48k => sample_clk_48k
     
   );

    -- use comments to switch between TEST 1 (sawtooth) and 2 (loopback)

    --------------------------------------------------
    -- TEST 1: output sawtooth signal, discard input data
    process (slow5hz(24))
    
    begin
        if (slow5hz(24)'event and slow5hz(24) = '1') then
            if index > 31 then
                index <= 0;
            else
                index <= index + 1;
            end if;
            if (sound(index) = "000") then
                frequency <= to_unsigned(0, 19);
            elsif (sound(index) = "001") then
                frequency <= to_unsigned(381679, 19);
            elsif sound(index) = "010" then
                frequency <= to_unsigned(341296, 19);
            elsif sound(index) = "011" then
                frequency <= to_unsigned(303030, 19);
            elsif sound(index) = "100" then
                frequency <= to_unsigned(286532, 19);
            elsif sound(index) = "101" then
                frequency <= to_unsigned(255102, 19);
            elsif sound(index) = "110" then
                frequency <= to_unsigned(227272, 19);
            end if;            
        end if; 
    end process;
    
    LD(2 downto 0) <= std_logic_vector(sound(index));
    LD(7 downto 3) <= std_logic_vector(to_unsigned(index, 5));
    process (clk_100)
    variable volume : signed (23 downto 0) := to_signed(0,24);
    begin
        if (clk_100'event and clk_100 = '1') then
            slow5hz <= slow5hz + "1";
            hphone_valid <= '0';
            hphone_l <= (others => '0');
            hphone_r <= (others => '0');
            counter <= counter + 1;
            if new_sample = '1' then
                if (counter < ("0" & frequency(18 downto 1))) then
                    volume := to_signed(16384,24);
                elsif counter < frequency then
                    volume := to_signed(-16384,24);
                else
                    counter <= to_unsigned(0,19);
                end if;
                hphone_valid <= '1'; --slow5hz(24);
                hphone_l <= std_logic_vector(volume);
                hphone_r <= std_logic_vector(volume);
            end if;
        end if;
    end process;

    -----------------------------------------------------
    -- TEST 2: loopback "line in" data to headphone output
--    process (clk_100)
--    begin
--        if (clk_100'event and clk_100 = '1') then
            
--            hphone_valid <= '0';
--            hphone_l <= (others => '0');
--            hphone_r <= (others => '0');
            
--            if new_sample = '1' then
--                counter <= counter + 1;
                
--                hphone_valid <= '1';
--                hphone_l <= line_in_l ;
--                hphone_r <= line_in_r;
--            end if;
            
--        end if;
--    end process;


    -- global clock buffer for the clock signal
    BUFG_inst : BUFG
    port map (
       O => clk_100_buffered,   -- 1-bit output: Clock output
       I => clk_100             -- 1-bit input: Clock input
    );  

end Behavioral;
