-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbLp_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbLp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "110110101", 1 => "001100110", 2 => "000010100", 3 => "110100001", 
    4 => "001100111", 5 => "000100100", 6 => "000000010", 7 => "111101111", 
    8 => "101000000", 9 => "111011010", 10 => "011000011", 11 => "111100011", 
    12 => "001000010", 13 => "001110010", 14 => "110111011", 15 => "000101111", 
    16 => "001011001", 17 => "111001001", 18 => "110011100", 19 => "001011100", 
    20 => "001010010", 21 => "110011111", 22 => "000000010", 23 => "111001011", 
    24 => "111110010", 25 => "111010000", 26 => "101100110", 27 => "110101011", 
    28 => "011000001", 29 => "111001110", 30 => "000100011", 31 => "000010111", 
    32 => "110110001", 33 => "100100111", 34 => "001001101", 35 => "110001000", 
    36 => "000000111", 37 => "110101000", 38 => "001000000", 39 => "110111100", 
    40 => "111100101", 41 => "101001111", 42 => "001010101", 43 => "111001011", 
    44 => "001111111", 45 => "001000001", 46 => "111100101", 47 => "000110111", 
    48 => "000011100", 49 => "111101111", 50 => "010110100", 51 => "000000100" );

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

entity L2_wlo_166_L1_WEIbLp is
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

architecture arch of L2_wlo_166_L1_WEIbLp is
    component L2_wlo_166_L1_WEIbLp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbLp_rom_U :  component L2_wlo_166_L1_WEIbLp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


