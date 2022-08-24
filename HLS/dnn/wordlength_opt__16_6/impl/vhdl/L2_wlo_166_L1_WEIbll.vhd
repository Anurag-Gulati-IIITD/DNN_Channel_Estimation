-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbll_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbll_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000010011", 1 => "010000010", 2 => "001000101", 3 => "010100010", 
    4 => "110010100", 5 => "010100110", 6 => "111101011", 7 => "110101100", 
    8 => "100010001", 9 => "010101011", 10 => "111011011", 11 => "000010010", 
    12 => "111010001", 13 => "000011100", 14 => "111001100", 15 => "001100000", 
    16 => "000001001", 17 => "000011001", 18 => "111001011", 19 => "101101100", 
    20 => "110110111", 21 => "110110101", 22 => "001101010", 23 => "111011001", 
    24 => "110111111", 25 => "000000110", 26 => "001101110", 27 => "110111000", 
    28 => "110110011", 29 => "110100001", 30 => "000011011", 31 => "001001001", 
    32 => "010001001", 33 => "001000101", 34 => "111001011", 35 => "111011111", 
    36 => "000111011", 37 => "000010100", 38 => "001001111", 39 => "101101011", 
    40 => "000011101", 41 => "001001110", 42 => "110000110", 43 => "111001001", 
    44 => "111010011", 45 => "001010011", 46 => "110100000", 47 => "000000001", 
    48 => "110000100", 49 => "001101000", 50 => "001011101", 51 => "001001111" );

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

entity L2_wlo_166_L1_WEIbll is
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

architecture arch of L2_wlo_166_L1_WEIbll is
    component L2_wlo_166_L1_WEIbll_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbll_rom_U :  component L2_wlo_166_L1_WEIbll_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


