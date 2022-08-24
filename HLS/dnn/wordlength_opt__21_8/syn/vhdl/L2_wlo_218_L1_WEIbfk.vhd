-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbfk_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbfk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000110010010", 1 => "0001100000110", 2 => "0000000000000", 
    3 => "0010101111111", 4 => "1110111000101", 5 => "0000001010111", 
    6 => "1101010000100", 7 => "1110101111101", 8 => "1100100101001", 
    9 => "0000001111000", 10 => "1101110011110", 11 => "1111110101100", 
    12 => "0001011001001", 13 => "0010110011101", 14 => "1111101010100", 
    15 => "0010111000010", 16 => "0000001011110", 17 => "0000110111010", 
    18 => "0000010010001", 19 => "0000011000111", 20 => "0000100000110", 
    21 => "0001010000101", 22 => "0000110011111", 23 => "1100101100010", 
    24 => "1111001010010", 25 => "1111101100111", 26 => "1100111011101", 
    27 => "1110100111000", 28 => "0000110000110", 29 => "1111110101101", 
    30 => "1111001101010", 31 => "0000001000111", 32 => "0000110000010", 
    33 => "1111111100011", 34 => "1101000010101", 35 => "1111100100000", 
    36 => "0000110101100", 37 => "0010111100110", 38 => "0001101101010", 
    39 => "0000010001000", 40 => "0000011111011", 41 => "0000001111000", 
    42 => "1110111010111", 43 => "1101010101110", 44 => "0001100110000", 
    45 => "0000001010101", 46 => "1110011101100", 47 => "0000000100100", 
    48 => "1111010011011", 49 => "0011001110001", 50 => "0100001101001", 
    51 => "1111110000011" );

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

entity L2_wlo_218_L1_WEIbfk is
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

architecture arch of L2_wlo_218_L1_WEIbfk is
    component L2_wlo_218_L1_WEIbfk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbfk_rom_U :  component L2_wlo_218_L1_WEIbfk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


