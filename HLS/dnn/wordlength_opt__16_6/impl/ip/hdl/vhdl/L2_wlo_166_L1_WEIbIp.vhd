-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbIp_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbIp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111011111", 1 => "110101001", 2 => "110011110", 3 => "000010010", 
    4 => "110110111", 5 => "101011010", 6 => "111100101", 7 => "000101100", 
    8 => "010110010", 9 => "001010100", 10 => "110111010", 11 => "111011000", 
    12 => "000111101", 13 => "110010010", 14 => "000110110", 15 => "011000100", 
    16 => "111001100", 17 => "010000000", 18 => "111111000", 19 => "110101011", 
    20 => "110110001", 21 => "000011000", 22 => "110111101", 23 => "001010000", 
    24 => "101110100", 25 => "111110010", 26 => "000101010", 27 => "000111010", 
    28 => "101001101", 29 => "011010011", 30 => "000010000", 31 => "101111111", 
    32 => "001011000", 33 => "000111110", 34 => "101101111", 35 => "110000001", 
    36 => "111101011", 37 => "010011000", 38 => "101101101", 39 => "001001011", 
    40 => "000100000", 41 => "001001111", 42 => "101101000", 43 => "101110111", 
    44 => "000011010", 45 => "000101011", 46 => "111110000", 47 => "111100011", 
    48 => "111100001", 49 => "000101000", 50 => "100110110", 51 => "110011001" );

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

entity L2_wlo_166_L1_WEIbIp is
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

architecture arch of L2_wlo_166_L1_WEIbIp is
    component L2_wlo_166_L1_WEIbIp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbIp_rom_U :  component L2_wlo_166_L1_WEIbIp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


