-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_4_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010010010000100", 1 => "0010111110100110", 2 => "0011000111110000", 
    3 => "1010011100001100", 4 => "1010110001010100", 5 => "0011010011101011", 
    6 => "0010110010111010", 7 => "1010101010010010", 8 => "1010110101111011", 
    9 => "0001100100100111", 10 => "1010101011101100", 11 => "0011000001010010", 
    12 => "0010111100101001", 13 => "0010001001100111", 14 => "0011000000110011", 
    15 => "1010110001100100", 16 => "0010011001001111", 17 => "1011001010101110", 
    18 => "1001100100000101", 19 => "0010110110100100", 20 => "1010011001101101", 
    21 => "1011000100110011", 22 => "0010100100100111", 23 => "1010110011111110", 
    24 => "0010000100000010", 25 => "0010100001100001", 26 => "0011000100001010", 
    27 => "1010110001110010", 28 => "1010110111001100", 29 => "1011001101001100", 
    30 => "1011001010011001", 31 => "1010110100010101", 32 => "0010101001100111", 
    33 => "0010011001111101", 34 => "0010110000101111", 35 => "0011000000010110", 
    36 => "0010100001000011", 37 => "0011000100001000", 38 => "0010110111000101", 
    39 => "0010011100010001", 40 => "1010110101100010", 41 => "0010011101001010", 
    42 => "0010100101100011", 43 => "0010011110010011", 44 => "1010110101011100", 
    45 => "1010111110101010", 46 => "0001100011111010", 47 => "0001110111110110", 
    48 => "0010110010110011", 49 => "0010100001010011", 50 => "0011000101000011", 
    51 => "1011000011010010" );

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

entity L2_wlo_L1_WEIGHTS_4 is
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

architecture arch of L2_wlo_L1_WEIGHTS_4 is
    component L2_wlo_L1_WEIGHTS_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_4_rom_U :  component L2_wlo_L1_WEIGHTS_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


