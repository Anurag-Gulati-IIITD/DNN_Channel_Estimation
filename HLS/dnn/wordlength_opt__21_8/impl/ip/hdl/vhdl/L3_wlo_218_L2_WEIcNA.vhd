-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_218_L2_WEIcNA_rom is 
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


architecture rtl of L3_wlo_218_L2_WEIcNA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00001101", 1 => "01110001", 2 => "01000010", 3 => "00011110", 
    4 => "10111101", 5 => "10100000", 6 => "10001011", 7 => "10101111", 
    8 => "00010000", 9 => "01001111", 10 => "01011010", 11 => "01000011", 
    12 => "00000100", 13 => "11010100", 14 => "11000101", 15 => "11101111", 
    16 => "11110101", 17 => "11100100", 18 => "11001101", 19 => "00011001", 
    20 => "11101111", 21 => "11111101", 22 => "00001011", 23 => "11110001", 
    24 => "00000111", 25 => "00001001", 26 => "11100010", 27 => "11011001", 
    28 => "11110110", 29 => "00001011", 30 => "00101101", 31 => "01101111", 
    32 => "00011000", 33 => "00001111", 34 => "11010110", 35 => "11001101", 
    36 => "11000000", 37 => "11001101", 38 => "11110111", 39 => "00001010", 
    40 => "01010101", 41 => "01111000", 42 => "00111000", 43 => "11101101", 
    44 => "10001011", 45 => "10011011", 46 => "11110000", 47 => "00101110", 
    48 => "01011000", 49 => "01010111", 50 to 51=> "11100010", 52 => "00111110", 
    53 => "00100010", 54 => "11101110", 55 => "10001011", 56 => "10011101", 
    57 => "10110110", 58 => "00111010", 59 => "01011100", 60 => "01010011", 
    61 => "00101111", 62 => "11101000", 63 => "10100000", 64 => "11001110", 
    65 => "11001000", 66 => "11111000", 67 => "00000001", 68 => "00000101", 
    69 => "00010100", 70 => "11101000", 71 => "00011011", 72 => "00101001", 
    73 => "11100101", 74 => "00011001", 75 => "00001011", 76 => "11100011", 
    77 => "11111101", 78 => "00000000", 79 => "00011110", 80 => "00100111", 
    81 => "01100100", 82 => "00001000", 83 => "11111101", 84 => "11011100", 
    85 to 86=> "10101010", 87 => "00000001", 88 => "11101100", 89 => "00011011", 
    90 => "01000110", 91 => "00111011", 92 => "00110100", 93 => "11111111", 
    94 => "10101001", 95 => "10000001", 96 => "11000110", 97 => "00011110", 
    98 => "01110110", 99 => "01100011", 100 => "11110011", 101 => "11010100", 
    102 => "10100101", 103 => "11000000" );

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

entity L3_wlo_218_L2_WEIcNA is
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

architecture arch of L3_wlo_218_L2_WEIcNA is
    component L3_wlo_218_L2_WEIcNA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_218_L2_WEIcNA_rom_U :  component L3_wlo_218_L2_WEIcNA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


