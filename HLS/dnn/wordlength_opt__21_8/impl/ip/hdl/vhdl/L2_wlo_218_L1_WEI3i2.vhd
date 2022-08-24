-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEI3i2_rom is 
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


architecture rtl of L2_wlo_218_L1_WEI3i2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111000100111", 1 => "1110011110000", 2 => "0001001100110", 
    3 => "1111000011010", 4 => "0011010100100", 5 => "0011111111011", 
    6 => "0000001100011", 7 => "1111110111000", 8 => "1101111010110", 
    9 => "0001001010101", 10 => "1111011010000", 11 => "1011000110011", 
    12 => "1111011011010", 13 => "0010001010011", 14 => "1110010010001", 
    15 => "1111010110010", 16 => "0001100001010", 17 => "1111000011001", 
    18 => "1111010101101", 19 => "1110101110000", 20 => "1111100110111", 
    21 => "1110101001000", 22 => "0000011001010", 23 => "1111101001100", 
    24 => "1111110110000", 25 => "1111101010110", 26 => "0000100011100", 
    27 => "0000010101110", 28 => "0010001000111", 29 => "1101100100101", 
    30 => "0000110001110", 31 => "1111110001010", 32 => "1101011000110", 
    33 => "1111001110101", 34 => "1111110101010", 35 => "0000110001001", 
    36 => "0000100010111", 37 => "1111010101000", 38 => "1110100111010", 
    39 => "0000100001110", 40 => "1101111001011", 41 => "1100011101100", 
    42 => "1100111001000", 43 => "1111010011001", 44 => "1110101010011", 
    45 => "1101101100110", 46 => "0000001010011", 47 => "1110111010011", 
    48 => "0010110011000", 49 => "0000011001001", 50 => "0010001011011", 
    51 => "1111000000100" );

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

entity L2_wlo_218_L1_WEI3i2 is
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

architecture arch of L2_wlo_218_L1_WEI3i2 is
    component L2_wlo_218_L1_WEI3i2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEI3i2_rom_U :  component L2_wlo_218_L1_WEI3i2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


