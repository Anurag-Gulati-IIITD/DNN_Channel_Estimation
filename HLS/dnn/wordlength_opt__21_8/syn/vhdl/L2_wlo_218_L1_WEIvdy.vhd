-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIvdy_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIvdy_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000110010010", 1 => "101111011100", 2 => "001101100000", 
    3 => "110110110000", 4 => "111111011001", 5 => "011101001011", 
    6 => "010001011000", 7 => "110001001101", 8 => "111100101100", 
    9 => "111111011010", 10 => "011000011110", 11 => "001011110000", 
    12 => "111010101111", 13 => "001111100101", 14 => "111000101110", 
    15 => "111001001111", 16 => "111001111110", 17 => "111011100010", 
    18 => "000010011001", 19 => "000010100101", 20 => "000000100111", 
    21 => "111111111100", 22 => "001101010001", 23 => "000100110011", 
    24 => "001100001011", 25 => "000101101001", 26 => "000110010011", 
    27 => "010101001101", 28 => "000001001101", 29 => "101000000111", 
    30 => "111110110010", 31 => "110001111010", 32 => "111111101100", 
    33 => "110111111011", 34 => "010001010110", 35 => "001100101100", 
    36 => "000110101111", 37 => "110011111100", 38 => "100010001110", 
    39 => "000011010100", 40 => "111001001011", 41 => "000111100010", 
    42 => "111101000111", 43 => "000100110110", 44 => "111111100110", 
    45 => "000001010010", 46 => "000011000000", 47 => "110111101100", 
    48 => "111010111000", 49 => "000010101111", 50 => "000001110000", 
    51 => "111000000101" );

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

entity L2_wlo_218_L1_WEIvdy is
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

architecture arch of L2_wlo_218_L1_WEIvdy is
    component L2_wlo_218_L1_WEIvdy_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIvdy_rom_U :  component L2_wlo_218_L1_WEIvdy_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


