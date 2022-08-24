-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbil_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbil_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001010110", 1 => "111010101", 2 => "001011101", 3 => "110010101", 
    4 => "001110000", 5 => "111000011", 6 => "111111110", 7 => "000010101", 
    8 => "010011001", 9 => "110110011", 10 => "010001001", 11 => "000000001", 
    12 => "001000001", 13 => "101111111", 14 => "000001110", 15 => "101111100", 
    16 => "001000111", 17 => "101011100", 18 => "111010010", 19 => "000001000", 
    20 => "111111000", 21 => "111100111", 22 => "111111111", 23 => "000111000", 
    24 => "000001101", 25 => "000010101", 26 => "111100101", 27 => "001010010", 
    28 => "000100100", 29 => "111110011", 30 => "111100001", 31 => "000100110", 
    32 => "111011110", 33 => "001001111", 34 => "001101001", 35 => "001110110", 
    36 => "001101110", 37 => "110010110", 38 => "110011010", 39 => "000101110", 
    40 => "110111100", 41 => "111010100", 42 => "001111100", 43 => "010001110", 
    44 => "110110001", 45 => "110011001", 46 => "001111101", 47 => "110110100", 
    48 => "010000010", 49 => "110010101", 50 => "101010110", 51 => "110101000" );

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

entity L2_wlo_166_L1_WEIbil is
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

architecture arch of L2_wlo_166_L1_WEIbil is
    component L2_wlo_166_L1_WEIbil_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbil_rom_U :  component L2_wlo_166_L1_WEIbil_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


