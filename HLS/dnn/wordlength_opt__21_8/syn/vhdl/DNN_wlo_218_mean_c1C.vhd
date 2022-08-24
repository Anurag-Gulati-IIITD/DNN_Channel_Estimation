-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_wlo_218_mean_c1C_rom is 
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


architecture rtl of DNN_wlo_218_mean_c1C_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1101000", 1 => "1110101", 2 => "0000101", 3 => "0010011", 
    4 => "0011010", 5 => "0010111", 6 => "0001010", 7 => "1110101", 
    8 => "1100011", 9 => "1011101", 10 => "1100111", 11 => "0000000", 
    12 => "0011010", 13 => "0100111", 14 => "0100001", 15 => "0001010", 
    16 => "1101101", 17 => "1011010", 18 => "1011001", 19 => "1101010", 
    20 => "0000110", 21 => "0011110", 22 => "0100111", 23 => "0011110", 
    24 => "0000111", 25 => "1101101", 26 => "1011011", 27 => "1101011", 
    28 => "0000100", 29 => "0011011", 30 => "0100110", 31 => "0011111", 
    32 => "0001010", 33 => "1101110", 34 => "1011010", 35 => "1011000", 
    36 => "1101001", 37 => "0000111", 38 => "0100001", 39 => "0101010", 
    40 => "0011100", 41 => "0000000", 42 => "1100101", 43 => "1011011", 
    44 => "1100101", 45 => "1111010", 46 => "0001101", 47 => "0010110", 
    48 => "0010100", 49 => "0001100", 50 => "0000010", 51 => "1111010", 
    52 => "0001011", 53 => "0010111", 54 => "0011000", 55 => "0010001", 
    56 => "0000010", 57 => "1110001", 58 => "1100100", 59 => "1100010", 
    60 => "1101110", 61 => "0000101", 62 => "0011011", 63 => "0100110", 
    64 => "0011101", 65 => "0000100", 66 => "1101001", 67 => "1011000", 
    68 => "1011011", 69 => "1110000", 70 => "0001100", 71 => "0100010", 
    72 => "0100111", 73 => "0011010", 74 => "0000000", 75 => "1100111", 
    76 => "1011001", 77 => "1011101", 78 => "0001100", 79 => "0100000", 
    80 => "0100101", 81 => "0011010", 82 => "0000010", 83 => "1101001", 
    84 => "1011001", 85 => "1011011", 86 => "1101111", 87 => "0001011", 
    88 => "0100011", 89 => "0101010", 90 => "0011010", 91 => "1111100", 
    92 => "1100001", 93 => "1010111", 94 => "1100011", 95 => "1111101", 
    96 => "0010100", 97 => "0011110", 98 => "0011000", 99 => "0001000", 
    100 => "1111010", 101 => "1110001", 102 => "1101110", 103 => "1110000" );

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

entity DNN_wlo_218_mean_c1C is
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

architecture arch of DNN_wlo_218_mean_c1C is
    component DNN_wlo_218_mean_c1C_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    DNN_wlo_218_mean_c1C_rom_U :  component DNN_wlo_218_mean_c1C_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


