-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_BIAS_rom is 
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


architecture rtl of L2_wlo_L1_BIAS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1011010000011111", 1 => "0010000110011100", 2 => "1011011011010101", 
    3 => "1011100101100110", 4 => "1001101000111111", 5 => "1011010110101110", 
    6 => "1010010010000011", 7 => "0010100110111011", 8 => "1010000111100000", 
    9 => "1010000101110011", 10 => "0010110000100010", 11 => "0011101010000001", 
    12 => "0010010001110111", 13 => "0011100001100011", 14 => "0001111011101011", 
    15 => "1010101011100000", 16 => "1010011010110010", 17 => "1011011110111001", 
    18 => "1010111110000010", 19 => "1011010000100100", 20 => "1011010100100011", 
    21 => "1011011011100000", 22 => "1010100111010011", 23 => "1010000110001101", 
    24 => "1011001100001011", 25 => "1010110010001110", 26 => "0010111101000111", 
    27 => "1010000000011100", 28 => "1011010011000010", 29 => "0011010011100010", 
    30 => "1001111011001111", 31 => "1010010100111011", 32 => "1001100011110000", 
    33 => "1011010100011110", 34 => "1010100000011111", 35 => "0011011101001101", 
    36 => "1011001010110000", 37 => "1010110000011111", 38 => "0001111110111111", 
    39 => "0010011010110011", 40 => "1011010000010100", 41 => "0001111000000001", 
    42 => "0010000110001101", 43 => "0010101100100010", 44 => "1011000110001010", 
    45 => "0010100000010010", 46 => "1011100101011000", 47 => "1011011011010010", 
    48 => "1010100000010100", 49 => "0010100010001010", 50 => "0010000110110101", 
    51 => "1010010111101001" );

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

entity L2_wlo_L1_BIAS is
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

architecture arch of L2_wlo_L1_BIAS is
    component L2_wlo_L1_BIAS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_BIAS_rom_U :  component L2_wlo_L1_BIAS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


