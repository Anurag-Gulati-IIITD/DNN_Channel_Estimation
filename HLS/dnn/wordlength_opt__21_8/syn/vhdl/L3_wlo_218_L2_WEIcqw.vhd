-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcqw_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcqw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10011010", 1 => "11110111", 2 => "00111010", 3 => "01101011", 
    4 => "01100100", 5 => "00000110", 6 => "11010011", 7 => "11101111", 
    8 => "11010100", 9 => "00000111", 10 => "00100111", 11 => "11111100", 
    12 => "11101010", 13 => "00100001", 14 => "00010011", 15 => "00100000", 
    16 => "00011000", 17 => "11101111", 18 => "11100001", 19 => "00010110", 
    20 => "00000110", 21 => "11011011", 22 => "11001001", 23 => "11000010", 
    24 => "11100110", 25 => "01001011", 26 => "00010001", 27 => "11011110", 
    28 => "10010110", 29 => "10110100", 30 => "00111001", 31 => "01100010", 
    32 => "00100111", 33 => "11011100", 34 => "10101110", 35 => "11000001", 
    36 => "00000010", 37 => "01010011", 38 => "00111000", 39 => "00100001", 
    40 => "11110001", 41 => "11011011", 42 => "11011010", 43 => "11011101", 
    44 => "10111100", 45 => "11011100", 46 => "11111110", 47 => "00100101", 
    48 => "01010110", 49 => "01001110", 50 => "00010101", 51 => "10111100", 
    52 => "00111010", 53 => "01011100", 54 => "01110000", 55 => "00001011", 
    56 => "10111010", 57 => "10101101", 58 => "10110001", 59 => "11111110", 
    60 => "00100111", 61 => "00000101", 62 => "11110010", 63 => "11111011", 
    64 => "11110110", 65 => "00011011", 66 => "00110110", 67 => "11101111", 
    68 => "11001110", 69 => "00000010", 70 => "11111100", 71 => "00001011", 
    72 => "11101001", 73 => "11100111", 74 => "11100110", 75 => "00110110", 
    76 => "00101101", 77 => "00100001", 78 => "10100001", 79 => "11001101", 
    80 => "11110100", 81 => "00111110", 82 => "00111111", 83 => "00000001", 
    84 => "10101000", 85 => "10111110", 86 => "11100011", 87 => "01011000", 
    88 => "01000111", 89 => "00100011", 90 => "11101000", 91 => "10101011", 
    92 => "11000101", 93 => "11101110", 94 => "00000000", 95 => "00000011", 
    96 => "00010001", 97 => "00100100", 98 => "00111001", 99 => "01001000", 
    100 => "00001100", 101 => "11000110", 102 => "10010010", 103 => "10100100" );

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

entity L3_wlo_218_L2_WEIcqw is
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

architecture arch of L3_wlo_218_L2_WEIcqw is
    component L3_wlo_218_L2_WEIcqw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcqw_rom_U :  component L3_wlo_218_L2_WEIcqw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


