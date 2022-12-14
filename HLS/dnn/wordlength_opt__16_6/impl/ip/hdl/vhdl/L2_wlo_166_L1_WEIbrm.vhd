-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbrm_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbrm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000001001", 1 => "0001101101", 2 => "1111011010", 3 => "0000101100", 
    4 => "1110000001", 5 => "1111111110", 6 => "1110101010", 7 => "1111110110", 
    8 => "1101001101", 9 => "0000010010", 10 => "0001100011", 11 => "1111111110", 
    12 => "0001001110", 13 => "0000000101", 14 => "0001010101", 15 => "0000110010", 
    16 => "1111000011", 17 => "1111111010", 18 => "1111000110", 19 => "0001000110", 
    20 => "0000001111", 21 => "1111110110", 22 => "0010001010", 23 => "1111011101", 
    24 => "0000010101", 25 => "1111100101", 26 => "1101100011", 27 => "0100000000", 
    28 => "0000011011", 29 => "0000100001", 30 => "0001000110", 31 => "1110111001", 
    32 to 33=> "0000001111", 34 => "1101110101", 35 => "0001110101", 36 => "1111001100", 
    37 => "1100011001", 38 => "1110000101", 39 => "1111100000", 40 => "0000001101", 
    41 => "0001000011", 42 => "0000111011", 43 => "1110011110", 44 => "0001110110", 
    45 => "0000100111", 46 => "1111000111", 47 => "1111110110", 48 => "1110100011", 
    49 => "0010010011", 50 => "0001101011", 51 => "1101100111" );

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

entity L2_wlo_166_L1_WEIbrm is
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

architecture arch of L2_wlo_166_L1_WEIbrm is
    component L2_wlo_166_L1_WEIbrm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbrm_rom_U :  component L2_wlo_166_L1_WEIbrm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


