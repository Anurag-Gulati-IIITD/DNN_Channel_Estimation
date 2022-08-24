-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbGp_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbGp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "111111010010", 1 => "010001010001", 2 => "111101111111", 
    3 => "110101111100", 4 => "111100010010", 5 => "001011010000", 
    6 => "000110001001", 7 => "110000100000", 8 => "000110101000", 
    9 => "110111001100", 10 => "110011001011", 11 => "111101100001", 
    12 => "000111011000", 13 => "001011101000", 14 => "110011110000", 
    15 => "100100100010", 16 => "000000110100", 17 => "111111000010", 
    18 => "111001110111", 19 => "111011101011", 20 => "110010001110", 
    21 => "000101001100", 22 => "001001111101", 23 => "101011110100", 
    24 => "000011110011", 25 => "111101111011", 26 => "010101010001", 
    27 => "111010001011", 28 => "111110011001", 29 => "110001110000", 
    30 => "001011110101", 31 => "111001001101", 32 => "000011101000", 
    33 => "111110110110", 34 => "111010100100", 35 => "000000010100", 
    36 => "110011001010", 37 => "001010011100", 38 => "000110011110", 
    39 => "000110101100", 40 => "111100111001", 41 => "110111100110", 
    42 => "000110111100", 43 => "011100100110", 44 => "111100001001", 
    45 => "111101011011", 46 => "111010011101", 47 => "111101010101", 
    48 => "000001010011", 49 => "000000011010", 50 => "111011001110", 
    51 => "111111000000" );

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

entity L2_wlo_218_L1_WEIbGp is
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

architecture arch of L2_wlo_218_L1_WEIbGp is
    component L2_wlo_218_L1_WEIbGp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbGp_rom_U :  component L2_wlo_218_L1_WEIbGp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


