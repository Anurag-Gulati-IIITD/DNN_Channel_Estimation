-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbNq_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbNq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101000", 1 => "000110101", 2 => "001011111", 3 => "000010010", 
    4 => "110001010", 5 => "010010101", 6 => "001100000", 7 => "110001100", 
    8 => "001001101", 9 => "101100110", 10 => "111000011", 11 => "110100010", 
    12 => "000000011", 13 => "110110110", 14 => "101010011", 15 => "101110100", 
    16 => "111010101", 17 => "110101011", 18 => "111000010", 19 => "000010011", 
    20 => "000011111", 21 => "000000010", 22 => "001001111", 23 => "110101110", 
    24 => "001000100", 25 => "000100101", 26 => "110110101", 27 => "111000101", 
    28 => "111000111", 29 => "101101011", 30 => "001110100", 31 => "000001010", 
    32 => "000111111", 33 => "111100001", 34 => "000110100", 35 => "011101101", 
    36 => "111100100", 37 => "000111000", 38 => "111001101", 39 => "111110100", 
    40 => "111011011", 41 => "011000101", 42 => "011010010", 43 => "010011010", 
    44 => "111101110", 45 => "111100100", 46 => "110110100", 47 => "111110010", 
    48 => "111011100", 49 => "111100010", 50 => "111101110", 51 => "000010110" );

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

entity L2_wlo_166_L1_WEIbNq is
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

architecture arch of L2_wlo_166_L1_WEIbNq is
    component L2_wlo_166_L1_WEIbNq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbNq_rom_U :  component L2_wlo_166_L1_WEIbNq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


