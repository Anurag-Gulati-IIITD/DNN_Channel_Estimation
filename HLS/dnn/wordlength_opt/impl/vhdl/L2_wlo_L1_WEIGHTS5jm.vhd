-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS5jm_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS5jm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010101001001100", 1 => "0010111000001101", 2 => "0000010111000100", 
    3 => "0011000110000000", 4 => "1010110001110101", 5 => "0010000101111010", 
    6 => "1011000101111100", 7 => "1010110100000100", 8 => "1011001011010110", 
    9 => "0010001110001000", 10 => "1011000001100010", 11 => "1010000100110101", 
    12 => "0010110110010011", 13 => "0011000110011110", 14 => "1010010101011010", 
    15 => "0011000111000010", 16 => "0010000111100100", 17 => "0010101011101011", 
    18 => "0010010010001110", 19 => "0010011000111000", 20 => "0010100000011001", 
    21 => "0010110100001010", 22 => "0010101010000000", 23 => "1011001010011110", 
    24 => "1010101010110100", 25 => "1010010011001000", 26 => "1011001000100011", 
    27 => "1010110110010000", 28 => "0010101000011001", 29 => "1010000100100101", 
    30 => "1010101001010111", 31 => "0010000001110010", 32 => "0010101000001011", 
    33 => "1001101100000010", 34 => "1011000111101010", 35 => "1010011011111101", 
    36 => "0010101010110010", 37 => "0011000111100110", 38 => "0010111011010101", 
    39 => "0010010001000100", 40 => "0010011111011001", 41 => "0010001110001111", 
    42 => "1010110001010001", 43 => "1011000101010010", 44 => "0010111001100000", 
    45 => "0010000101010011", 46 => "1010111000101000", 47 => "0001110010001010", 
    48 => "1010100110010011", 49 => "0011001001110010", 50 => "0011010000110101", 
    51 => "1010001111001000" );

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

entity L2_wlo_L1_WEIGHTS5jm is
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

architecture arch of L2_wlo_L1_WEIGHTS5jm is
    component L2_wlo_L1_WEIGHTS5jm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS5jm_rom_U :  component L2_wlo_L1_WEIGHTS5jm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


