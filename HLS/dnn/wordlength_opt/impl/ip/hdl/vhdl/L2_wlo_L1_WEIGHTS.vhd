-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010111010000101", 1 => "1010111101101110", 2 => "1010100011110100", 
    3 => "1010100101101010", 4 => "1011010000111001", 5 => "1011000100101100", 
    6 => "1010110001011011", 7 => "1010101100010110", 8 => "0010110111001101", 
    9 => "1010111110101110", 10 => "0010101011101111", 11 => "0011011001110001", 
    12 => "1010110111001010", 13 => "1010111001011110", 14 => "0011000000100100", 
    15 => "1010110110100011", 16 => "0010000110110100", 17 => "0010010011110010", 
    18 => "0001110110101110", 19 => "0001011000010110", 20 => "0010010100000011", 
    21 => "0010101111000100", 22 => "0010111100011110", 23 => "0001100101010111", 
    24 => "1011000001110100", 25 => "1010110001010010", 26 => "1010111000000111", 
    27 => "1010100111101000", 28 => "0010000000110100", 29 => "0011001000110010", 
    30 => "1011001010010110", 31 => "0010100001011000", 32 => "0011001101001111", 
    33 => "0010101100000000", 34 => "1001101110100100", 35 => "1011000100111010", 
    36 => "1010100111010011", 37 => "1010111011101000", 38 => "0010101110110110", 
    39 => "1011000100100010", 40 => "0001111110100010", 41 => "0011001100110111", 
    42 => "0011000100001001", 43 => "0010110000111100", 44 => "0010101110111101", 
    45 => "0010110011001111", 46 => "0001111000001000", 47 => "1010101100010001", 
    48 => "1010111100111111", 49 => "0010100000010100", 50 => "1011000010111110", 
    51 => "0010110111001111" );

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

entity L2_wlo_L1_WEIGHTS is
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

architecture arch of L2_wlo_L1_WEIGHTS is
    component L2_wlo_L1_WEIGHTS_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_rom_U :  component L2_wlo_L1_WEIGHTS_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


