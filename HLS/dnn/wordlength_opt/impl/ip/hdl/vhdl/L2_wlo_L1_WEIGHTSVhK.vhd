-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSVhK_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSVhK_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010111010101100", 1 => "0011000011100110", 2 => "1011000100100101", 
    3 => "1010110101001000", 4 => "1010111101000001", 5 => "1011000110110010", 
    6 => "0010110110011110", 7 => "0010101111100100", 8 => "0010110000001000", 
    9 => "1011001101000011", 10 => "0010110110011000", 11 => "1010010100001001", 
    12 => "0010111100010001", 13 => "1011001110000001", 14 => "1011000011001110", 
    15 => "0011001001111110", 16 => "1010111001110001", 17 => "0010111100111100", 
    18 => "0010100110011101", 19 => "1011000001011111", 20 => "1010111010000110", 
    21 => "0010110111100000", 22 => "1010100000100011", 23 => "1011000101001100", 
    24 => "1010011010001011", 25 => "1010011001111101", 26 => "0011010100110011", 
    27 => "0010110110100010", 28 => "1011001010111110", 29 => "0010110010101111", 
    30 => "0011000011000111", 31 => "1011000111000001", 32 => "0011000001110000", 
    33 => "0011000010011110", 34 => "0010101010011110", 35 => "1001110111111010", 
    36 => "0001011010011100", 37 => "1010101100110101", 38 => "1010001001110110", 
    39 => "0011010011110111", 40 => "0010100011101100", 41 => "0010111111110111", 
    42 => "0011010010010111", 43 => "1011001101111001", 44 => "1010100111100110", 
    45 => "0010111100101111", 46 => "0010000000110000", 47 => "1010110001010101", 
    48 => "0010000111011010", 49 => "1010100000101011", 50 => "1010101000101011", 
    51 => "1011001010001011" );

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

entity L2_wlo_L1_WEIGHTSVhK is
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

architecture arch of L2_wlo_L1_WEIGHTSVhK is
    component L2_wlo_L1_WEIGHTSVhK_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSVhK_rom_U :  component L2_wlo_L1_WEIGHTSVhK_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


