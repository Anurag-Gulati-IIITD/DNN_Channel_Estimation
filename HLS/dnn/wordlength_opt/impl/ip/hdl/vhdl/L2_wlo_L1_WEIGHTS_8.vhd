-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_8_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of L2_wlo_L1_WEIGHTS_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110000000101", 1 => "1010111001010101", 2 => "1010101110000111", 
    3 => "1010110101101000", 4 => "0001000000011111", 5 => "1010011001110101", 
    6 => "0010101011110100", 7 => "1010000110111111", 8 => "0011000101011111", 
    9 => "0010100000110111", 10 => "0010111100000110", 11 => "0001111000110100", 
    12 => "1010101001010010", 13 => "0010010000101111", 14 => "1011000010001101", 
    15 => "0010101000100110", 16 => "0010010111001010", 17 => "0010110000100101", 
    18 => "1010001011011110", 19 => "0010000011101010", 20 => "1010100101111011", 
    21 => "1010101101111011", 22 => "0010011001111001", 23 => "0010110100111111", 
    24 => "1010101101011001", 25 => "1010100111101110", 26 => "0011000011101001", 
    27 => "0011000111100011", 28 => "0010111100010011", 29 => "0010111000011100", 
    30 => "0011000000111101", 31 => "0010110010101010", 32 => "1010001011000011", 
    33 => "1010100000111010", 34 => "0010011111001011", 35 => "1011000100111010", 
    36 => "0010010111001000", 37 => "1010100110010100", 38 => "1010111100001101", 
    39 => "1001000011111111", 40 => "0010000100100110", 41 => "1010101001010011", 
    42 => "1010110000001111", 43 => "0010111000010101", 44 => "1010100010001000", 
    45 => "0010111100011101", 46 => "0011000011111001", 47 => "1010100110110011", 
    48 => "1010101000010110", 49 => "1010110100000110", 50 => "1010111000100101", 
    51 => "0010101101100101" );

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

entity L2_wlo_L1_WEIGHTS_8 is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_L1_WEIGHTS_8 is
    component L2_wlo_L1_WEIGHTS_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_8_rom_U :  component L2_wlo_L1_WEIGHTS_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


