-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_0_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010000000000", 1 => "1010111110010001", 2 => "1011001011101100", 
    3 => "0010110110011010", 4 => "0010111010011110", 5 => "1011010000011101", 
    6 => "1011000010110001", 7 => "0010110001111001", 8 => "0010001100010011", 
    9 => "0010001100110000", 10 => "1010100100011111", 11 => "1011010000001101", 
    12 => "1010110001110000", 13 => "0010111000011100", 14 => "1011000110001010", 
    15 => "1010110101111000", 16 => "0010100010110111", 17 => "0010111111010001", 
    18 => "1010110000111111", 19 => "1010110011010000", 20 => "0010000010111101", 
    21 => "0011000010101101", 22 => "1010010100001000", 23 => "0011000010001100", 
    24 => "0010011100000111", 25 => "0010100000000011", 26 => "1011001110110100", 
    27 => "0010101011100011", 28 => "0010111111001011", 29 => "0010111110100001", 
    30 => "0011001110000100", 31 => "0010111111001000", 32 => "0010010011011111", 
    33 => "1011000000110101", 34 => "1010101010111100", 35 => "0011000100001111", 
    36 => "1010100001000001", 37 => "1010100110011001", 38 => "1010111101001110", 
    39 => "1011000011001010", 40 => "0010100100000000", 41 => "1010101100101101", 
    42 => "1010101111100110", 43 => "0010101010001111", 44 => "0011000001010000", 
    45 => "0010111001100111", 46 => "1011000010010010", 47 => "1010101000110101", 
    48 => "1010110101101110", 49 => "0010111010000000", 50 => "1010100011000001", 
    51 => "0010110110100111" );

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

entity L2_wlo_L1_WEIGHTS_0 is
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

architecture arch of L2_wlo_L1_WEIGHTS_0 is
    component L2_wlo_L1_WEIGHTS_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_0_rom_U :  component L2_wlo_L1_WEIGHTS_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


