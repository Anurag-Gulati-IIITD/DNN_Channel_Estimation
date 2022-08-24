-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIIfE_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIIfE_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111000001", 1 => "110100010", 2 => "111001000", 3 => "001010110", 
    4 => "111010010", 5 => "110100011", 6 => "110101101", 7 => "110011011", 
    8 => "110100000", 9 => "111000011", 10 => "110101000", 11 => "101101001", 
    12 => "110101010", 13 => "111011111", 14 => "001011110", 15 => "001011101", 
    16 => "111000110", 17 => "001000100", 18 => "000001001", 19 => "111010000", 
    20 => "110011110", 21 => "000110001", 22 => "111000011", 23 => "010011011", 
    24 => "111101011", 25 => "111001010", 26 => "001111011", 27 => "011000110", 
    28 => "110100100", 29 => "000100110", 30 => "110010101", 31 => "000100110", 
    32 => "001000010", 33 => "001100001", 34 => "110000110", 35 => "110001100", 
    36 => "001100000", 37 => "111111000", 38 => "101110101", 39 => "101110010", 
    40 => "000011011", 41 => "000100010", 42 => "000111111", 43 => "101010001", 
    44 => "111010000", 45 => "111110111", 46 => "111001110", 47 => "111010111", 
    48 => "000001010", 49 => "000011000", 50 => "001111101", 51 => "001001110" );

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

entity L2_wlo_166_L1_WEIIfE is
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

architecture arch of L2_wlo_166_L1_WEIIfE is
    component L2_wlo_166_L1_WEIIfE_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIIfE_rom_U :  component L2_wlo_166_L1_WEIIfE_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


