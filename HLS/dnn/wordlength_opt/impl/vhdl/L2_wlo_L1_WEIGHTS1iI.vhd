-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS1iI_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS1iI_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010001110000001", 1 => "1011000001000000", 2 => "1010111010111000", 
    3 => "1010011100000111", 4 => "1010000111001011", 5 => "1011000011011000", 
    6 => "0000110000110110", 7 => "0010010110101001", 8 => "0010110111001110", 
    9 => "0010110001101001", 10 => "0010101010111011", 11 => "1011000011100001", 
    12 => "1010100010110101", 13 => "1010010000011001", 14 => "1010100100001010", 
    15 => "1011000010011101", 16 => "1010011001000101", 17 => "0011001011110111", 
    18 => "0010101101000101", 19 => "1010101110000010", 20 => "0001100001100010", 
    21 => "0010110110000010", 22 => "1010111110011010", 23 => "0011000111101001", 
    24 => "1010110100111110", 25 => "0010001111101101", 26 => "0010100101110011", 
    27 => "0010110010110111", 28 => "0010010100000010", 29 => "0011001001101010", 
    30 => "0010000011110100", 31 => "0010011101001010", 32 => "0001100000100111", 
    33 => "1010001011111011", 34 => "0010110011000101", 35 => "1011000010001100", 
    36 => "1001100111110011", 37 => "0001111001011001", 38 => "1010010001000000", 
    39 => "1010110101110110", 40 => "0010111000101010", 41 => "1010010100000111", 
    42 => "1010110011101000", 43 => "0010111111010000", 44 => "1010011101000100", 
    45 => "1010000110110001", 46 => "0010100111000011", 47 => "0010100000010101", 
    48 => "1010111010100101", 49 => "0010010100010111", 50 => "1010110100110110", 
    51 => "0010111101100011" );

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

entity L2_wlo_L1_WEIGHTS1iI is
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

architecture arch of L2_wlo_L1_WEIGHTS1iI is
    component L2_wlo_L1_WEIGHTS1iI_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS1iI_rom_U :  component L2_wlo_L1_WEIGHTS1iI_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


