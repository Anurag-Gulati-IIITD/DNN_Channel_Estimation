-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbvn_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbvn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000011011101", 1 => "1110011111010", 2 => "0001010110000", 
    3 => "1111100010001", 4 => "0010000100101", 5 => "0101001011001", 
    6 => "0000011111010", 7 => "0000000101111", 8 => "0011000011111", 
    9 => "0000111100111", 10 => "1101001010011", 11 => "1111111111001", 
    12 => "1111001110011", 13 => "0000101011111", 14 => "0000011001111", 
    15 => "1111010001011", 16 => "0001001000101", 17 => "1111100001001", 
    18 => "1111111010010", 19 => "0000000001010", 20 => "1110110011110", 
    21 => "1111111100111", 22 => "0000000000001", 23 => "0001110001100", 
    24 => "1111101010011", 25 => "1111001001100", 26 => "0001110100010", 
    27 => "1111000011101", 28 => "1111110101011", 29 => "1011111000100", 
    30 => "0000101100111", 31 => "0001011010011", 32 => "1110101100110", 
    33 => "0000100110111", 34 => "0000110101001", 35 => "0000010000111", 
    36 => "1111010011100", 37 => "0011001001101", 38 => "0010001000100", 
    39 => "1110010000010", 40 => "1111000011011", 41 => "1111011111100", 
    42 => "1111101110001", 43 => "0000101111010", 44 => "1111001101011", 
    45 => "1111001100010", 46 => "0001100010010", 47 => "1111001110001", 
    48 => "0000100011001", 49 => "1101101110111", 50 => "1110001001101", 
    51 => "1111110111001" );

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

entity L2_wlo_218_L1_WEIbvn is
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

architecture arch of L2_wlo_218_L1_WEIbvn is
    component L2_wlo_218_L1_WEIbvn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbvn_rom_U :  component L2_wlo_218_L1_WEIbvn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


