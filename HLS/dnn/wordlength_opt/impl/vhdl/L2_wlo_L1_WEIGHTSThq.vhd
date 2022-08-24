-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSThq_rom is 
    generic(
             DWIDTH     : integer := 16; 
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


architecture rtl of L2_wlo_L1_WEIGHTSThq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "1010101101100010", 1 => "1010111000011111", 2 => "0010110011001101", 
    3 => "1010101110010111", 4 => "0011001010100100", 5 => "0011001111111011", 
    6 => "0010001000110001", 7 => "1010000001110101", 8 => "1011000000101001", 
    9 => "0010110010101010", 10 => "1010100010111100", 11 => "1011010011100110", 
    12 => "1010100010010111", 13 => "0011000001010011", 14 => "1010111011011101", 
    15 => "1010100100110111", 16 => "0010111000010110", 17 => "1010101110011001", 
    18 => "1010100101001011", 19 => "1010110100011111", 20 => "1010011001000100", 
    21 => "1010110101101111", 22 => "0010011001010110", 23 => "1010010110011111", 
    24 => "1010000011110001", 25 => "1010010101001001", 26 => "0010100001110100", 
    27 => "0010010101110000", 28 => "0011000001000111", 29 => "1011000011011011", 
    30 => "0010101000111011", 31 => "1010001101010111", 32 => "1011000100111010", 
    33 => "1010101000101010", 34 => "1010000101011010", 35 => "0010101000100101", 
    36 => "0010100001011110", 37 => "1010100101011100", 38 => "1010110110001011", 
    39 => "0010100000111010", 40 => "1011000000110101", 41 => "1011001100010011", 
    42 => "1011001000111000", 43 => "1010100110011010", 44 => "1010110101011001", 
    45 => "1011000010011010", 46 => "0010000100111011", 47 => "1010110001011001", 
    48 => "0011000110011000", 49 => "0010011001001010", 50 => "0011000001011011", 
    51 => "1010101111110000" );

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

entity L2_wlo_L1_WEIGHTSThq is
    generic (
        DataWidth : INTEGER := 16;
        AddressRange : INTEGER := 52;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of L2_wlo_L1_WEIGHTSThq is
    component L2_wlo_L1_WEIGHTSThq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSThq_rom_U :  component L2_wlo_L1_WEIGHTSThq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


