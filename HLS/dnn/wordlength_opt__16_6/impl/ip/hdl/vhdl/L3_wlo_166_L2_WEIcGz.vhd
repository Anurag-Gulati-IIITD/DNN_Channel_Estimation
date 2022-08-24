-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L3_wlo_166_L2_WEIcGz_rom is 
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


architecture rtl of L3_wlo_166_L2_WEIcGz_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11001", 1 => "11000", 2 => "00011", 3 => "01001", 4 => "00100", 
    5 => "11110", 6 => "11001", 7 => "11010", 8 => "11101", 9 => "00011", 
    10 => "00010", 11 to 12=> "00000", 13 to 14=> "11110", 15 => "00011", 16 => "00100", 
    17 => "11111", 18 => "11110", 19 => "11100", 20 => "11001", 21 => "11101", 
    22 => "00001", 23 => "00100", 24 to 25=> "00001", 26 => "11010", 27 => "11011", 
    28 => "11101", 29 => "00001", 30 => "00011", 31 => "00001", 32 => "00000", 
    33 to 34=> "11110", 35 => "00000", 36 => "00010", 37 => "00011", 38 => "00000", 
    39 => "11110", 40 to 42=> "11101", 43 => "11111", 44 => "00001", 45 => "00011", 
    46 => "00101", 47 => "00000", 48 to 49=> "11100", 50 => "11011", 51 => "00000", 
    52 => "00001", 53 => "00011", 54 => "00111", 55 => "00001", 56 => "11010", 
    57 => "11001", 58 => "11100", 59 => "00010", 60 => "00100", 61 => "00011", 
    62 => "00000", 63 => "11100", 64 => "11111", 65 => "00001", 66 => "00100", 
    67 => "11111", 68 => "11110", 69 to 70=> "11010", 71 => "11110", 72 => "00001", 
    73 => "00000", 74 => "00001", 75 => "00010", 76 => "11100", 77 to 78=> "11011", 
    79 to 80=> "00100", 81 => "00010", 82 => "11111", 83 to 84=> "11101", 85 => "11111", 
    86 => "00010", 87 to 88=> "00000", 89 => "00010", 90 => "11100", 91 to 92=> "11110", 
    93 to 94=> "00000", 95 => "00010", 96 => "00100", 97 => "00010", 98 => "00000", 
    99 => "11010", 100 => "11011", 101 => "00001", 102 => "00000", 103 => "00011" );

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

entity L3_wlo_166_L2_WEIcGz is
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

architecture arch of L3_wlo_166_L2_WEIcGz is
    component L3_wlo_166_L2_WEIcGz_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L3_wlo_166_L2_WEIcGz_rom_U :  component L3_wlo_166_L2_WEIcGz_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


