-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_7_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110001101110", 1 => "1011000010101010", 2 => "1010110001110000", 
    3 => "1010100111001010", 4 => "1010010010101001", 5 => "1010111101011000", 
    6 => "0010100000100100", 7 => "0010100010000010", 8 => "0011000110111001", 
    9 => "1010101000000001", 10 => "0011000000111001", 11 => "0010101100101101", 
    12 => "1010110110011100", 13 => "1010110001000010", 14 => "1010110001100011", 
    15 => "1011001001101100", 16 => "0010110100010111", 17 => "1001111001100110", 
    18 => "0010010100110100", 19 => "1010101101000010", 20 => "0010011010001010", 
    21 => "1010000000010011", 22 => "0001110101011010", 23 => "0011000001101111", 
    24 => "0001101111100100", 25 => "0001110010001011", 26 => "0010111110001011", 
    27 => "0010011101110110", 28 => "1010111001110011", 29 => "0010110111100100", 
    30 => "0010111100001011", 31 => "1010001100001110", 32 => "1010010110011000", 
    33 => "0010010001101111", 34 => "0010010110100010", 35 => "1010101001010101", 
    36 => "0010101111101110", 37 => "1011000000010001", 38 => "1010110110111111", 
    39 => "1010111101100010", 40 => "0010101000010100", 41 => "0010010110010010", 
    42 => "0010000010011100", 43 => "0011000000100101", 44 => "1010101011010110", 
    45 => "0000100111110111", 46 => "0010111011101011", 47 => "1010110100011000", 
    48 => "1010100100101110", 49 => "1010110010100011", 50 => "1011001000001001", 
    51 => "0010110001100000" );

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

entity L2_wlo_L1_WEIGHTS_7 is
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

architecture arch of L2_wlo_L1_WEIGHTS_7 is
    component L2_wlo_L1_WEIGHTS_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_7_rom_U :  component L2_wlo_L1_WEIGHTS_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


