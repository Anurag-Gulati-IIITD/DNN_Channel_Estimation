-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIpcA_rom is 
    generic(
             DWIDTH     : integer := 12; 
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


architecture rtl of L2_wlo_218_L1_WEIpcA_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000111010100", 1 => "000010010101", 2 => "000101001101", 
    3 => "110111000011", 4 => "111110010000", 5 => "010100111100", 
    6 => "000101101000", 7 => "101110101100", 8 => "111010111001", 
    9 => "000111111111", 10 => "111000111110", 11 => "001010111001", 
    12 => "110101101010", 13 => "011000100100", 14 => "110011110100", 
    15 => "000110010111", 16 => "001001101110", 17 => "111101110110", 
    18 => "000001100111", 19 => "000100111101", 20 => "111111100011", 
    21 => "111011001101", 22 => "010111010001", 23 => "111011100011", 
    24 => "111001110010", 25 => "000010010011", 26 => "111100100111", 
    27 => "000101111001", 28 => "010001010110", 29 => "101001101110", 
    30 => "011001010001", 31 => "001001000000", 32 => "110111100000", 
    33 => "110010001011", 34 => "000110110010", 35 => "100111001101", 
    36 => "110110101101", 37 => "001101010100", 38 => "101101101101", 
    39 => "111001111001", 40 => "000110011101", 41 => "111111111111", 
    42 => "110100111010", 43 => "111111111101", 44 => "000011000001", 
    45 => "000111001110", 46 => "001100001001", 47 => "000000010101", 
    48 => "110110100011", 49 => "111001011110", 50 => "000001010010", 
    51 => "001000001000" );

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

entity L2_wlo_218_L1_WEIpcA is
    generic (
        DataWidth : INTEGER := 12;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_218_L1_WEIpcA is
    component L2_wlo_218_L1_WEIpcA_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIpcA_rom_U :  component L2_wlo_218_L1_WEIpcA_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


