-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEILf8_rom is 
    generic(
             DWIDTH     : integer := 13; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 52
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of L2_wlo_218_L1_WEILf8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000000010101", 1 => "0011100011010", 2 => "1111100110010", 
    3 => "1111010111101", 4 => "0000000011111", 5 => "1110101111011", 
    6 => "1111111100000", 7 => "0001000000010", 8 => "0001101101000", 
    9 => "0000111011110", 10 => "1101101001000", 11 => "0001000001010", 
    12 => "0010100110101", 13 => "1111110000101", 14 => "1010101110101", 
    15 => "1101110001011", 16 => "0010011111000", 17 => "0000001010111", 
    18 => "0001001100100", 19 => "1111110110001", 20 => "1111100101010", 
    21 => "1111101111001", 22 => "1110011010001", 23 => "1110111011110", 
    24 => "1111100111101", 25 => "0000010111000", 26 => "1100111000010", 
    27 => "1110010100000", 28 => "0000111001111", 29 => "0001000010010", 
    30 => "0100110111011", 31 => "1110101000000", 32 => "0000111010000", 
    33 => "1110101111000", 34 => "1110110000100", 35 => "1110001010111", 
    36 => "1111100101110", 37 => "0001001111001", 38 => "0000001001101", 
    39 => "0000111101001", 40 => "1111100111100", 41 => "0000000001011", 
    42 => "1111101010001", 43 => "0010011010001", 44 => "0001011011000", 
    45 => "1111111110101", 46 => "0000000111011", 47 => "1111110000100", 
    48 => "1111101110010", 49 => "0000101010100", 50 => "1111001110010", 
    51 => "1110001111100" );

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

entity L2_wlo_218_L1_WEILf8 is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEILf8 is
    component L2_wlo_218_L1_WEILf8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEILf8_rom_U :  component L2_wlo_218_L1_WEILf8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


