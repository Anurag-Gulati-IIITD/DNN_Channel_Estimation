-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSOgC_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSOgC_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010101111000101", 1 => "0010111101101000", 2 => "0010010010010110", 
    3 => "1010100001110101", 4 => "1011000011100001", 5 => "0011000010010111", 
    6 => "0010010110101011", 7 => "1011000010010100", 8 => "1010100100110111", 
    9 => "1010111110011111", 10 => "1010100100100010", 11 => "1010001100011010", 
    12 => "1010010010010010", 13 => "0011000100001100", 14 => "1011000010001101", 
    15 => "0010011101110000", 16 => "0001111111100011", 17 => "1010110000101001", 
    18 => "1010111000101101", 19 => "0010101011010101", 20 => "0010001001110100", 
    21 => "0001011100000010", 22 => "0011000110010001", 23 => "1010101011111110", 
    24 => "0010110000100111", 25 => "1010001010101000", 26 => "1010111110100001", 
    27 => "1010100111111011", 28 => "0010000000100000", 29 => "1011000001001011", 
    30 => "0011001011101101", 31 => "0010110001111001", 32 => "0011001000011101", 
    33 => "1010010111011001", 34 => "0010111111111111", 35 => "0010100111010111", 
    36 => "1010011110001001", 37 => "1010011001000010", 38 => "0010111011001110", 
    39 => "0010010000111101", 40 => "1001100111011001", 41 => "0010111100100111", 
    42 => "0011001010111010", 43 => "1010001111101110", 44 => "0010101110001111", 
    45 => "0010110110101010", 46 => "1010011101010010", 47 => "1010101110111001", 
    48 => "0010011011100011", 49 => "1010110101001110", 50 => "0010011110101101", 
    51 => "1010111010100100" );

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

entity L2_wlo_L1_WEIGHTSOgC is
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

architecture arch of L2_wlo_L1_WEIGHTSOgC is
    component L2_wlo_L1_WEIGHTSOgC_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSOgC_rom_U :  component L2_wlo_L1_WEIGHTSOgC_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


