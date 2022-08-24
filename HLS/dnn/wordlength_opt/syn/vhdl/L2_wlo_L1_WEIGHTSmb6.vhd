-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSmb6_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSmb6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010111101101", 1 => "0010001111111100", 2 => "0010111110000000", 
    3 => "0010100100110000", 4 => "1011000101101110", 5 => "0011000110001010", 
    6 => "1010101100110000", 7 => "1011000100011010", 8 => "1010110011000101", 
    9 => "0011000001010110", 10 => "0010110100011000", 11 => "1010100110011010", 
    12 => "1010101101010010", 13 => "0010100001111100", 14 => "0010100001110001", 
    15 => "1010000101001010", 16 => "1010010100101100", 17 => "1010110010001011", 
    18 => "0010100010010111", 19 => "0010001000101110", 20 => "1010100011100001", 
    21 => "1010101011000000", 22 => "0011000010110010", 23 => "0010000011111011", 
    24 => "0010100101000111", 25 => "1010011000100010", 26 => "0010111010001111", 
    27 => "0011001000001001", 28 => "1010000011000001", 29 => "1011001101110111", 
    30 => "0010111001011101", 31 => "0010010100100101", 32 => "0010101110110101", 
    33 => "1010100111010001", 34 => "1010101100101000", 35 => "0010000110101110", 
    36 => "0010101110001011", 37 => "1011000011001111", 38 => "1011000111000111", 
    39 => "0010110000101110", 40 => "1010100111000101", 41 => "0011000000010000", 
    42 => "1010111000001110", 43 => "1010110100111001", 44 => "1010100001001011", 
    45 => "1010100100110001", 46 => "1010101100110110", 47 => "1010010111010101", 
    48 => "1000111010000101", 49 => "1010001101110110", 50 => "0010110110101000", 
    51 => "1010010111010001" );

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

entity L2_wlo_L1_WEIGHTSmb6 is
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

architecture arch of L2_wlo_L1_WEIGHTSmb6 is
    component L2_wlo_L1_WEIGHTSmb6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSmb6_rom_U :  component L2_wlo_L1_WEIGHTSmb6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


