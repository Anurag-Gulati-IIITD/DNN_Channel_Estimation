-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSqcK_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of L2_wlo_L1_WEIGHTSqcK_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010010011010010", 1 => "1011000000111001", 2 => "1010100110111100", 
    3 => "1010110101100001", 4 => "0010110100000010", 5 => "1010101000111011", 
    6 => "0001111000111010", 7 => "1010000101000011", 8 => "0011001111010110", 
    9 => "1011001010010110", 10 => "1010111101111110", 11 => "0011000011010010", 
    12 => "1010110001010010", 13 => "0011000110010001", 14 => "1010100110001000", 
    15 => "1010001000110100", 16 => "0010100101000000", 17 => "0010001100110010", 
    18 => "0010110010111010", 19 => "1001010001100000", 20 => "0010000010111101", 
    21 => "1010011001001111", 22 => "1010111000000110", 23 => "0011000101100111", 
    24 => "1010101110111100", 25 => "1010010111110000", 26 => "0010101111001001", 
    27 => "1011000000101001", 28 => "1010100011011100", 29 => "0010100101010100", 
    30 => "1010001010110111", 31 => "1001001011100010", 32 => "0010000110111100", 
    33 => "1010111010100111", 34 => "0011000010000001", 35 => "1011001111011110", 
    36 => "1001101100101010", 37 => "0010111111101000", 38 => "0011001010011000", 
    39 => "1010101011000111", 40 => "0010101001110010", 41 => "1011000001011101", 
    42 => "0010110111111111", 43 => "1010011001000010", 44 => "0010100110110111", 
    45 => "1010110110000011", 46 => "0010100001110011", 47 => "1010111011110100", 
    48 => "0010110011011010", 49 => "1011000101110101", 50 => "1011001110001011", 
    51 => "0010010010111011" );

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

entity L2_wlo_L1_WEIGHTSqcK is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_L1_WEIGHTSqcK is
    component L2_wlo_L1_WEIGHTSqcK_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSqcK_rom_U :  component L2_wlo_L1_WEIGHTSqcK_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


