-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity L2_wlo_L1_WEIGHTSbvn_rom is 
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


architecture rtl of L2_wlo_L1_WEIGHTSbvn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0010100011000000", 1 => "0011000010111110", 2 => "0010111111011001", 
    3 => "1010111011010110", 4 => "0010110011000101", 5 => "0011000010010100", 
    6 => "0010010100110001", 7 => "1010100001100101", 8 => "1011000110010010", 
    9 => "1011000000101010", 10 => "0010001001001111", 11 => "1010001110100111", 
    12 => "1010101001100101", 13 => "0010100110111001", 14 => "1010100100110001", 
    15 => "1011001010011000", 16 => "1010011100111110", 17 => "1010110110010111", 
    18 => "1010011111110011", 19 => "0010010000001001", 20 => "0001110011011110", 
    21 => "1001101000001111", 22 => "0010010000001101", 23 => "1011000001110101", 
    24 => "0010101000101111", 25 => "1010100000010011", 26 => "0011000110110011", 
    27 => "0010100000111100", 28 => "0010110100010010", 29 => "1011000011001011", 
    30 => "1010001011000110", 31 => "0010110111101110", 32 => "1010100101110001", 
    33 => "1011000000111011", 34 => "1001111111011010", 35 => "1010100101100111", 
    36 => "0010001011111011", 37 => "1010110010111001", 38 => "1010011101100010", 
    39 => "1010110011001010", 40 => "1010111100100110", 41 => "1010101111110111", 
    42 => "0011000100001000", 43 => "0011010000001101", 44 => "1010101100110101", 
    45 => "0010010001001011", 46 => "0010111100110011", 47 => "0010110001001100", 
    48 => "0010110010001101", 49 => "0010001101010011", 50 => "0011000011110111", 
    51 => "0010000100011100" );

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

entity L2_wlo_L1_WEIGHTSbvn is
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

architecture arch of L2_wlo_L1_WEIGHTSbvn is
    component L2_wlo_L1_WEIGHTSbvn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    L2_wlo_L1_WEIGHTSbvn_rom_U :  component L2_wlo_L1_WEIGHTSbvn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


