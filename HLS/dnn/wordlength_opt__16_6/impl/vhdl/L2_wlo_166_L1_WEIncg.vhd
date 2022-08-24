-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIncg_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIncg_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110111001", 1 => "101101010", 2 => "110111000", 3 => "111010001", 
    4 => "111101101", 5 => "110001010", 6 => "000100001", 7 => "000100100", 
    8 => "010110111", 9 => "111001111", 10 => "010000111", 11 => "000111001", 
    12 => "110100110", 13 => "110111011", 14 => "110111001", 15 => "100110010", 
    16 => "001010001", 17 => "111111001", 18 => "000010100", 19 => "111000101", 
    20 => "000011010", 21 => "111110111", 22 => "000000101", 23 => "010001101", 
    24 => "000000011", 25 => "000000100", 26 => "001111000", 27 => "000011101", 
    28 => "110011000", 29 => "001011110", 30 => "001110000", 31 => "111110001", 
    32 => "111101001", 33 => "000010001", 34 => "000010110", 35 => "111001101", 
    36 => "000111111", 37 => "101111101", 38 => "110100100", 39 => "110001001", 
    40 => "000110000", 41 => "000010110", 42 => "000001001", 43 => "010000100", 
    44 => "111001001", 45 => "000000000", 46 => "001101110", 47 => "110101110", 
    48 => "111010110", 49 => "110110101", 50 => "100111110", 51 => "001000110" );

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

entity L2_wlo_166_L1_WEIncg is
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

architecture arch of L2_wlo_166_L1_WEIncg is
    component L2_wlo_166_L1_WEIncg_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIncg_rom_U :  component L2_wlo_166_L1_WEIncg_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


