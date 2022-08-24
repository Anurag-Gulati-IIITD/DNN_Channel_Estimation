-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbRq_rom is 
    generic(
             DWIDTH     : integer := 10; 
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


architecture rtl of L2_wlo_166_L1_WEIbRq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1111100110", 1 => "0000000001", 2 => "1111101001", 3 => "1110110001", 
    4 => "0100001101", 5 => "0001010101", 6 => "0000001001", 7 => "0001110011", 
    8 => "1110011001", 9 => "0010101100", 10 => "0000110001", 11 => "1111100110", 
    12 => "0000110101", 13 => "0001110100", 14 => "1111010100", 15 => "0001010100", 
    16 => "0001001100", 17 => "0000111110", 18 => "1111000000", 19 => "1110110100", 
    20 => "0000000000", 21 => "1111001010", 22 => "1110110101", 23 => "1110110001", 
    24 => "1111110100", 25 => "1111111111", 26 => "0001001001", 27 => "0000110000", 
    28 => "0001010100", 29 => "1110011111", 30 => "1111111101", 31 => "0000010011", 
    32 => "1110001010", 33 => "1110011011", 34 => "0010010111", 35 => "0000001000", 
    36 => "0000100111", 37 => "1111110010", 38 => "1111111001", 39 => "0001110011", 
    40 => "1111100000", 41 => "1011000000", 42 => "1101000010", 43 => "1110101110", 
    44 => "0000001100", 45 => "1110111110", 46 => "0001110101", 47 => "1111101001", 
    48 => "0001110001", 49 => "1111010011", 50 => "0010011101", 51 => "1111011001" );

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

entity L2_wlo_166_L1_WEIbRq is
    generic (
        DataWidth : INTEGER := 10;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_166_L1_WEIbRq is
    component L2_wlo_166_L1_WEIbRq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbRq_rom_U :  component L2_wlo_166_L1_WEIbRq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


