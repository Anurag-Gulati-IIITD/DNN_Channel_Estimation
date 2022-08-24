-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEI1iI_rom is 
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


architecture rtl of L2_wlo_218_L1_WEI1iI_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010001110", 1 => "110011101111", 2 => "000000010011", 
    3 => "111111000110", 4 => "000111111110", 5 => "000001011011", 
    6 => "110011100001", 7 => "001011100101", 8 => "001000111111", 
    9 => "011000010010", 10 => "110001001010", 11 => "000100100010", 
    12 => "101101011001", 13 => "000000100101", 14 => "011100001110", 
    15 => "101110010010", 16 => "000111011101", 17 => "111101001111", 
    18 => "110111010111", 19 => "000100001011", 20 => "001100000010", 
    21 => "111011101011", 22 => "111110001000", 23 => "001001100101", 
    24 => "111110111010", 25 => "000000110111", 26 => "110101000110", 
    27 => "000010100010", 28 => "111101110001", 29 => "110110101110", 
    30 => "100111101100", 31 => "010110101001", 32 => "000101011011", 
    33 => "111011101110", 34 => "110101000000", 35 => "001010111000", 
    36 => "111011110101", 37 => "000111001111", 38 => "000000010011", 
    39 => "101101001101", 40 => "111101010011", 41 => "111110111000", 
    42 => "101010001110", 43 => "000110101001", 44 => "111110001001", 
    45 => "000011100011", 46 => "111011101100", 47 => "111011001100", 
    48 => "111111101000", 49 => "010101011110", 50 => "111011111111", 
    51 => "010001111011" );

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

entity L2_wlo_218_L1_WEI1iI is
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

architecture arch of L2_wlo_218_L1_WEI1iI is
    component L2_wlo_218_L1_WEI1iI_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEI1iI_rom_U :  component L2_wlo_218_L1_WEI1iI_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


