-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbQq_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L2_wlo_166_L1_WEIbQq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1110101101", 1 => "1101111110", 2 => "0001000000", 3 => "1111111101", 
    4 => "0001100010", 5 => "1111101111", 6 => "1111110110", 7 => "0000100100", 
    8 => "1111111101", 9 => "0100011110", 10 => "1111111000", 11 => "0000111010", 
    12 => "1110111100", 13 => "0010000111", 14 => "0011000011", 15 => "1110110110", 
    16 => "1111010001", 17 => "1110011101", 18 => "0000010110", 19 => "0000010010", 
    20 => "0000111010", 21 => "0000000011", 22 => "1110100111", 23 => "0010101111", 
    24 => "0000101001", 25 => "0000000010", 26 => "0001001100", 27 => "0001000110", 
    28 => "0000101101", 29 => "1110011101", 30 => "1101001111", 31 => "1111111110", 
    32 => "1110101110", 33 => "1111110110", 34 => "1110011010", 35 => "1110000110", 
    36 => "0000011001", 37 => "0001100000", 38 => "1111100001", 39 => "0000100010", 
    40 => "1110101111", 41 => "1110010100", 42 => "1101000100", 43 => "0010001101", 
    44 => "1111101100", 45 => "1110011110", 46 => "1111001110", 47 => "0000001000", 
    48 => "0001110001", 49 => "0000100011", 50 => "0000001100", 51 => "1111111100" );

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

entity L2_wlo_166_L1_WEIbQq is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIbQq is
    component L2_wlo_166_L1_WEIbQq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbQq_rom_U :  component L2_wlo_166_L1_WEIbQq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


