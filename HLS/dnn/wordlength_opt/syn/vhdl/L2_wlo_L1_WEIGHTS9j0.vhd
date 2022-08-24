-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS9j0_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS9j0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010011010111", 1 => "1010111010101100", 2 => "0010111110110010", 
    3 => "1010110101110000", 4 => "1001111110110101", 5 => "0011001010100001", 
    6 => "0010110110110000", 7 => "1010110000010001", 8 => "0010110110000111", 
    9 => "0010011011110001", 10 => "0010110111111011", 11 => "0010100100111001", 
    12 => "1010011011000001", 13 => "0011000001110001", 14 => "1010110100001101", 
    15 => "1010110101010010", 16 => "1010001001010110", 17 => "1010111000010100", 
    18 => "1010001101000110", 19 => "0010110010111110", 20 => "0010010101000010", 
    21 => "1010010111011101", 22 => "0010101010100000", 23 => "0010110000101011", 
    24 => "0010011100110010", 25 => "0010110010011011", 26 => "0011000011110010", 
    27 => "0010111101001001", 28 => "1010001001010010", 29 => "1011001010100101", 
    30 => "0010001100011010", 31 => "1010110010000000", 32 => "0010101000110011", 
    33 => "1001111111111100", 34 => "0010101010010111", 35 => "0010110000011011", 
    36 => "1001100100101001", 37 => "1011000000101100", 38 => "1010111110000100", 
    39 => "1001111011101010", 40 => "1010110000100000", 41 => "0010000110001011", 
    42 => "1010011000110111", 43 => "0011000001111100", 44 => "1010110110010000", 
    45 => "1010110111100111", 46 => "0010111010111110", 47 => "1010101001011010", 
    48 => "1010110000011011", 49 => "1011000111010010", 50 => "1010110110000010", 
    51 => "0010101011111011" );

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

entity L2_wlo_L1_WEIGHTS9j0 is
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

architecture arch of L2_wlo_L1_WEIGHTS9j0 is
    component L2_wlo_L1_WEIGHTS9j0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS9j0_rom_U :  component L2_wlo_L1_WEIGHTS9j0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


