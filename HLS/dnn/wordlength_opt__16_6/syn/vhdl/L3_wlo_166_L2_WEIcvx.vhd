-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcvx_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcvx_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "01001011", 1 => "00110100", 2 => "11101100", 3 => "10111010", 
    4 => "10110000", 5 => "11111100", 6 => "00011010", 7 => "00101000", 
    8 => "11111011", 9 => "11010011", 10 => "11011101", 11 => "00010101", 
    12 => "01000100", 13 => "00101000", 14 => "11101001", 15 => "10111000", 
    16 => "11000011", 17 => "11101010", 18 => "00010100", 19 => "00100001", 
    20 => "11111111", 21 => "11101011", 22 => "11110100", 23 => "00010111", 
    24 => "00100000", 25 => "00000100", 26 => "10111110", 27 => "11010101", 
    28 => "00000111", 29 => "00100010", 30 => "00101001", 31 => "00000000", 
    32 => "11111010", 33 => "00001010", 34 => "00011000", 35 => "00000000", 
    36 => "11100001", 37 => "11001010", 38 => "11011011", 39 => "00001010", 
    40 => "00110010", 41 => "00110011", 42 => "00000001", 43 => "11100100", 
    44 => "11110011", 45 => "00000101", 46 => "00001111", 47 => "11110000", 
    48 => "11100101", 49 => "11011001", 50 => "11111101", 51 => "00100000", 
    52 => "00001011", 53 => "10110011", 54 => "10100111", 55 => "11100000", 
    56 => "00100000", 57 => "01000011", 58 => "00101000", 59 => "11100101", 
    60 => "11010110", 61 => "11111001", 62 => "00101000", 63 => "00110110", 
    64 => "00000101", 65 => "11000100", 66 => "10101111", 67 => "11100000", 
    68 => "00100000", 69 => "01000010", 70 => "00100110", 71 => "11110011", 
    72 => "11101101", 73 => "11110000", 74 => "00001011", 75 => "00010001", 
    76 => "11101101", 77 => "11000110", 78 => "11111001", 79 => "00100001", 
    80 => "00110100", 81 => "00011111", 82 => "11110001", 83 => "11110100", 
    84 => "11110011", 85 => "00000001", 86 => "11110100", 87 to 88=> "11100010", 
    89 => "00000101", 90 => "00100000", 91 => "00111100", 92 => "00011001", 
    93 => "11100101", 94 => "11011110", 95 => "11101000", 96 => "00001100", 
    97 => "00000101", 98 => "00000011", 99 => "11101001", 100 => "11110000", 
    101 => "00011111", 102 => "00100101", 103 => "00110000" );

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

entity L3_wlo_166_L2_WEIcvx is
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

architecture arch of L3_wlo_166_L2_WEIcvx is
    component L3_wlo_166_L2_WEIcvx_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcvx_rom_U :  component L3_wlo_166_L2_WEIcvx_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


