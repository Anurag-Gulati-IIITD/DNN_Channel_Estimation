-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbBo_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbBo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000011000", 1 => "110111101", 2 => "111111001", 3 => "001010110", 
    4 => "110010000", 5 => "111101011", 6 => "000011011", 7 => "000100110", 
    8 => "011000011", 9 => "000001011", 10 => "111101101", 11 => "111100110", 
    12 => "001110101", 13 => "001011110", 14 => "111100111", 15 => "010010111", 
    16 => "111110011", 17 => "111110100", 18 => "110000110", 19 => "001100001", 
    20 => "001011100", 21 => "111011011", 22 => "110110100", 23 => "000111011", 
    24 => "000000101", 25 => "000110101", 26 => "101010000", 27 => "110000000", 
    28 => "000110001", 29 => "111100010", 30 => "000100000", 31 => "111010011", 
    32 => "111110010", 33 => "000110111", 34 => "001010111", 35 => "011111101", 
    36 => "111000100", 37 => "111110001", 38 => "010010100", 39 => "111110111", 
    40 => "000011011", 41 => "001000011", 42 => "111101100", 43 => "101000000", 
    44 => "000001011", 45 => "111100111", 46 => "111111010", 47 => "111110100", 
    48 => "111000000", 49 => "101110001", 50 => "100000010", 51 => "110101111" );

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

entity L2_wlo_166_L1_WEIbBo is
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

architecture arch of L2_wlo_166_L1_WEIbBo is
    component L2_wlo_166_L1_WEIbBo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbBo_rom_U :  component L2_wlo_166_L1_WEIbBo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


