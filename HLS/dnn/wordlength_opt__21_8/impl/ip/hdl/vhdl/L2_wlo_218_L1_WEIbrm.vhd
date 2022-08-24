-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_218_L1_WEIbrm_rom is 
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


architecture rtl of L2_wlo_218_L1_WEIbrm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000001001111", 1 => "0001101101011", 2 => "1111011010101", 
    3 => "0000101100010", 4 => "1110000001101", 5 => "1111111110100", 
    6 => "1110101010100", 7 => "1111110110110", 8 => "1101001101011", 
    9 => "0000010010011", 10 => "0001100011110", 11 => "1111111110110", 
    12 => "0001001110101", 13 => "0000000101111", 14 => "0001010101100", 
    15 => "0000110010001", 16 => "1111000011010", 17 => "1111111010100", 
    18 => "1111000110101", 19 => "0001000110110", 20 => "0000001111000", 
    21 => "1111110110000", 22 => "0010001010011", 23 => "1111011101000", 
    24 => "0000010101110", 25 => "1111100101111", 26 => "1101100011000", 
    27 => "0100000000111", 28 => "0000011011011", 29 => "0000100001100", 
    30 => "0001000110000", 31 => "1110111001011", 32 => "0000001111010", 
    33 => "0000001111000", 34 => "1101110101001", 35 => "0001110101001", 
    36 => "1111001100011", 37 => "1100011001001", 38 => "1110000101100", 
    39 => "1111100000011", 40 => "0000001101101", 41 => "0001000011011", 
    42 => "0000111011011", 43 => "1110011110110", 44 => "0001110110000", 
    45 => "0000100111110", 46 => "1111000111001", 47 => "1111110110001", 
    48 => "1110100011001", 49 => "0010010011011", 50 => "0001101011010", 
    51 => "1101100111100" );

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

entity L2_wlo_218_L1_WEIbrm is
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

architecture arch of L2_wlo_218_L1_WEIbrm is
    component L2_wlo_218_L1_WEIbrm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_218_L1_WEIbrm_rom_U :  component L2_wlo_218_L1_WEIbrm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


