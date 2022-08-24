-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbOq_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbOq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000101101", 1 => "000001011", 2 => "000001000", 3 => "010000001", 
    4 => "110000110", 5 => "001110010", 6 => "110101010", 7 => "111111101", 
    8 => "001000001", 9 => "000001110", 10 => "110100111", 11 => "111000111", 
    12 => "111010011", 13 => "111100010", 14 => "001010111", 15 => "111100110", 
    16 => "111010111", 17 => "000000101", 18 => "111001101", 19 => "000110101", 
    20 => "000010000", 21 => "110001100", 22 => "000101010", 23 => "000101100", 
    24 => "001000000", 25 => "110101110", 26 => "000100000", 27 => "000111101", 
    28 => "110100011", 29 => "000000110", 30 => "110101011", 31 => "001111111", 
    32 => "001000110", 33 => "001001110", 34 => "100101101", 35 => "010100111", 
    36 => "001011010", 37 => "000100100", 38 => "101110101", 39 => "111100010", 
    40 => "000010010", 41 => "010011010", 42 => "000110101", 43 => "010101101", 
    44 => "111110000", 45 => "000001001", 46 => "000010001", 47 => "000011101", 
    48 => "000001001", 49 => "011011010", 50 => "111011110", 51 => "001101100" );

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

entity L2_wlo_166_L1_WEIbOq is
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

architecture arch of L2_wlo_166_L1_WEIbOq is
    component L2_wlo_166_L1_WEIbOq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbOq_rom_U :  component L2_wlo_166_L1_WEIbOq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


