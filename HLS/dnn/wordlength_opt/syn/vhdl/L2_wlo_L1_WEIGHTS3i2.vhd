-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS3i2_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS3i2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110001110100", 1 => "0010010000011000", 2 => "1001110010110110", 
    3 => "1010100011111010", 4 => "1010010010011000", 5 => "0010111001101010", 
    6 => "0010011101101111", 7 => "1010111010100011", 8 => "0010011101100101", 
    9 => "0010100110110111", 10 => "0010001111010011", 11 => "0010110011011110", 
    12 => "1010110011001011", 13 => "0010110011111101", 14 => "1010111011101111", 
    15 => "1010011010000001", 16 => "0010110001001110", 17 => "0010010011010111", 
    18 => "1010100100010000", 19 => "0010101001100001", 20 => "1010100101100111", 
    21 => "1010110001000110", 22 => "0011000001001011", 23 => "1010100100011101", 
    24 => "1010100110011101", 25 => "1010001111011010", 26 => "0010010010111100", 
    27 => "0010110001101111", 28 => "0010111000001110", 29 => "1010101110011010", 
    30 => "0011000010110111", 31 => "0010111100001000", 32 => "1010110001001000", 
    33 => "1010110101101101", 34 => "0010100100010111", 35 => "1010111101001100", 
    36 => "1010110111101111", 37 => "0001111100111011", 38 => "1011000111100110", 
    39 => "1010100011010111", 40 => "0010101001000010", 41 => "1010111000111000", 
    42 => "1010101010010000", 43 => "1010101011001100", 44 => "1010110010001011", 
    45 => "0010100111101101", 46 => "0001010011101110", 47 => "1010011011111010", 
    48 => "1010101110111011", 49 => "1010110101011011", 50 => "1010011011000111", 
    51 => "0010111000111001" );

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

entity L2_wlo_L1_WEIGHTS3i2 is
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

architecture arch of L2_wlo_L1_WEIGHTS3i2 is
    component L2_wlo_L1_WEIGHTS3i2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS3i2_rom_U :  component L2_wlo_L1_WEIGHTS3i2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


