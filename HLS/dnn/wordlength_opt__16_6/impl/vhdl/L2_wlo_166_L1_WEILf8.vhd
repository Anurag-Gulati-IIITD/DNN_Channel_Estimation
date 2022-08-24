-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEILf8_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L2_wlo_166_L1_WEILf8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000000010", 1 => "0011100011", 2 => "1111100110", 3 => "1111010111", 
    4 => "0000000011", 5 => "1110101111", 6 => "1111111100", 7 => "0001000000", 
    8 => "0001101101", 9 => "0000111011", 10 => "1101101001", 11 => "0001000001", 
    12 => "0010100110", 13 => "1111110000", 14 => "1010101110", 15 => "1101110001", 
    16 => "0010011111", 17 => "0000001010", 18 => "0001001100", 19 => "1111110110", 
    20 => "1111100101", 21 => "1111101111", 22 => "1110011010", 23 => "1110111011", 
    24 => "1111100111", 25 => "0000010111", 26 => "1100111000", 27 => "1110010100", 
    28 => "0000111001", 29 => "0001000010", 30 => "0100110111", 31 => "1110101000", 
    32 => "0000111010", 33 => "1110101111", 34 => "1110110000", 35 => "1110001010", 
    36 => "1111100101", 37 => "0001001111", 38 => "0000001001", 39 => "0000111101", 
    40 => "1111100111", 41 => "0000000001", 42 => "1111101010", 43 => "0010011010", 
    44 => "0001011011", 45 => "1111111110", 46 => "0000000111", 47 => "1111110000", 
    48 => "1111101110", 49 => "0000101010", 50 => "1111001110", 51 => "1110001111" );

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

entity L2_wlo_166_L1_WEILf8 is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEILf8 is
    component L2_wlo_166_L1_WEILf8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEILf8_rom_U :  component L2_wlo_166_L1_WEILf8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


