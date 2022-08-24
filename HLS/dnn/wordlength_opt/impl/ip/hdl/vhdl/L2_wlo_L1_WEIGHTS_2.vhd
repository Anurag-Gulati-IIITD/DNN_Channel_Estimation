-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_2_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110000001100", 1 => "0011001100001100", 2 => "1010101111100110", 
    3 => "1010101111101111", 4 => "0011000101111001", 5 => "1010110101100110", 
    6 => "1010101100001001", 7 => "1010011100100000", 8 => "0010101101101100", 
    9 => "1010111111001001", 10 => "1010010001111100", 11 => "0010111001110011", 
    12 => "1001100001010000", 13 => "1011000101110100", 14 => "1010110001011011", 
    15 => "0011000011110100", 16 => "1010100100001000", 17 => "1010000110001100", 
    18 => "1010001011100000", 19 => "0010100010100001", 20 => "0010110010001101", 
    21 => "1010100110101001", 22 => "1010101110111001", 23 => "1011010001100100", 
    24 => "0010111010001001", 25 => "1010010110111110", 26 => "1010111000010111", 
    27 => "0011010101100111", 28 => "1010011000011101", 29 => "0010110001111101", 
    30 => "0010111100111010", 31 => "1010101000000101", 32 => "1010110100100111", 
    33 => "0001111000011001", 34 => "0010110011000010", 35 => "0011001010101110", 
    36 => "0010110011100110", 37 => "0010100010010110", 38 => "1011010000001001", 
    39 => "1010101000100001", 40 => "0010011101110000", 41 => "1010110010010110", 
    42 => "0010110001000011", 43 => "1011001100100000", 44 => "1010100110011000", 
    45 => "1010101000101011", 46 => "0010011010001100", 47 => "1010101011110000", 
    48 => "0010110001101011", 49 => "0001101111010110", 50 => "1010111111001011", 
    51 => "1010010100110010" );

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

entity L2_wlo_L1_WEIGHTS_2 is
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

architecture arch of L2_wlo_L1_WEIGHTS_2 is
    component L2_wlo_L1_WEIGHTS_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_2_rom_U :  component L2_wlo_L1_WEIGHTS_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


