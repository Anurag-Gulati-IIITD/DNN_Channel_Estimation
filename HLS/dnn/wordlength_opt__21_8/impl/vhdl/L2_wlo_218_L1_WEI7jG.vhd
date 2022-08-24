-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEI7jG_rom is 
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


architecture rtl of L2_wlo_218_L1_WEI7jG_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111110111000", 1 => "0011010010110", 2 => "0100001010100", 
    3 => "1101010111000", 4 => "0000110111001", 5 => "0001101010001", 
    6 => "0010010001001", 7 => "0000001101010", 8 => "1111101011100", 
    9 => "1110110001110", 10 => "1111101011010", 11 => "0011100101010", 
    12 => "0000011100101", 13 => "1100111100010", 14 => "0010001001100", 
    15 => "0001100110100", 16 => "1111100110111", 17 => "1100100100000", 
    18 => "1111000010111", 19 => "1111101111110", 20 => "1111011001000", 
    21 => "1110011000011", 22 => "0000011100101", 23 => "1100101010100", 
    24 => "0000011111110", 25 => "1111001010001", 26 => "0001110001110", 
    27 => "0010101101110", 28 => "1110000100010", 29 => "1101111001110", 
    30 => "1110010010000", 31 => "1111000001000", 32 => "1111010000010", 
    33 => "1111111111000", 34 => "0001110011101", 35 => "0010100000111", 
    36 => "0000110001010", 37 => "1111010001000", 38 => "1101011111111", 
    39 => "0000110110110", 40 => "1111101000101", 41 => "1111001011010", 
    42 => "0001111000011", 43 => "1110101101111", 44 => "1110111010110", 
    45 => "1101111001100", 46 => "0001111101000", 47 => "1110001111101", 
    48 => "0000110000010", 49 => "1110000001010", 50 => "1110101111001", 
    51 => "1110101111111" );

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

entity L2_wlo_218_L1_WEI7jG is
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

architecture arch of L2_wlo_218_L1_WEI7jG is
    component L2_wlo_218_L1_WEI7jG_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEI7jG_rom_U :  component L2_wlo_218_L1_WEI7jG_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


