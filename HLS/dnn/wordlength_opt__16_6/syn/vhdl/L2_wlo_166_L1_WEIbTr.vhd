-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_166_L1_WEIbTr_rom is 
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


architecture rtl of L2_wlo_166_L1_WEIbTr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000111110", 1 => "0000010100", 2 => "1110010111", 3 => "0000001100", 
    4 => "1110010100", 5 => "1111101011", 6 => "0000011100", 7 => "1111010010", 
    8 => "1110011001", 9 => "1100111011", 10 => "0000011111", 11 => "1101010001", 
    12 => "0001011100", 13 => "1101010111", 14 => "1110000111", 15 => "0100000111", 
    16 => "1110100110", 17 => "0010010010", 18 => "0000111111", 19 => "1110000101", 
    20 => "1101000010", 21 => "0000110001", 22 => "0000110000", 23 => "1110000000", 
    24 => "1101001011", 25 => "1111011001", 26 => "0010000001", 27 => "0000011110", 
    28 => "1111111101", 29 => "0001100011", 30 => "0001101001", 31 => "1101100000", 
    32 => "0010010011", 33 => "0001101011", 34 => "0001101110", 35 => "1101110010", 
    36 => "1111110101", 37 => "0000000111", 38 => "1110111011", 39 => "0011111011", 
    40 => "0000110101", 41 => "0001111000", 42 => "0011101111", 43 => "1100110110", 
    44 => "0000010011", 45 => "1111111100", 46 => "0000010110", 47 => "0000000001", 
    48 => "1111101111", 49 => "1111001101", 50 => "0000101110", 51 => "1101110000" );

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

entity L2_wlo_166_L1_WEIbTr is
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

architecture arch of L2_wlo_166_L1_WEIbTr is
    component L2_wlo_166_L1_WEIbTr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_166_L1_WEIbTr_rom_U :  component L2_wlo_166_L1_WEIbTr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


