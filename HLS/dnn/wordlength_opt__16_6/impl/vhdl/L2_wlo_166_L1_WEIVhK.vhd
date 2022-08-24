-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIVhK_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIVhK_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111011110", 1 => "000001100", 2 => "110010000", 3 => "110001110", 
    4 => "111101100", 5 => "101001100", 6 => "111011100", 7 => "010010111", 
    8 => "001011001", 9 => "010000011", 10 => "000000110", 11 => "000010000", 
    12 => "000000001", 13 => "110001010", 14 => "001100011", 15 => "010010010", 
    16 => "000111010", 17 => "001010101", 18 => "001011100", 19 => "111111001", 
    20 => "111100000", 21 => "001000100", 22 => "110010011", 23 => "001010101", 
    24 => "110110010", 25 => "111111010", 26 => "001001110", 27 => "001101010", 
    28 => "000111010", 29 => "010011010", 30 => "101011000", 31 => "111010100", 
    32 => "000010001", 33 => "000000110", 34 => "001001111", 35 => "101011101", 
    36 => "111010100", 37 => "110001100", 38 => "110111101", 39 => "001000001", 
    40 => "000011111", 41 => "111000001", 42 => "110010110", 43 => "101110110", 
    44 => "000101011", 45 => "000111001", 46 => "001010010", 47 => "000010011", 
    48 => "000011011", 49 => "110101100", 50 => "000111100", 51 => "110111111" );

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

entity L2_wlo_166_L1_WEIVhK is
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

architecture arch of L2_wlo_166_L1_WEIVhK is
    component L2_wlo_166_L1_WEIVhK_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIVhK_rom_U :  component L2_wlo_166_L1_WEIVhK_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


