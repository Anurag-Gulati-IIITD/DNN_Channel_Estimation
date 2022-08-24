-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbtn_rom is 
    generic(
             DWIDTH     : integer := 9; 
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


architecture rtl of L2_wlo_166_L1_WEIbtn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111111011", 1 => "011110110", 2 => "001010101", 3 => "000111111", 
    4 => "010000000", 5 => "111100110", 6 => "111101110", 7 => "010000011", 
    8 => "110001101", 9 => "010011001", 10 => "001101110", 11 => "111100000", 
    12 => "111000101", 13 => "100110110", 14 => "000000000", 15 => "110111001", 
    16 => "111111100", 17 => "111100101", 18 => "111011011", 19 => "000111100", 
    20 => "111111111", 21 => "000001100", 22 => "110010101", 23 => "100100000", 
    24 => "001101001", 25 => "001100001", 26 => "000010111", 27 => "110100010", 
    28 => "000001100", 29 => "111101100", 30 => "000001100", 31 => "001001011", 
    32 => "110011101", 33 => "001010011", 34 => "110101010", 35 => "010100111", 
    36 => "000111101", 37 => "111110010", 38 => "001000111", 39 => "110110011", 
    40 => "000010001", 41 => "111110100", 42 => "110000000", 43 => "000111110", 
    44 => "000011110", 45 => "010000111", 46 => "111100010", 47 => "110111111", 
    48 => "110111110", 49 => "001001110", 50 => "001000101", 51 => "001000011" );

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

entity L2_wlo_166_L1_WEIbtn is
    generic (
        DataWidth : INTEGER := 9;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIbtn is
    component L2_wlo_166_L1_WEIbtn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbtn_rom_U :  component L2_wlo_166_L1_WEIbtn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


