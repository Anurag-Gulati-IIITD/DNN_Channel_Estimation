-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEI5jm_rom is 
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


architecture rtl of L2_wlo_218_L1_WEI5jm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1110010101010", 1 => "0010011100101", 2 => "1101011011011", 
    3 => "1110101011011", 4 => "1110001011111", 5 => "1101001001110", 
    6 => "0001011001111", 7 => "0000111111000", 8 => "0001000000100", 
    9 => "1100010111100", 10 => "0001011001011", 11 => "1111101011110", 
    12 => "0001110001000", 13 => "1100001111111", 14 => "1101100110010", 
    15 => "0011001111101", 16 => "1110011000111", 17 => "0001110011110", 
    18 => "0000101100111", 19 => "1101110100001", 20 => "1110010111100", 
    21 => "0001011110000", 22 => "1111011110111", 23 => "1101010110011", 
    24 => "1111100101110", 25 => "1111100110000", 26 => "0101001100101", 
    27 => "0001011010001", 28 => "1100101000001", 29 => "0001001010111", 
    30 => "0010011000110", 31 => "1101000111110", 32 => "0010001110000", 
    33 => "0010010011110", 34 => "0000110100111", 35 => "1111111010000", 
    36 => "0000000001101", 37 => "1111000110010", 38 => "1111110011000", 
    39 => "0100111101101", 40 => "0000100111010", 41 => "0001111111011", 
    42 => "0100100101110", 43 => "1100010000111", 44 => "1111010000110", 
    45 => "0001110010111", 46 => "0000001000010", 47 => "1110111010101", 
    48 => "0000001011101", 49 => "1111011110101", 50 => "1111001110101", 
    51 => "1100101110101" );

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

entity L2_wlo_218_L1_WEI5jm is
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

architecture arch of L2_wlo_218_L1_WEI5jm is
    component L2_wlo_218_L1_WEI5jm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEI5jm_rom_U :  component L2_wlo_218_L1_WEI5jm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


