-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIibs_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIibs_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1110111111010", 1 => "0011100001100", 2 => "1111000000110", 
    3 => "1111000000100", 4 => "0010101111000", 5 => "1110101001101", 
    6 => "1111000111101", 7 => "1111100011100", 8 => "0000111011011", 
    9 => "1110000011011", 10 => "1111101110000", 11 => "0001100111001", 
    12 => "1111111101110", 13 => "1101010001100", 14 => "1110111010010", 
    15 => "0010011110011", 16 => "1111010111110", 17 => "1111110100111", 
    18 => "1111110010010", 19 => "0000100101000", 20 => "0001001000110", 
    21 => "1111010010101", 22 => "1111000010001", 23 => "1011100111000", 
    24 => "0001101000100", 25 => "1111101001000", 26 => "1110011110100", 
    27 => "0101011001101", 28 => "1111100111100", 29 => "0001000111110", 
    30 => "0001110011100", 31 => "1111001111110", 32 => "1110101101100", 
    33 => "0000000110000", 34 => "0001001100000", 35 => "0011010101101", 
    36 => "0001001110010", 37 => "0000100100101", 38 => "1011111101101", 
    39 => "1111001110111", 40 => "0000011101110", 41 => "1110110110101", 
    42 => "0001000100001", 43 => "1100011100000", 44 => "1111010011001", 
    45 => "1111001110101", 46 => "0000011010001", 47 => "1111001000011", 
    48 => "0001000110101", 49 => "0000000011111", 50 => "1110000011010", 
    51 => "1111101011001" );

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

entity L2_wlo_218_L1_WEIibs is
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

architecture arch of L2_wlo_218_L1_WEIibs is
    component L2_wlo_218_L1_WEIibs_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIibs_rom_U :  component L2_wlo_218_L1_WEIibs_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


