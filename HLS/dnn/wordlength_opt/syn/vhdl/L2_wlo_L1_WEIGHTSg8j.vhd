-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSg8j_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSg8j_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110101101011", 1 => "0011000000101001", 2 => "1010110001010010", 
    3 => "0010110001001101", 4 => "1010011001111100", 5 => "0010111001100011", 
    6 => "1010110011110011", 7 => "1010111101110000", 8 => "1011000001100011", 
    9 => "0010010100100110", 10 => "1010111110010100", 11 => "0010110000100101", 
    12 => "1010011000110100", 13 => "0011001010101100", 14 => "1010000110010111", 
    15 => "0011000100010000", 16 => "0010011000011001", 17 => "0010110001100011", 
    18 => "0010100111100111", 19 => "0010100011010011", 20 => "0010110000101011", 
    21 => "0010101000011010", 22 => "0010110000000001", 23 => "1011000001001101", 
    24 => "1010010011111101", 25 => "1010110101011000", 26 => "1010110010110101", 
    27 => "1010100001000001", 28 => "0011000101111110", 29 => "1010111001011011", 
    30 => "0010111101010010", 31 => "0010100110010100", 32 => "0010110111000110", 
    33 => "0010010110011111", 34 => "1011000010001010", 35 => "1011000000110100", 
    36 => "0010101010110110", 37 => "0011000100001100", 38 => "1010011000001101", 
    39 => "1010110111111111", 40 => "0010100001010010", 41 => "1010011110100111", 
    42 => "1010110110010001", 43 => "1010111110110111", 44 => "0010000111011101", 
    45 => "1010101000011101", 46 => "1010110010011100", 47 => "0010101000111000", 
    48 => "0010100101010100", 49 => "0010111001011011", 50 => "0011000010111111", 
    51 => "0010110111001110" );

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

entity L2_wlo_L1_WEIGHTSg8j is
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

architecture arch of L2_wlo_L1_WEIGHTSg8j is
    component L2_wlo_L1_WEIGHTSg8j_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSg8j_rom_U :  component L2_wlo_L1_WEIGHTSg8j_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


