-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_1_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010110001101001", 1 => "0010101001001000", 2 => "0010001100111100", 
    3 => "1010111010110000", 4 => "0011000011001010", 5 => "1011001010000010", 
    6 => "0001010000001111", 7 => "1010100101000101", 8 => "0011000001101111", 
    9 => "1010100111010111", 10 => "0001110011110010", 11 => "1011000001110000", 
    12 => "1010110011001110", 13 => "1011000010101110", 14 => "1011000111111011", 
    15 => "0010111000001000", 16 => "0010011110001111", 17 => "0010111010011110", 
    18 => "1010101010111011", 19 => "0010101001101100", 20 => "0000101010101111", 
    21 => "0010100110100101", 22 => "1010100001111001", 23 => "1010001101110100", 
    24 => "0010101111011000", 25 => "0010100100000110", 26 => "1011000001001110", 
    27 => "0011010101111110", 28 => "0010010110010010", 29 => "0011001010111001", 
    30 => "0011000101111010", 31 => "0010101001111010", 32 => "1010111100101101", 
    33 => "1010100100111010", 34 => "0010101111011001", 35 => "0011001010110000", 
    36 => "1010100011001000", 37 => "0010101101011100", 38 => "1011010100110010", 
    39 => "1011000010001110", 40 => "0010010011110001", 41 => "1010111111100001", 
    42 => "0010111111001010", 43 => "1010110011100100", 44 => "1010100011101110", 
    45 => "1010100110000011", 46 => "0010110100101000", 47 => "0001011110111011", 
    48 => "1010101010111111", 49 => "1010011100001000", 50 => "1011000001000111", 
    51 => "0010101001110101" );

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

entity L2_wlo_L1_WEIGHTS_1 is
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

architecture arch of L2_wlo_L1_WEIGHTS_1 is
    component L2_wlo_L1_WEIGHTS_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_1_rom_U :  component L2_wlo_L1_WEIGHTS_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


