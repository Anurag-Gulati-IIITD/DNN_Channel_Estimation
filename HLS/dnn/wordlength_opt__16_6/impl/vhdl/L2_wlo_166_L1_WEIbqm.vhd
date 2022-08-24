-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbqm_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbqm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000111001", 1 => "101100100", 2 => "111010011", 3 => "001010000", 
    4 => "110010000", 5 => "011100000", 6 => "111001100", 7 => "101001110", 
    8 => "111010011", 9 => "110110000", 10 => "001000010", 11 => "001100001", 
    12 => "010000010", 13 => "001100010", 14 => "111001101", 15 => "000011111", 
    16 => "111001010", 17 => "111100110", 18 => "111111000", 19 => "000001110", 
    20 => "001000011", 21 => "111100100", 22 => "011101111", 23 => "010101010", 
    24 => "111010010", 25 => "110111101", 26 => "100111101", 27 => "010000100", 
    28 => "000110101", 29 => "101111111", 30 => "000101101", 31 => "111001101", 
    32 => "001101101", 33 => "110010010", 34 => "111001000", 35 => "000100001", 
    36 => "111011001", 37 => "000011011", 38 => "110010110", 39 => "001100010", 
    40 => "001000010", 41 => "001011010", 42 => "111111101", 43 => "111011110", 
    44 => "000000101", 45 => "111101001", 46 => "110101110", 47 => "111111111", 
    48 => "001000111", 49 => "010010100", 50 => "000100001", 51 => "110100101" );

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

entity L2_wlo_166_L1_WEIbqm is
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

architecture arch of L2_wlo_166_L1_WEIbqm is
    component L2_wlo_166_L1_WEIbqm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbqm_rom_U :  component L2_wlo_166_L1_WEIbqm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


