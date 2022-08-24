-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIhbi_rom is 
    generic(
             DWIDTH     : integer := 13; 
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


architecture rtl of L2_wlo_218_L1_WEIhbi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0001000110100", 1 => "0000110010010", 2 => "0000001110011", 
    3 => "1110010101000", 4 => "0010011001010", 5 => "1100101111110", 
    6 => "0000000001000", 7 => "1111010101110", 8 => "0010001101111", 
    9 => "1111010001010", 10 => "0000000100111", 11 => "1101110001111", 
    12 => "1110110011001", 13 => "1101101010001", 14 => "1101000000100", 
    15 => "0001100000011", 16 => "0000011110001", 17 => "0001101001110", 
    18 => "1111001010001", 19 => "0000110011010", 20 => "0000000000001", 
    21 => "0000101101001", 22 => "1111011100001", 23 => "1111110001000", 
    24 => "0000111110101", 25 => "0000101000001", 26 => "1101110110001", 
    27 => "0101011111011", 28 => "0000010110010", 29 => "0011010111001", 
    30 => "0010101111010", 31 => "0000110011110", 32 => "1110001101001", 
    33 => "1111010110001", 34 => "0000111110110", 35 => "0011010101111", 
    36 => "1111011001101", 37 => "0000111010111", 38 => "1010110011011", 
    39 => "1101101110001", 40 => "0000010011110", 41 => "1110000001111", 
    42 => "0001111100101", 43 => "1110110001101", 44 => "1111011000100", 
    45 => "1111010011111", 46 => "0001010010100", 47 => "0000000001111", 
    48 => "1111001010000", 49 => "1111100011110", 50 => "1101110111000", 
    51 => "0000110011101" );

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

entity L2_wlo_218_L1_WEIhbi is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIhbi is
    component L2_wlo_218_L1_WEIhbi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIhbi_rom_U :  component L2_wlo_218_L1_WEIhbi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


