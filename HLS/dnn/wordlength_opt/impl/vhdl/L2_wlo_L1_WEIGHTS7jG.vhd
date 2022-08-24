-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS7jG_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS7jG_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1001110110001100", 1 => "0010001111100001", 2 => "1010100110101011", 
    3 => "0010010111111100", 4 => "0001110010100100", 5 => "1011000101011011", 
    6 => "0010101001101001", 7 => "0010110010001100", 8 => "0010100101000011", 
    9 => "1011000010100110", 10 => "1010011100000100", 11 => "1010110000001000", 
    12 => "0011000000010111", 13 => "1010111000111010", 14 => "0010110010010001", 
    15 => "1010101000101111", 16 => "0010110010011110", 17 => "0010100111010101", 
    18 => "1010110101011101", 19 => "1010011001000101", 20 => "0010100111110000", 
    21 => "1010101001111100", 22 => "1011000100110110", 23 => "0010001100101001", 
    24 => "0011000000010000", 25 => "0010100110000011", 26 => "1010110101110100", 
    27 => "1001100000111011", 28 => "0001101000001100", 29 => "0011000110010000", 
    30 => "1010110101111001", 31 => "1010100000001101", 32 => "1010110101110110", 
    33 => "0010001110001001", 34 => "0010110111001010", 35 => "0011000011001100", 
    36 => "1001111100011100", 37 => "0010010011011011", 38 => "0010110100100100", 
    39 => "0001111001011010", 40 => "1010100000110010", 41 => "1010110011001000", 
    42 => "0010100011100100", 43 => "0010111110001111", 44 => "1010110110011011", 
    45 => "1010001110010100", 46 => "1010110100101011", 47 => "1010001101001101", 
    48 => "0010100000011000", 49 => "0010001000010001", 50 => "1010100111111001", 
    51 => "1010111101010000" );

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

entity L2_wlo_L1_WEIGHTS7jG is
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

architecture arch of L2_wlo_L1_WEIGHTS7jG is
    component L2_wlo_L1_WEIGHTS7jG_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS7jG_rom_U :  component L2_wlo_L1_WEIGHTS7jG_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


