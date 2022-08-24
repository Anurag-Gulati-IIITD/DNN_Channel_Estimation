-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcjv_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcjv_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011100", 1 => "11100000", 2 => "11100011", 3 => "11011011", 
    4 => "00010011", 5 => "00100000", 6 => "00101000", 7 => "00101011", 
    8 => "11111001", 9 => "11100010", 10 => "11100001", 11 => "11011110", 
    12 => "11100101", 13 => "00001000", 14 => "11111110", 15 => "00000010", 
    16 => "00101010", 17 => "00011000", 18 => "00010011", 19 => "11111111", 
    20 => "11101001", 21 => "11110000", 22 => "11101010", 23 => "11110010", 
    24 => "00000110", 25 => "00001101", 26 => "00110001", 27 => "00010100", 
    28 => "11110000", 29 => "11000100", 30 => "11000011", 31 => "11111101", 
    32 => "00100110", 33 => "01000000", 34 => "00010110", 35 => "11000100", 
    36 => "11000011", 37 => "11010000", 38 => "00100101", 39 => "01010110", 
    40 => "01000001", 41 => "00010000", 42 to 43=> "11001100", 44 => "11110010", 
    45 => "00011001", 46 => "00010010", 47 => "11110011", 48 => "11100000", 
    49 => "11101100", 50 => "00101000", 51 => "01000001", 52 => "11101111", 
    53 => "00001001", 54 => "00011001", 55 => "00010110", 56 => "00101001", 
    57 => "00101111", 58 => "11110110", 59 => "11100000", 60 => "11011001", 
    61 => "11010001", 62 => "11111111", 63 => "00011011", 64 => "00010011", 
    65 => "00010000", 66 => "00101001", 67 => "00001100", 68 => "00001010", 
    69 => "00000001", 70 => "11010110", 71 => "11101000", 72 => "11110100", 
    73 => "11111011", 74 => "00010101", 75 => "00000111", 76 => "00100001", 
    77 => "00100000", 78 => "11111100", 79 => "11000000", 80 => "11000100", 
    81 => "11110010", 82 => "00010111", 83 => "01000101", 84 => "00111000", 
    85 => "11011100", 86 => "11010111", 87 => "11000011", 88 => "00000110", 
    89 => "01001010", 90 => "01001011", 91 => "00100101", 92 => "11010010", 
    93 => "10101001", 94 => "11001111", 95 => "11111101", 96 => "00100001", 
    97 => "00010001", 98 => "11110100", 99 => "11101001", 100 => "00010000", 
    101 => "00101101", 102 => "00101110", 103 => "00000010" );

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

entity L3_wlo_218_L2_WEIcjv is
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

architecture arch of L3_wlo_218_L2_WEIcjv is
    component L3_wlo_218_L2_WEIcjv_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcjv_rom_U :  component L3_wlo_218_L2_WEIcjv_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


