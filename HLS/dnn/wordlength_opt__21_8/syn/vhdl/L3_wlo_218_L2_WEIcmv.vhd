-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcmv_rom is 
    generic(
             DWIDTH     : integer := 8; 
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


architecture rtl of L3_wlo_218_L2_WEIcmv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10000111", 1 => "10111001", 2 => "00011101", 3 => "00101110", 
    4 => "01000101", 5 => "00100100", 6 => "11111110", 7 => "11111100", 
    8 => "11110101", 9 => "00000001", 10 => "11111110", 11 => "11100110", 
    12 => "00010100", 13 => "11111100", 14 => "00100000", 15 => "00001111", 
    16 => "00001010", 17 => "11110001", 18 => "00000011", 19 => "11101111", 
    20 => "11001010", 21 => "11011001", 22 => "11111101", 23 => "00100000", 
    24 => "00010101", 25 => "11111111", 26 => "00001111", 27 => "00010000", 
    28 => "11101100", 29 => "10111111", 30 => "11100101", 31 => "11111111", 
    32 => "11110011", 33 => "00010101", 34 => "11110100", 35 => "00010010", 
    36 => "11110111", 37 => "00001011", 38 => "11110101", 39 => "11111110", 
    40 => "00110110", 41 => "00001100", 42 => "00011111", 43 => "11100110", 
    44 => "11010001", 45 => "11100100", 46 => "11111010", 47 => "11110011", 
    48 => "11111111", 49 => "00000000", 50 => "11111000", 51 => "00000100", 
    52 => "00101000", 53 => "01001010", 54 => "01110010", 55 => "00101110", 
    56 => "11011011", 57 => "11110100", 58 => "11010110", 59 => "11111100", 
    60 => "00001110", 61 => "00000011", 62 => "00000100", 63 => "11101011", 
    64 => "00010000", 65 => "00011000", 66 => "01010111", 67 => "11111110", 
    68 => "11011000", 69 => "11101101", 70 => "11001000", 71 => "00001001", 
    72 => "00001010", 73 => "00010000", 74 => "00011000", 75 => "00010010", 
    76 => "11110010", 77 => "11101110", 78 => "11110001", 79 => "11111111", 
    80 => "11011011", 81 => "11101101", 82 => "00000011", 83 => "00100111", 
    84 => "00000100", 85 => "00001011", 86 => "00000001", 87 => "00011100", 
    88 => "11011010", 89 => "00000100", 90 => "00001111", 91 => "11110101", 
    92 => "00100100", 93 => "00010010", 94 => "11010110", 95 => "11101001", 
    96 => "11011001", 97 => "00010101", 98 => "00000100", 99 => "11110111", 
    100 => "00001011", 101 => "00011110", 102 => "11011100", 103 => "11100110" );

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

entity L3_wlo_218_L2_WEIcmv is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_218_L2_WEIcmv is
    component L3_wlo_218_L2_WEIcmv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcmv_rom_U :  component L3_wlo_218_L2_WEIcmv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


