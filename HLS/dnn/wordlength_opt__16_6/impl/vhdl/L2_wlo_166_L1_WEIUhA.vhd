-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIUhA_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIUhA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000000001", 1 => "101101010", 2 => "110000011", 3 => "111111001", 
    4 => "111000111", 5 => "101110010", 6 => "111101101", 7 => "000110111", 
    8 => "001010001", 9 => "010110001", 10 => "110111011", 11 => "000010011", 
    12 => "001000010", 13 => "110010001", 14 => "010010100", 15 => "001011101", 
    16 => "110000000", 17 => "001011000", 18 => "001010011", 19 => "110110101", 
    20 => "111100101", 21 => "111101110", 22 => "111010101", 23 => "001100100", 
    24 => "111110000", 25 => "111010001", 26 => "011011011", 27 => "000100000", 
    28 => "110011011", 29 => "010011100", 30 => "100111010", 31 => "000000000", 
    32 => "000101101", 33 => "010101000", 34 => "110011000", 35 => "110000001", 
    36 => "001001101", 37 => "001110111", 38 => "110111110", 39 => "001011000", 
    40 => "000101001", 41 => "001101111", 42 => "101100001", 43 => "110000111", 
    44 => "111100101", 45 => "000001011", 46 => "111101011", 47 => "000001001", 
    48 => "000101010", 49 => "010000110", 50 => "101111010", 51 => "110110111" );

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

entity L2_wlo_166_L1_WEIUhA is
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

architecture arch of L2_wlo_166_L1_WEIUhA is
    component L2_wlo_166_L1_WEIUhA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIUhA_rom_U :  component L2_wlo_166_L1_WEIUhA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


