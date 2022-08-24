-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIkbM_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIkbM_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111101101", 1 => "0001111010", 2 => "0010111101", 3 => "1111100011", 
    4 => "1110111010", 5 => "0100111010", 6 => "0001001011", 7 => "1111001011", 
    8 => "1110101000", 9 => "0000000010", 10 => "1111001000", 11 => "0010001010", 
    12 => "0001110010", 13 => "0000001100", 14 => "0010000110", 15 => "1110111001", 
    16 => "0000011001", 17 => "1100101010", 18 => "1111111101", 19 => "0001011010", 
    20 => "1111100110", 21 => "1101011001", 22 => "0000101001", 23 => "1110110000", 
    24 => "0000001010", 25 => "0000100011", 26 => "0010100001", 27 => "1110111000", 
    28 => "1110100011", 29 => "1100010110", 30 => "1100101100", 31 => "1110101110", 
    32 => "0000110011", 33 => "0000011001", 34 => "0001000010", 35 => "0010000010", 
    36 => "0000100010", 37 => "0010100001", 38 => "0001011100", 39 => "0000011100", 
    40 => "1110101001", 41 => "0000011101", 42 => "0000101011", 43 => "0000011110", 
    44 => "1110101010", 45 => "1110000101", 46 => "0000000010", 47 => "0000000101", 
    48 => "0001001011", 49 => "0000100010", 50 => "0010101000", 51 => "1101100101" );

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

entity L2_wlo_166_L1_WEIkbM is
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

architecture arch of L2_wlo_166_L1_WEIkbM is
    component L2_wlo_166_L1_WEIkbM_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIkbM_rom_U :  component L2_wlo_166_L1_WEIkbM_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


