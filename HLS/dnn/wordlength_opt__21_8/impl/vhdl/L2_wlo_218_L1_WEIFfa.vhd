-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIFfa_rom is 
    generic(
             DWIDTH     : integer := 13; 
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


architecture rtl of L2_wlo_218_L1_WEIFfa_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001011001100", 1 => "0100000100010", 2 => "0001110101111", 
    3 => "1111000010101", 4 => "0000110110110", 5 => "1111110111000", 
    6 => "0000111110000", 7 => "0001111101000", 8 => "0000100001111", 
    9 => "0000100010101", 10 => "0000110001001", 11 => "0001111000101", 
    12 => "0000001001110", 13 => "1101011100111", 14 => "1111111001001", 
    15 => "1101010110110", 16 => "0000000111110", 17 => "1101100011101", 
    18 => "1111100010100", 19 => "0001000100101", 20 => "0001110111001", 
    21 => "1110101110101", 22 => "1111011000011", 23 => "1100010111011", 
    24 => "1111111010100", 25 => "1111110010011", 26 => "0000010110000", 
    27 => "1101001101101", 28 => "0000000100001", 29 => "1111101011101", 
    30 => "1111111101001", 31 => "1111010000101", 32 => "1110111000100", 
    33 => "0000011101100", 34 => "0001001000000", 35 => "0001101001010", 
    36 => "0000100000010", 37 => "1110111011000", 38 => "0010010000111", 
    39 => "1111100001111", 40 => "1110100110010", 41 => "1101111100110", 
    42 => "1111011110101", 43 => "0001100011000", 44 => "1110011101100", 
    45 => "1111111101100", 46 => "0000010111111", 47 => "1110100110010", 
    48 => "1110000000100", 49 => "1101011011110", 50 => "1111000001110", 
    51 => "0000110110101" );

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

entity L2_wlo_218_L1_WEIFfa is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIFfa is
    component L2_wlo_218_L1_WEIFfa_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIFfa_rom_U :  component L2_wlo_218_L1_WEIFfa_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


