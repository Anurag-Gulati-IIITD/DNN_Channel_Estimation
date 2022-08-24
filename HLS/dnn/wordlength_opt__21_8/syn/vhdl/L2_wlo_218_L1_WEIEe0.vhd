-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIEe0_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIEe0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000101010111", 1 => "0010001110011", 2 => "0000111101011", 
    3 => "0000011100001", 4 => "1111111110110", 5 => "1110000111100", 
    6 => "1110010010100", 7 => "1111100110110", 8 => "1110100010110", 
    9 => "0010001011010", 10 => "0010000111100", 11 => "1111110101100", 
    12 => "0000111111011", 13 => "1110000100011", 14 => "1111101111001", 
    15 => "1111001110110", 16 => "0000110010111", 17 => "1111011101010", 
    18 => "1111010001110", 19 => "0000011100010", 20 => "0001000101010", 
    21 => "1111110111000", 22 => "1111011010101", 23 => "1011101001101", 
    24 => "0000001001100", 25 => "1111000000111", 26 => "1110001011111", 
    27 => "0010111111000", 28 => "0001010000100", 29 => "0001010000101", 
    30 => "1111111000001", 31 => "1111010110110", 32 => "1111010101110", 
    33 => "1111101010101", 34 => "1110010011101", 35 => "0000110011001", 
    36 => "0000111001010", 37 => "1110001101000", 38 => "1111010110000", 
    39 => "1111111101101", 40 => "0000011010111", 41 => "0000001010111", 
    42 => "1110100000110", 43 => "0001000011000", 44 => "0000110010000", 
    45 => "0001010110111", 46 => "0000010011001", 47 => "1111110101110", 
    48 => "1101100110100", 49 => "0001011111101", 50 => "0010010001101", 
    51 => "1111001100010" );

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

entity L2_wlo_218_L1_WEIEe0 is
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

architecture arch of L2_wlo_218_L1_WEIEe0 is
    component L2_wlo_218_L1_WEIEe0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIEe0_rom_U :  component L2_wlo_218_L1_WEIEe0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


