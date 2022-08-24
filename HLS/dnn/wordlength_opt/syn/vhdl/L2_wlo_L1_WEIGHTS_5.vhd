-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTS_5_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTS_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010010111101000", 1 => "1010111001011010", 2 => "0010111011100110", 
    3 => "0010010100101110", 4 => "1011000000110010", 5 => "0011000100001010", 
    6 => "0010100111001010", 7 => "1010100011000000", 8 => "1010011001001111", 
    9 => "1010101101010000", 10 => "1001110111000010", 11 => "0001110111111100", 
    12 => "0010101101110100", 13 => "0010110001010100", 14 => "0011001010001001", 
    15 => "1011000100110001", 16 => "1010011101010011", 17 => "0001111010011001", 
    18 => "0010011010001111", 19 => "0010111010011110", 20 => "1010011001001101", 
    21 => "1010100100011010", 22 => "1010110110100100", 23 => "0010100001100110", 
    24 => "0010110011110011", 25 => "1010101000110111", 26 => "0010011001001111", 
    27 => "1011010010010011", 28 => "1010011110000001", 29 => "1010111000000011", 
    30 => "1010111110100010", 31 => "1010101010001010", 32 => "0010110111000100", 
    33 => "0010011111011100", 34 => "1010101011011000", 35 => "0011000011001110", 
    36 => "0010100001110100", 37 => "0010001100111011", 38 => "0011001101101111", 
    39 => "0010110010111000", 40 => "0010101101101001", 41 => "0011000000000110", 
    42 => "1001110110010101", 43 => "0011000101000000", 44 => "1010101111000100", 
    45 => "1010011110001100", 46 => "1011000101111010", 47 => "0010001101000100", 
    48 => "0010101111011011", 49 => "1001110000101010", 50 => "0010110010111101", 
    51 => "0010000100001100" );

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

entity L2_wlo_L1_WEIGHTS_5 is
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

architecture arch of L2_wlo_L1_WEIGHTS_5 is
    component L2_wlo_L1_WEIGHTS_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTS_5_rom_U :  component L2_wlo_L1_WEIGHTS_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


