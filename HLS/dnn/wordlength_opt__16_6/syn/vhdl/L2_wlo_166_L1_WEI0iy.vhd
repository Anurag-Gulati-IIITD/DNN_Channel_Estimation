-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEI0iy_rom is 
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


architecture rtl of L2_wlo_166_L1_WEI0iy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011000", 1 => "110010011", 2 => "010011100", 3 => "000011101", 
    4 => "111000101", 5 => "111000000", 6 => "111000111", 7 => "110111011", 
    8 => "010000011", 9 => "111010000", 10 => "111100011", 11 => "001101111", 
    12 => "110110010", 13 => "101100100", 14 => "001010100", 15 => "110000010", 
    16 => "111000110", 17 => "110011010", 18 => "111101100", 19 => "000001000", 
    20 => "000000011", 21 => "110001110", 22 => "000010100", 23 => "001010110", 
    24 => "111111011", 25 => "000010111", 26 => "000001111", 27 => "000110010", 
    28 => "111100001", 29 => "111101111", 30 => "101010011", 31 => "001001110", 
    32 => "001111111", 33 => "000111001", 34 => "110100110", 35 => "010110011", 
    36 => "000011011", 37 => "001111000", 38 => "111001101", 39 => "110001001", 
    40 => "110100101", 41 => "001000011", 42 => "000110110", 43 => "001111110", 
    44 => "001011111", 45 => "000111010", 46 => "111010101", 47 => "111100001", 
    48 => "000101000", 49 => "001111110", 50 => "111010000", 51 => "010011111" );

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

entity L2_wlo_166_L1_WEI0iy is
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

architecture arch of L2_wlo_166_L1_WEI0iy is
    component L2_wlo_166_L1_WEI0iy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEI0iy_rom_U :  component L2_wlo_166_L1_WEI0iy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


