-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEI6jw_rom is 
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


architecture rtl of L2_wlo_218_L1_WEI6jw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000101111110", 1 => "0010100001000", 2 => "0001000110111", 
    3 => "1110010001111", 4 => "0010011010011", 5 => "1110110111111", 
    6 => "0000010011111", 7 => "1111000110011", 8 => "0011011100111", 
    9 => "1111000011001", 10 => "0000000000100", 11 => "1111011001011", 
    12 => "0001110101001", 13 => "1100011000111", 14 => "1111011101110", 
    15 => "0011010001111", 16 => "0000000011110", 17 => "0000001111110", 
    18 => "1111000011000", 19 => "0000111010101", 20 => "0000100000011", 
    21 => "1111011100010", 22 => "0000100000111", 23 => "1101110011000", 
    24 => "0000100000110", 25 => "1111111001110", 26 => "0000111001111", 
    27 => "0100000111100", 28 => "1110011101111", 29 => "0000110110010", 
    30 => "1111110101000", 31 => "1110110001101", 32 => "1101100001100", 
    33 => "0001011110110", 34 => "0000110000001", 35 => "0011100110100", 
    36 => "0000110000110", 37 => "1111011010110", 38 => "1001111001000", 
    39 => "0000100111100", 40 => "0000001011111", 41 => "1111011001100", 
    42 => "0001010100001", 43 => "1101010000110", 44 => "1111100011000", 
    45 => "0000011100100", 46 => "0000001010101", 47 => "1111011010011", 
    48 => "0001000100100", 49 => "1111100011100", 50 => "1101111101000", 
    51 => "1111111011000" );

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

entity L2_wlo_218_L1_WEI6jw is
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

architecture arch of L2_wlo_218_L1_WEI6jw is
    component L2_wlo_218_L1_WEI6jw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEI6jw_rom_U :  component L2_wlo_218_L1_WEI6jw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


