-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_BIAfYi_rom is 
    generic(
             DWIDTH     : integer := 11; 
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


architecture rtl of L2_wlo_166_L1_BIAfYi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11011111000", 1 => "00000001011", 2 => "11001001010", 
    3 => "10101001101", 4 => "11111111100", 5 => "11010010100", 
    6 => "11111101101", 7 => "00000101101", 8 => "11111110100", 
    9 => "11111110101", 10 => "00001000010", 11 => "01101000000", 
    12 => "00000010001", 13 => "01000110001", 14 => "00000000110", 
    15 => "11111001001", 16 => "11111100101", 17 => "11000010001", 
    18 => "11110000111", 19 => "11011110110", 20 => "11010110111", 
    21 => "11001001000", 22 => "11111010001", 23 => "11111110100", 
    24 => "11100011110", 25 => "11110110111", 26 => "00001110100", 
    27 => "11111110111", 28 => "11011001111", 29 => "00100111000", 
    30 => "11111111001", 31 => "11111101011", 32 => "11111111101", 
    33 => "11010111000", 34 => "11111011111", 35 => "00111010011", 
    36 => "11100101001", 37 => "11110111110", 38 => "00000000111", 
    39 => "00000011010", 40 => "11011111011", 41 => "00000000110", 
    42 => "00000001011", 43 => "00000111001", 44 => "11101001110", 
    45 => "00000100000", 46 => "10101010100", 47 => "11001001011", 
    48 => "11111011111", 49 => "00000100100", 50 => "00000001011", 
    51 => "11111101000" );

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

entity L2_wlo_166_L1_BIAfYi is
    generic (
        DataWidth : INTEGER := 11;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_BIAfYi is
    component L2_wlo_166_L1_BIAfYi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_BIAfYi_rom_U :  component L2_wlo_166_L1_BIAfYi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


