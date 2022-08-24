-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIThq_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIThq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "001100111010", 1 => "111110010000", 2 => "110100110111", 
    3 => "001011100110", 4 => "101011010100", 5 => "111101101010", 
    6 => "110111100110", 7 => "111110000001", 8 => "001100001011", 
    9 => "001111101101", 10 => "100100101011", 11 => "101111010111", 
    12 => "001011110011", 13 => "111011000101", 14 => "110110101100", 
    15 => "111111101011", 16 => "110101011101", 17 => "000100100000", 
    18 => "000000100010", 19 => "101011111011", 20 => "110100000110", 
    21 => "001001110100", 22 => "001010111110", 23 => "000000000001", 
    24 => "111001110001", 25 => "000010000101", 26 => "010111110010", 
    27 => "000110001000", 28 => "110011100001", 29 => "000001010001", 
    30 => "000010000101", 31 => "111011011111", 32 => "000001000100", 
    33 => "010110100111", 34 => "101011101100", 35 => "001001101001", 
    36 => "111110110101", 37 => "010101011000", 38 => "110110110000", 
    39 => "000110000010", 40 => "000011110100", 41 => "001011000111", 
    42 => "101010001101", 43 => "111011001000", 44 => "001001000101", 
    45 => "111101111000", 46 => "110010001101", 47 => "000000111000", 
    48 => "000111101101", 49 => "001111011100", 50 => "101011101000", 
    51 => "111100110111" );

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

entity L2_wlo_218_L1_WEIThq is
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

architecture arch of L2_wlo_218_L1_WEIThq is
    component L2_wlo_218_L1_WEIThq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIThq_rom_U :  component L2_wlo_218_L1_WEIThq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


