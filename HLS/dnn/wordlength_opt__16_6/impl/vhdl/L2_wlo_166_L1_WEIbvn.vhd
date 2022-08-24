-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbvn_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbvn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000011011", 1 => "1110011111", 2 => "0001010110", 3 => "1111100010", 
    4 => "0010000100", 5 => "0101001011", 6 => "0000011111", 7 => "0000000101", 
    8 => "0011000011", 9 => "0000111100", 10 => "1101001010", 11 => "1111111111", 
    12 => "1111001110", 13 => "0000101011", 14 => "0000011001", 15 => "1111010001", 
    16 => "0001001000", 17 => "1111100001", 18 => "1111111010", 19 => "0000000001", 
    20 => "1110110011", 21 => "1111111100", 22 => "0000000000", 23 => "0001110001", 
    24 => "1111101010", 25 => "1111001001", 26 => "0001110100", 27 => "1111000011", 
    28 => "1111110101", 29 => "1011111000", 30 => "0000101100", 31 => "0001011010", 
    32 => "1110101100", 33 => "0000100110", 34 => "0000110101", 35 => "0000010000", 
    36 => "1111010011", 37 => "0011001001", 38 => "0010001000", 39 => "1110010000", 
    40 => "1111000011", 41 => "1111011111", 42 => "1111101110", 43 => "0000101111", 
    44 => "1111001101", 45 => "1111001100", 46 => "0001100010", 47 => "1111001110", 
    48 => "0000100011", 49 => "1101101110", 50 => "1110001001", 51 => "1111110111" );

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

entity L2_wlo_166_L1_WEIbvn is
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

architecture arch of L2_wlo_166_L1_WEIbvn is
    component L2_wlo_166_L1_WEIbvn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbvn_rom_U :  component L2_wlo_166_L1_WEIbvn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


