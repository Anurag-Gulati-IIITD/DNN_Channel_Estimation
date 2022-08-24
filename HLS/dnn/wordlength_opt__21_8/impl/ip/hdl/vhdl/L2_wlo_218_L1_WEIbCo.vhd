-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbCo_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbCo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000100101011", 1 => "1110001110000", 2 => "0000110000010", 
    3 => "0011000101100", 4 => "1110110000111", 5 => "0000111010000", 
    6 => "0000110110110", 7 => "0000010101110", 8 => "0000110000000", 
    9 => "0000101000101", 10 => "0000000110010", 11 => "0000100001010", 
    12 => "1111110101110", 13 => "1111110100011", 14 => "0000111001001", 
    15 => "0100001110000", 16 => "1110011011100", 17 => "1111000101111", 
    18 => "1110101110100", 19 => "1110110111001", 20 => "1111001101100", 
    21 => "0000010011001", 22 => "0000000110011", 23 => "0001000101011", 
    24 => "0001101100010", 25 => "0000011011111", 26 => "1111101101110", 
    27 => "0000000001100", 28 => "1111100100010", 29 => "1111101000111", 
    30 => "1111000001101", 31 => "0000010011100", 32 => "0001010111001", 
    33 => "0000101011001", 34 => "0000110101100", 35 => "0001000000110", 
    36 => "0001011100101", 37 => "1111010011010", 38 => "1111101110011", 
    39 => "1110110100011", 40 => "1111011110000", 41 => "0001100100101", 
    42 => "1111111110011", 43 => "1100010010100", 44 => "0000011000000", 
    45 => "1111101010000", 46 => "1110010101011", 47 => "1111110011000", 
    48 => "0000110110100", 49 => "0000000111000", 50 => "1110111110100", 
    51 => "1111101001110" );

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

entity L2_wlo_218_L1_WEIbCo is
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

architecture arch of L2_wlo_218_L1_WEIbCo is
    component L2_wlo_218_L1_WEIbCo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbCo_rom_U :  component L2_wlo_218_L1_WEIbCo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


