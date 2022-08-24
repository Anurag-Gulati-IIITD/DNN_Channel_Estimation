-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbnm_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbnm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1110111101", 1 => "0001000010", 2 => "1101101001", 3 => "0001010001", 
    4 => "0001010110", 5 => "1011000011", 6 => "1110111000", 7 => "0010111001", 
    8 => "0000001000", 9 => "0001000110", 10 => "1110010100", 11 => "1111100011", 
    12 => "1110111010", 13 => "1110010011", 14 => "0000000110", 15 => "0001000111", 
    16 => "0000000011", 17 => "0001000011", 18 => "0000100000", 19 => "1111111010", 
    20 => "1110110100", 21 => "0000101111", 22 => "1110011000", 23 => "0000001000", 
    24 => "1101101101", 25 => "0000111011", 26 => "0000101110", 27 => "1011111010", 
    28 => "1110101001", 29 => "0010010011", 30 => "0000101000", 31 => "0001000011", 
    32 => "1111100001", 33 => "0000110010", 34 => "1111000111", 35 => "1110111000", 
    36 => "1111111111", 37 => "0010010001", 38 => "0010010101", 39 => "1111001101", 
    40 => "0001001100", 41 => "1110110010", 42 => "0001100100", 43 => "1110010001", 
    44 => "0000101101", 45 => "0000011000", 46 => "1111111000", 47 => "0000001010", 
    48 => "1111111011", 49 => "0000000111", 50 => "0000011001", 51 => "0000110100" );

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

entity L2_wlo_166_L1_WEIbnm is
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

architecture arch of L2_wlo_166_L1_WEIbnm is
    component L2_wlo_166_L1_WEIbnm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbnm_rom_U :  component L2_wlo_166_L1_WEIbnm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


