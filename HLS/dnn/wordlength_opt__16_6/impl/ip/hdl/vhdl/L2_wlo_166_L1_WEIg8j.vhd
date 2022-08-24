-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIg8j_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L2_wlo_166_L1_WEIg8j_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000001111", 1 => "1110000110", 2 => "1100100010", 3 => "0001011001", 
    4 => "0001101001", 5 => "1011111000", 6 => "1101101001", 7 => "0001000111", 
    8 to 9=> "0000001110", 10 => "1111010111", 11 => "1011111100", 12 => "1110111001", 
    13 => "0001100001", 14 => "1101001110", 15 => "1110101000", 16 => "0000100101", 
    17 => "0001111101", 18 => "1110111100", 19 => "1110110010", 20 => "0000001001", 
    21 => "0010010101", 22 => "1111101011", 23 => "0010010001", 24 => "0000011100", 
    25 => "0000100000", 26 => "1100001001", 27 => "0000110111", 28 => "0001111100", 
    29 => "0001111010", 30 => "0011110000", 31 => "0001111100", 32 => "0000010011", 
    33 => "1101111001", 34 => "1111001010", 35 => "0010100001", 36 => "1111011101", 
    37 => "1111010011", 38 => "1110001011", 39 => "1101100110", 40 => "0000101000", 
    41 => "1111000110", 42 => "1111000000", 43 => "0000110100", 44 => "0010001001", 
    45 => "0001100110", 46 => "1101101101", 47 => "1111001110", 48 => "1110101001", 
    49 => "0001100111", 50 => "1111011001", 51 => "0001011010" );

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

entity L2_wlo_166_L1_WEIg8j is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIg8j is
    component L2_wlo_166_L1_WEIg8j_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIg8j_rom_U :  component L2_wlo_166_L1_WEIg8j_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


