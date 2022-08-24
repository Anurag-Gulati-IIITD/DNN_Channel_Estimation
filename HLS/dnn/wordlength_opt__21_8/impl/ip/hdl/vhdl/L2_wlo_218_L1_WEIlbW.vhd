-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIlbW_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIlbW_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000010111101", 1 => "1110011010011", 2 => "0001101110010", 
    3 => "0000010100101", 4 => "1101111001110", 5 => "0010100001001", 
    6 => "0000101110010", 7 => "1111011001111", 8 => "1111100110110", 
    9 => "1111000101011", 10 => "1111111010001", 11 => "0000000101111", 
    12 => "0000111011100", 13 => "0001000101010", 14 => "0011010001000", 
    15 => "1101011001110", 16 => "1111100010101", 17 => "0000000110100", 
    18 => "0000011010001", 19 => "0001101001111", 20 => "1111100110110", 
    21 => "1111010111001", 22 => "1110100101101", 23 => "0000100011001", 
    24 => "0001001111001", 25 => "1111001110010", 26 => "0000011001001", 
    27 => "1011011011010", 28 => "1111100001111", 29 => "1110011111110", 
    30 => "1110000101110", 31 => "1111001011101", 32 => "0001011100001", 
    33 => "0000011111011", 34 => "1111001001001", 35 => "0010011001101", 
    36 => "0000100011100", 37 => "0000001110011", 38 => "0011101101111", 
    39 => "0001001011100", 40 => "0000111011010", 41 => "0010000000101", 
    42 => "1111111010011", 43 => "0010101000000", 44 => "1111000001110", 
    45 => "1111100001110", 46 => "1101010000101", 47 => "0000001110100", 
    48 => "0000111110110", 49 => "1111111011110", 50 => "0001001011110", 
    51 => "0000001010000" );

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

entity L2_wlo_218_L1_WEIlbW is
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

architecture arch of L2_wlo_218_L1_WEIlbW is
    component L2_wlo_218_L1_WEIlbW_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIlbW_rom_U :  component L2_wlo_218_L1_WEIlbW_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


