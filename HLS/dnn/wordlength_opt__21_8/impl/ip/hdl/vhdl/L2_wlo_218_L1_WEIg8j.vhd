-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIg8j_rom is 
    generic(
             DWIDTH     : integer := 13; 
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


architecture rtl of L2_wlo_218_L1_WEIg8j_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000001111111", 1 => "1110000110111", 2 => "1100100010011", 
    3 => "0001011001100", 4 => "0001101001111", 5 => "1011111000110", 
    6 => "1101101001111", 7 => "0001000111100", 8 => "0000001110001", 
    9 => "0000001110010", 10 => "1111010111000", 11 => "1011111100110", 
    12 => "1110111001000", 13 => "0001100001101", 14 => "1101001110110", 
    15 => "1110101000011", 16 => "0000100101101", 17 => "0001111101000", 
    18 => "1110111100000", 19 => "1110110010111", 20 => "0000001001011", 
    21 => "0010010101101", 22 => "1111101011111", 23 => "0010010001011", 
    24 => "0000011100000", 25 => "0000100000000", 26 => "1100001001011", 
    27 => "0000110111000", 28 => "0001111100101", 29 => "0001111010000", 
    30 => "0011110000100", 31 => "0001111100011", 32 => "0000010011011", 
    33 => "1101111001010", 34 => "1111001010001", 35 => "0010100001111", 
    36 => "1111011101111", 37 => "1111010011001", 38 => "1110001011000", 
    39 => "1101100110110", 40 => "0000101000000", 41 => "1111000110100", 
    42 => "1111000000110", 43 => "0000110100011", 44 => "0010001001111", 
    45 => "0001100110011", 46 => "1101101101110", 47 => "1111001110010", 
    48 => "1110101001001", 49 => "0001100111111", 50 => "1111011001111", 
    51 => "0001011010011" );

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

entity L2_wlo_218_L1_WEIg8j is
    generic (
        DataWidth : INTEGER := 13;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIg8j is
    component L2_wlo_218_L1_WEIg8j_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIg8j_rom_U :  component L2_wlo_218_L1_WEIg8j_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


