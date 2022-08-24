-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcNA_rom is 
    generic(
             DWIDTH     : integer := 5; 
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


architecture rtl of L3_wlo_166_L2_WEIcNA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00001", 1 => "01110", 2 => "01000", 3 => "00011", 4 => "10111", 
    5 => "10100", 6 => "10001", 7 => "10101", 8 => "00010", 9 => "01001", 
    10 => "01011", 11 => "01000", 12 => "00000", 13 => "11010", 14 => "11000", 
    15 => "11101", 16 => "11110", 17 => "11100", 18 => "11001", 19 => "00011", 
    20 => "11101", 21 => "11111", 22 => "00001", 23 => "11110", 24 => "00000", 
    25 => "00001", 26 => "11100", 27 => "11011", 28 => "11110", 29 => "00001", 
    30 => "00101", 31 => "01101", 32 => "00011", 33 => "00001", 34 => "11010", 
    35 => "11001", 36 => "11000", 37 => "11001", 38 => "11110", 39 => "00001", 
    40 => "01010", 41 => "01111", 42 => "00111", 43 => "11101", 44 => "10001", 
    45 => "10011", 46 => "11110", 47 => "00101", 48 => "01011", 49 => "01010", 
    50 to 51=> "11100", 52 => "00111", 53 => "00100", 54 => "11101", 55 => "10001", 
    56 => "10011", 57 => "10110", 58 => "00111", 59 => "01011", 60 => "01010", 
    61 => "00101", 62 => "11101", 63 => "10100", 64 to 65=> "11001", 66 => "11111", 
    67 to 68=> "00000", 69 => "00010", 70 => "11101", 71 => "00011", 72 => "00101", 
    73 => "11100", 74 => "00011", 75 => "00001", 76 => "11100", 77 => "11111", 
    78 => "00000", 79 => "00011", 80 => "00100", 81 => "01100", 82 => "00001", 
    83 => "11111", 84 => "11011", 85 to 86=> "10101", 87 => "00000", 88 => "11101", 
    89 => "00011", 90 => "01000", 91 => "00111", 92 => "00110", 93 => "11111", 
    94 => "10101", 95 => "10000", 96 => "11000", 97 => "00011", 98 => "01110", 
    99 => "01100", 100 => "11110", 101 => "11010", 102 => "10100", 103 => "11000" );

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

entity L3_wlo_166_L2_WEIcNA is
    generic (
        DataWidth : INTEGER := 5;
        AddressRange : INTEGER := 104;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L3_wlo_166_L2_WEIcNA is
    component L3_wlo_166_L2_WEIcNA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcNA_rom_U :  component L3_wlo_166_L2_WEIcNA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


