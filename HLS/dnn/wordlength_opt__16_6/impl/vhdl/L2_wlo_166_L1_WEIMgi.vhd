-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIMgi_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIMgi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000100011", 1 => "000100010", 2 => "111101010", 3 => "000010100", 
    4 => "000011010", 5 => "001100100", 6 => "110101111", 7 => "111011000", 
    8 => "010110100", 9 => "010011011", 10 => "110011111", 11 => "000110111", 
    12 => "001010100", 13 => "011101111", 14 => "100101001", 15 => "000001010", 
    16 => "001000001", 17 => "111101001", 18 => "111110110", 19 => "001100001", 
    20 => "000000001", 21 => "111010111", 22 => "111100011", 23 => "111110101", 
    24 => "000001010", 25 => "001010011", 26 => "100010101", 27 => "111001111", 
    28 => "000010110", 29 => "110011110", 30 => "010010011", 31 => "110010101", 
    32 => "001010110", 33 => "110001011", 34 => "001001011", 35 => "111000110", 
    36 => "111011011", 37 => "010001011", 38 => "000011000", 39 => "000101101", 
    40 => "000110111", 41 => "001100101", 42 => "111010010", 43 => "111111001", 
    44 => "001000010", 45 => "000011000", 46 => "000000000", 47 => "000011111", 
    48 => "111110101", 49 => "000001011", 50 => "100111110", 51 => "101101110" );

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

entity L2_wlo_166_L1_WEIMgi is
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

architecture arch of L2_wlo_166_L1_WEIMgi is
    component L2_wlo_166_L1_WEIMgi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIMgi_rom_U :  component L2_wlo_166_L1_WEIMgi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


