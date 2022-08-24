-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_3_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010110001001101", 1 => "0011010000111100", 2 => "0011001000010001", 
    3 => "1010000001100101", 4 => "0010110001010010", 5 => "0011000110111110", 
    6 => "0010010100010110", 7 => "0010011100110101", 8 => "1010100011011011", 
    9 => "1010110001000010", 10 => "1010101010011101", 11 => "0011001010011000", 
    12 => "0010101010100101", 13 => "1010101010011011", 14 => "0011000110011000", 
    15 => "0010111110000011", 16 => "0001101100111101", 17 => "1011000111110110", 
    18 => "1011000000110001", 19 => "1010000011000001", 20 => "0011000011111100", 
    21 => "1010111110001111", 22 => "1010100110010011", 23 => "1011000011000110", 
    24 => "0010101100101111", 25 => "0010101110100011", 26 => "1010101101100001", 
    27 => "1010000010001111", 28 => "1000100010011111", 29 => "1010111100111000", 
    30 => "1010111100011101", 31 => "1010111000000100", 32 => "1010110001110101", 
    33 => "1010011000110110", 34 => "1010101011011100", 35 => "0010101000001011", 
    36 => "1010110001001011", 37 => "0010011111011100", 38 => "1010110010000110", 
    39 => "0010110100011111", 40 => "1010100000111011", 41 => "1010100001011011", 
    42 => "0010110100111110", 43 => "1010111000011011", 44 => "1010101101010001", 
    45 => "1011000000101111", 46 => "0010000100110100", 47 => "0010011111010001", 
    48 => "0010110111111110", 49 => "1010110100111011", 50 => "0010110000000010", 
    51 => "1011000010111001" );

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

entity L2_wlo_L1_WEIGHTS_3 is
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

architecture arch of L2_wlo_L1_WEIGHTS_3 is
    component L2_wlo_L1_WEIGHTS_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_3_rom_U :  component L2_wlo_L1_WEIGHTS_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


