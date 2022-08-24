-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_6_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010011010110100", 1 => "1010111000000000", 2 => "1010110001111001", 
    3 => "1010001100111110", 4 => "1010101100001100", 5 => "1010111111010101", 
    6 => "0010100110010000", 7 => "0010111101111010", 8 => "1010110111001111", 
    9 => "1010110000000010", 10 => "0010111111001000", 11 => "1011001001100111", 
    12 => "0010010110111110", 13 => "1010101111011100", 14 => "0010100111000100", 
    15 => "1011000010100011", 16 => "1010100111101111", 17 => "0011000001100100", 
    18 => "1010011101011011", 19 => "1010101101101010", 20 => "1010101010111101", 
    21 => "0010010000100110", 22 => "1011000001111001", 23 => "0010111101111001", 
    24 => "1010010100111000", 25 => "1010101010001000", 26 => "0011000010001101", 
    27 => "1011001100111010", 28 => "1010101100111001", 29 => "0010110110100100", 
    30 => "1010100010111100", 31 => "1010010100110001", 32 => "0010101000001111", 
    33 => "0010010001101000", 34 => "1010100011100100", 35 => "0010011110110011", 
    36 => "0010000011000011", 37 => "1010100100110101", 38 => "0011000000110101", 
    39 => "0010101001010001", 40 => "1010011101001010", 41 => "0010111010001101", 
    42 => "1000101110001001", 43 => "0011000000010010", 44 => "1010011000111011", 
    45 => "0011000000111010", 46 => "1010101000011001", 47 => "0010110000000111", 
    48 => "1010101110001110", 49 => "1010001001011011", 50 => "0010001010010110", 
    51 => "1010111001100110" );

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

entity L2_wlo_L1_WEIGHTS_6 is
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

architecture arch of L2_wlo_L1_WEIGHTS_6 is
    component L2_wlo_L1_WEIGHTS_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_6_rom_U :  component L2_wlo_L1_WEIGHTS_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


