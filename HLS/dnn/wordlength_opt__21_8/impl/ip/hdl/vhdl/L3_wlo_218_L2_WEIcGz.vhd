-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcGz_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcGz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11001011", 1 => "11000100", 2 => "00011101", 3 => "01001000", 
    4 => "00100110", 5 => "11110110", 6 => "11001100", 7 => "11010110", 
    8 => "11101101", 9 => "00011111", 10 => "00010000", 11 => "00000001", 
    12 => "00000010", 13 to 14=> "11110111", 15 => "00011000", 16 => "00100000", 
    17 => "11111111", 18 => "11110010", 19 => "11100011", 20 => "11001010", 
    21 => "11101010", 22 => "00001011", 23 => "00100010", 24 to 25=> "00001010", 
    26 => "11010110", 27 => "11011110", 28 => "11101111", 29 => "00001111", 
    30 => "00011100", 31 => "00001111", 32 => "00000000", 33 => "11110011", 
    34 => "11110110", 35 => "00000001", 36 => "00010110", 37 => "00011010", 
    38 => "00000101", 39 => "11110110", 40 => "11101110", 41 => "11101111", 
    42 => "11101011", 43 => "11111000", 44 => "00001010", 45 => "00011110", 
    46 => "00101110", 47 => "00000010", 48 => "11100001", 49 => "11100011", 
    50 => "11011000", 51 => "00000011", 52 => "00001111", 53 => "00011101", 
    54 => "00111110", 55 => "00001101", 56 => "11010001", 57 => "11001111", 
    58 => "11100111", 59 => "00010101", 60 => "00100100", 61 => "00011001", 
    62 => "00000010", 63 => "11100110", 64 => "11111111", 65 => "00001100", 
    66 => "00100100", 67 => "11111100", 68 => "11110110", 69 => "11010110", 
    70 => "11010011", 71 => "11110010", 72 => "00001000", 73 => "00000110", 
    74 => "00001110", 75 => "00010111", 76 => "11100001", 77 => "11011001", 
    78 => "11011110", 79 => "00100010", 80 => "00100000", 81 => "00010111", 
    82 => "11111110", 83 => "11101100", 84 => "11101101", 85 => "11111100", 
    86 => "00010001", 87 => "00000001", 88 => "00000100", 89 => "00010001", 
    90 => "11100001", 91 => "11110011", 92 => "11110000", 93 => "00000110", 
    94 => "00000010", 95 => "00010100", 96 => "00100001", 97 => "00010111", 
    98 => "00000011", 99 => "11010100", 100 => "11011000", 101 => "00001110", 
    102 => "00000001", 103 => "00011100" );

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

entity L3_wlo_218_L2_WEIcGz is
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

architecture arch of L3_wlo_218_L2_WEIcGz is
    component L3_wlo_218_L2_WEIcGz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcGz_rom_U :  component L3_wlo_218_L2_WEIcGz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


