-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEI4jc_rom is 
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


architecture rtl of L2_wlo_166_L1_WEI4jc_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111110110", 1 => "0001100111", 2 => "1111010010", 3 => "0000110100", 
    4 => "1111011000", 5 => "0000110010", 6 => "0001011111", 7 => "1111011101", 
    8 => "1111000101", 9 => "1110110101", 10 => "1110110011", 11 => "1011101100", 
    12 => "0001000110", 13 => "1111110000", 14 => "1100100000", 15 => "0010000110", 
    16 => "1110111011", 17 => "0000111000", 18 => "1111100010", 19 => "1101111000", 
    20 => "1111011000", 21 => "0000101111", 22 => "0000011110", 23 => "1111100111", 
    24 => "1111110000", 25 => "0000100000", 26 => "0011011010", 27 => "0000110111", 
    28 => "1110010000", 29 => "1101001111", 30 => "0011100100", 31 => "1110101010", 
    32 => "1110111001", 33 => "0010011011", 34 => "0000011000", 35 => "0001010011", 
    36 => "0000100111", 37 => "0000001100", 38 => "1111000111", 39 => "0001010001", 
    40 => "1111101010", 41 => "0000101011", 42 => "0000101100", 43 => "1101001000", 
    44 => "1110101111", 45 => "1110111111", 46 => "0000111101", 47 => "0000111000", 
    48 => "1111111000", 49 => "1101010001", 50 => "0000101100", 51 => "1110011110" );

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

entity L2_wlo_166_L1_WEI4jc is
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

architecture arch of L2_wlo_166_L1_WEI4jc is
    component L2_wlo_166_L1_WEI4jc_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEI4jc_rom_U :  component L2_wlo_166_L1_WEI4jc_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


