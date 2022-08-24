-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbPq_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbPq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111101101", 1 => "101111001", 2 => "000110101", 3 => "111110011", 
    4 => "111111000", 5 => "111001101", 6 => "000001000", 7 => "000100101", 
    8 => "001101101", 9 => "010101001", 10 => "111011001", 11 => "001011001", 
    12 => "110011001", 13 => "101011001", 14 => "001101010", 15 => "111100000", 
    16 => "111110110", 17 => "101111100", 18 => "110110110", 19 => "000001001", 
    20 => "001000000", 21 => "000000000", 22 => "111101001", 23 => "000011100", 
    24 to 25=> "000000000", 26 => "000011010", 27 => "000100000", 28 => "101010010", 
    29 => "000001101", 30 => "110011101", 31 => "001110100", 32 => "111001111", 
    33 => "001110110", 34 => "000000101", 35 => "001110011", 36 => "111111110", 
    37 => "000101101", 38 => "111100000", 39 => "110000110", 40 => "111111110", 
    41 => "000010100", 42 => "101100101", 43 => "111100100", 44 => "111101100", 
    45 => "111000101", 46 => "111111001", 47 => "111101101", 48 => "000101010", 
    49 => "001001000", 50 => "101101100", 51 => "000100110" );

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

entity L2_wlo_166_L1_WEIbPq is
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

architecture arch of L2_wlo_166_L1_WEIbPq is
    component L2_wlo_166_L1_WEIbPq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbPq_rom_U :  component L2_wlo_166_L1_WEIbPq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


