-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_BIAfYi_rom is 
    generic(
             DWIDTH     : integer := 14; 
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


architecture rtl of L2_wlo_218_L1_BIAfYi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011111000001", 1 => "00000001011001", 2 => "11001001010101", 
    3 => "10101001101000", 4 => "11111111100111", 5 => "11010010100100", 
    6 => "11111101101111", 7 => "00000101101110", 8 => "11111110100010", 
    9 => "11111110101000", 10 => "00001000010000", 11 => "01101000000100", 
    12 => "00000010001110", 13 => "01000110001100", 14 => "00000000110111", 
    15 => "11111001001000", 16 => "11111100101001", 17 => "11000010001110", 
    18 => "11110000111110", 19 => "11011110110111", 20 => "11010110111010", 
    21 => "11001001000000", 22 => "11111010001011", 23 => "11111110100111", 
    24 => "11100011110100", 25 => "11110110111001", 26 => "00001110100011", 
    27 => "11111110111110", 28 => "11011001111011", 29 => "00100111000100", 
    30 => "11111111001001", 31 => "11111101011000", 32 => "11111111101100", 
    33 => "11010111000100", 34 => "11111011111000", 35 => "00111010011001", 
    36 => "11100101001111", 37 => "11110111110000", 38 => "00000000111101", 
    39 => "00000011010110", 40 => "11011111011000", 41 => "00000000110000", 
    42 => "00000001011000", 43 => "00000111001000", 44 => "11101001110110", 
    45 => "00000100000100", 46 => "10101010100000", 47 => "11001001011011", 
    48 => "11111011111011", 49 => "00000100100010", 50 => "00000001011011", 
    51 => "11111101000010" );

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

entity L2_wlo_218_L1_BIAfYi is
    generic (
        DataWidth : INTEGER := 14;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_BIAfYi is
    component L2_wlo_218_L1_BIAfYi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_BIAfYi_rom_U :  component L2_wlo_218_L1_BIAfYi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


