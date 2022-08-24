-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbJp_rom is 
    generic(
             DWIDTH     : integer := 9; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 52
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of L2_wlo_166_L1_WEIbJp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110101001", 1 => "110011001", 2 => "111010101", 3 => "111100011", 
    4 => "000011100", 5 => "100010110", 6 => "000000011", 7 => "001000110", 
    8 => "001101010", 9 => "001000110", 10 => "001001110", 11 => "000110000", 
    12 => "001010111", 13 => "110110111", 14 => "001000011", 15 => "010101111", 
    16 => "000101110", 17 => "001001110", 18 => "000010010", 19 => "110110111", 
    20 => "111011010", 21 => "001010110", 22 => "101100001", 23 => "001111111", 
    24 => "111001101", 25 => "110101111", 26 => "111011100", 27 => "111110111", 
    28 => "111111110", 29 => "010011111", 30 => "110110100", 31 => "000011011", 
    32 => "000100001", 33 => "000011001", 34 => "000100100", 35 => "111100000", 
    36 => "110111010", 37 => "111100001", 38 => "110111111", 39 => "000111100", 
    40 => "000110011", 41 => "000000001", 42 => "101101111", 43 => "101111000", 
    44 => "001001101", 45 => "000101100", 46 => "111011110", 47 => "111101010", 
    48 => "111000000", 49 => "111101010", 50 => "111100011", 51 => "110110110" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity L2_wlo_166_L1_WEIbJp is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIbJp is
    component L2_wlo_166_L1_WEIbJp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbJp_rom_U :  component L2_wlo_166_L1_WEIbJp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


