-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbUr_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbUr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111010011101", 1 => "0000101011110", 2 => "1110100100101", 
    3 => "1111011111100", 4 => "1011011001010", 5 => "1100011111110", 
    6 => "1111110101111", 7 => "0000000100100", 8 => "0001011001110", 
    9 => "1010100001010", 10 => "0000011011100", 11 => "0011010010000", 
    12 => "0000100011010", 13 => "1101100110000", 14 => "1111100111000", 
    15 => "0001110001001", 16 => "1111000001110", 17 => "0000100101111", 
    18 => "0000100010110", 19 => "1101001100001", 20 => "0000100001011", 
    21 => "0000101110001", 22 => "0001000001011", 23 => "1110010011100", 
    24 => "1110100001001", 25 => "0000000110011", 26 => "0000100100100", 
    27 => "1111111110111", 28 => "1101001110010", 29 => "0010110110011", 
    30 => "0001110011000", 31 => "1111111110011", 32 => "0001111011111", 
    33 => "0011110110011", 34 => "1111101001110", 35 => "1111011011100", 
    36 => "1111001010111", 37 => "1111111110110", 38 => "0000011011011", 
    39 => "0001010010101", 40 => "0001001001010", 41 => "0010000001011", 
    42 => "0010001101100", 43 => "1101100100000", 44 => "0000110010110", 
    45 => "0000111110100", 46 => "0001101101110", 47 => "0000011000000", 
    48 => "1111000110100", 49 => "0000111101110", 50 => "1111000000010", 
    51 => "1110010000111" );

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

entity L2_wlo_218_L1_WEIbUr is
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

architecture arch of L2_wlo_218_L1_WEIbUr is
    component L2_wlo_218_L1_WEIbUr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbUr_rom_U :  component L2_wlo_218_L1_WEIbUr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


