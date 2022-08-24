-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIb4t_rom is 
    generic(
             DWIDTH     : integer := 7; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 104
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of L3_wlo_218_L2_WEIb4t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111110", 1 => "0001010", 2 => "0010101", 3 => "0001010", 
    4 => "0000100", 5 => "0000011", 6 => "1100110", 7 to 8=> "1010111", 
    9 => "1110110", 10 => "0100001", 11 => "0111000", 12 => "0110011", 
    13 => "1110101", 14 to 15=> "1010001", 16 => "1100111", 17 => "0011111", 
    18 => "0101110", 19 => "0001101", 20 => "1110001", 21 => "1011100", 
    22 => "1110100", 23 => "0001100", 24 => "0001010", 25 => "1111111", 
    26 => "1100001", 27 => "1111100", 28 => "0011000", 29 => "0010001", 
    30 => "0010010", 31 => "1110101", 32 => "1101001", 33 => "1110011", 
    34 => "1111101", 35 => "0000000", 36 => "0000110", 37 => "0001011", 
    38 => "0001100", 39 => "0100001", 40 => "0010001", 41 => "1101110", 
    42 => "1010101", 43 => "1001110", 44 => "1101000", 45 => "0010010", 
    46 => "0101001", 47 => "0011100", 48 => "0001100", 49 => "1100110", 
    50 => "1101000", 51 => "1110101", 52 => "0011100", 53 => "0000110", 
    54 => "1110111", 55 => "0000110", 56 => "1101001", 57 => "1100110", 
    58 => "1100001", 59 => "1110000", 60 => "0011110", 61 => "0111011", 
    62 => "0110101", 63 => "0001100", 64 => "1010111", 65 => "1001000", 
    66 => "1010110", 67 => "0010110", 68 => "0101001", 69 => "0100111", 
    70 => "0001010", 71 => "1011000", 72 => "1011011", 73 => "0000001", 
    74 => "0000101", 75 => "0010000", 76 => "1110000", 77 => "1011110", 
    78 => "0001001", 79 => "0010111", 80 => "0010010", 81 => "1110111", 
    82 => "1100110", 83 => "1101100", 84 => "1110011", 85 => "0001001", 
    86 => "0010110", 87 => "0010001", 88 => "0001011", 89 => "0010000", 
    90 => "1111100", 91 => "1110100", 92 => "1101000", 93 => "1010000", 
    94 => "1101010", 95 => "0011000", 96 => "0110110", 97 => "0100101", 
    98 => "0001111", 99 => "1101111", 100 => "1010011", 101 => "1101011", 
    102 => "0000100", 103 => "0010110" );

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

entity L3_wlo_218_L2_WEIb4t is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIb4t is
    component L3_wlo_218_L2_WEIb4t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIb4t_rom_U :  component L3_wlo_218_L2_WEIb4t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


