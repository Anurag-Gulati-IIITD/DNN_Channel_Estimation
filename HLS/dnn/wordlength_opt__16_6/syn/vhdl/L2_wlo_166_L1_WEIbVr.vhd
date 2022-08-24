-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbVr_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbVr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1110010111", 1 => "1110001001", 2 => "1111011000", 3 => "1111010100", 
    4 => "1011110001", 5 => "1101011010", 6 => "1110111010", 7 => "1111000111", 
    8 => "0001011100", 9 => "1110000101", 10 => "0000110111", 11 => "0110011100", 
    12 => "1110100011", 13 => "1110011010", 14 => "0010000100", 15 => "1110100101", 
    16 => "0000001011", 17 => "0000010011", 18 => "0000000101", 19 => "0000000001", 
    20 => "0000010100", 21 => "0000111110", 22 => "0001110001", 23 => "0000000010", 
    24 => "1101110001", 25 => "1110111010", 26 => "1110011111", 27 => "1111010000", 
    28 => "0000001000", 29 => "0011000110", 30 => "1100101101", 31 => "0000100010", 
    32 => "0011101001", 33 => "0000111000", 34 => "1111111100", 35 => "1101011000", 
    36 => "1111010001", 37 => "1110010001", 38 => "0000111101", 39 => "1101011011", 
    40 => "0000000111", 41 => "0011100110", 42 => "0010100001", 43 => "0001000011", 
    44 => "0000111101", 45 => "0001001100", 46 => "0000000110", 47 => "1111000111", 
    48 => "1110001100", 49 => "0000100000", 50 => "1101101000", 51 => "0001011100" );

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

entity L2_wlo_166_L1_WEIbVr is
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

architecture arch of L2_wlo_166_L1_WEIbVr is
    component L2_wlo_166_L1_WEIbVr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbVr_rom_U :  component L2_wlo_166_L1_WEIbVr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


