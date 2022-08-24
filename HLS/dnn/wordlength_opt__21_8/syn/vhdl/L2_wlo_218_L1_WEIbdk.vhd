-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbdk_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbdk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110111000101", 1 => "000010000011", 2 => "111111011010", 
    3 => "111011000001", 4 => "111101101100", 5 => "001100110101", 
    6 => "000011101101", 7 => "110010101110", 8 => "000011101100", 
    9 => "000101101101", 10 => "000001111101", 11 => "001001101111", 
    12 => "110110011010", 13 => "001001111110", 14 => "110010001000", 
    15 => "111100101111", 16 => "001000100111", 17 => "000010011010", 
    18 => "111010111011", 19 => "000110011000", 20 => "111010100110", 
    21 => "110111011101", 22 => "010001001010", 23 => "111010111000", 
    24 => "111010011000", 25 => "111110000010", 26 => "000010010111", 
    27 => "001000110111", 28 => "001100000111", 29 => "111000011001", 
    30 => "010010110110", 31 => "001110000100", 32 => "110111011100", 
    33 => "110101001001", 34 => "000101000101", 35 => "110001011001", 
    36 => "110100001000", 37 => "000000111001", 38 => "101000011010", 
    39 => "111011001010", 40 => "000110010000", 41 => "110011100100", 
    42 => "111001011011", 43 => "111001001101", 44 => "110110111010", 
    45 => "000101111011", 46 => "000000001001", 47 => "111100100000", 
    48 => "111000010001", 49 => "110101010010", 50 => "111100100111", 
    51 => "001100011100" );

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

entity L2_wlo_218_L1_WEIbdk is
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

architecture arch of L2_wlo_218_L1_WEIbdk is
    component L2_wlo_218_L1_WEIbdk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbdk_rom_U :  component L2_wlo_218_L1_WEIbdk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


