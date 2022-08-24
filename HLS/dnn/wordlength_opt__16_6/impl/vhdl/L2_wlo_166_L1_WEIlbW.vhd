-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIlbW_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIlbW_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000010111", 1 => "1110011010", 2 => "0001101110", 3 => "0000010100", 
    4 => "1101111001", 5 => "0010100001", 6 => "0000101110", 7 => "1111011001", 
    8 => "1111100110", 9 => "1111000101", 10 => "1111111010", 11 => "0000000101", 
    12 => "0000111011", 13 => "0001000101", 14 => "0011010001", 15 => "1101011001", 
    16 => "1111100010", 17 => "0000000110", 18 => "0000011010", 19 => "0001101001", 
    20 => "1111100110", 21 => "1111010111", 22 => "1110100101", 23 => "0000100011", 
    24 => "0001001111", 25 => "1111001110", 26 => "0000011001", 27 => "1011011011", 
    28 => "1111100001", 29 => "1110011111", 30 => "1110000101", 31 => "1111001011", 
    32 => "0001011100", 33 => "0000011111", 34 => "1111001001", 35 => "0010011001", 
    36 => "0000100011", 37 => "0000001110", 38 => "0011101101", 39 => "0001001011", 
    40 => "0000111011", 41 => "0010000000", 42 => "1111111010", 43 => "0010101000", 
    44 => "1111000001", 45 => "1111100001", 46 => "1101010000", 47 => "0000001110", 
    48 => "0000111110", 49 => "1111111011", 50 => "0001001011", 51 => "0000001010" );

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

entity L2_wlo_166_L1_WEIlbW is
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

architecture arch of L2_wlo_166_L1_WEIlbW is
    component L2_wlo_166_L1_WEIlbW_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIlbW_rom_U :  component L2_wlo_166_L1_WEIlbW_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


