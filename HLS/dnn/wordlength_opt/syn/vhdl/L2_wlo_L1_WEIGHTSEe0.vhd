-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSEe0_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSEe0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101011001010", 1 => "1011001110011101", 2 => "0010101111110111", 
    3 => "0010111001101011", 4 => "1010100110110111", 5 => "1010100101000001", 
    6 => "0010111010000010", 7 => "0010111001010001", 8 => "0001110000111001", 
    9 => "1001101111101001", 10 => "0010111111101011", 11 => "0001100100100110", 
    12 => "0010101011010010", 13 => "1010110101011010", 14 => "0010100111100110", 
    15 => "0011000110111001", 16 => "1001111100101000", 17 => "1001110010001100", 
    18 => "1010101000001110", 19 => "0010100101111100", 20 => "0010110000001010", 
    21 => "1010001110100110", 22 => "1010101000000001", 23 => "0011000110111101", 
    24 => "0011000000000101", 25 => "1001010001100111", 26 => "1010111100100001", 
    27 => "1001111110100110", 28 => "1010100000011001", 29 => "0010110100000001", 
    30 => "1011000110101111", 31 => "0010111100110001", 32 => "0001110011001100", 
    33 => "0010100011111100", 34 => "0010101001010000", 35 => "0011000100101100", 
    36 => "1010010110101100", 37 => "1010110111110111", 38 => "1010111100101110", 
    39 => "1010110011110100", 40 => "1010010100100000", 41 => "0010110000001100", 
    42 => "1010101010000001", 43 => "1011001011110010", 44 => "0010100010101101", 
    45 => "1010000100000100", 46 => "1010111000011111", 47 => "0010111010100111", 
    48 => "1010111010100010", 49 => "1010110110001101", 50 => "1010101000100101", 
    51 => "0010110010001000" );

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

entity L2_wlo_L1_WEIGHTSEe0 is
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

architecture arch of L2_wlo_L1_WEIGHTSEe0 is
    component L2_wlo_L1_WEIGHTSEe0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSEe0_rom_U :  component L2_wlo_L1_WEIGHTSEe0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


