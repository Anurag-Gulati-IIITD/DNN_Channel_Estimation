-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbDo_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbDo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111111110000", 1 => "1110111110101", 2 => "1111111000101", 
    3 => "0000010011000", 4 => "0001001001101", 5 => "1110011101000", 
    6 => "1111111110101", 7 => "1111111101010", 8 => "1111111101101", 
    9 => "1110000111011", 10 => "0011000010011", 11 => "1101110111111", 
    12 => "1111011010010", 13 => "1110001000011", 14 => "0100001010010", 
    15 => "0001110010000", 16 => "1111101101001", 17 => "1110001111010", 
    18 => "1110111001101", 19 => "0000110101110", 20 => "0000010110001", 
    21 => "0000100010100", 22 => "1110100100010", 23 => "0010101101101", 
    24 => "0000000001010", 25 => "0000001011100", 26 => "1111001110100", 
    27 => "0001010100101", 28 => "1110110011001", 29 => "1111100111011", 
    30 => "1101010101111", 31 => "0001100100001", 32 => "1110101110110", 
    33 => "0000000000100", 34 => "0010001111010", 35 => "0011001011110", 
    36 => "0000001110000", 37 => "1110000101001", 38 => "0000010111100", 
    39 => "1110101001100", 40 => "1111100100000", 41 => "0000001010111", 
    42 => "0001011110000", 43 => "1110011110000", 44 => "1111010110011", 
    45 => "0000100011010", 46 => "0000001011110", 47 => "0000101001000", 
    48 => "1111101101110", 49 => "1101111100011", 50 => "0001111101111", 
    51 => "0010011011010" );

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

entity L2_wlo_218_L1_WEIbDo is
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

architecture arch of L2_wlo_218_L1_WEIbDo is
    component L2_wlo_218_L1_WEIbDo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbDo_rom_U :  component L2_wlo_218_L1_WEIbDo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


