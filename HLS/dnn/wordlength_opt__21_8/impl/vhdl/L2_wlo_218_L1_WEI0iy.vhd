-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEI0iy_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L2_wlo_218_L1_WEI0iy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011000110", 1 => "110010011000", 2 => "010011100100", 
    3 => "000011101110", 4 => "111000101110", 5 => "111000000111", 
    6 => "111000111011", 7 => "110111011000", 8 => "010000011101", 
    9 => "111010000111", 10 => "111100011001", 11 => "001101111011", 
    12 => "110110010011", 13 => "101100100100", 14 => "001010100110", 
    15 => "110000010000", 16 => "111000110101", 17 => "110011010011", 
    18 => "111101100000", 19 => "000001000110", 20 => "000000011100", 
    21 => "110001110101", 22 => "000010100100", 23 => "001010110001", 
    24 => "111111011010", 25 => "000010111010", 26 => "000001111011", 
    27 => "000110010100", 28 => "111100001001", 29 => "111101111111", 
    30 => "101010011011", 31 => "001001110011", 32 => "001111111101", 
    33 => "000111001001", 34 => "110100110000", 35 => "010110011001", 
    36 => "000011011100", 37 => "001111000001", 38 => "111001101100", 
    39 => "110001001011", 40 => "110100101010", 41 => "001000011111", 
    42 => "000110110101", 43 => "001111110101", 44 => "001011111101", 
    45 => "000111010111", 46 => "111010101011", 47 => "111100001010", 
    48 => "000101000011", 49 => "001111110010", 50 => "111010000001", 
    51 => "010011111001" );

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

entity L2_wlo_218_L1_WEI0iy is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEI0iy is
    component L2_wlo_218_L1_WEI0iy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEI0iy_rom_U :  component L2_wlo_218_L1_WEI0iy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


